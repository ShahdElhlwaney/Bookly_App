import 'package:dio/dio.dart';
abstract class Failure{
  final String errMessage;
  Failure(this.errMessage);
}
class ServerFailure extends Failure{
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioException(DioException dioException)
  {
      switch(dioException.type)
        {
        case DioExceptionType.connectionTimeout:
             return ServerFailure('Connection Timeout With ApiServer');
        case DioExceptionType.sendTimeout:
             return ServerFailure('Send Timeout With ApiServer');
        case DioExceptionType.receiveTimeout:
             return ServerFailure('Receive Timeout With ApiServer');
        case DioExceptionType.connectionError:
             return ServerFailure('Connection Error!');
        case DioExceptionType.badResponse:
             return ServerFailure.fromBadResponse(dioException.response!.statusCode, dioException.response);
        case DioExceptionType.cancel:
             return ServerFailure('Request To ApiServer was canceled');
        case DioExceptionType.unknown:
             if(dioException.message!.contains('SocketException'))
                 return ServerFailure('No Internet Connection!');
             else
                 return ServerFailure('Unexpected Error,Please Try Again!');
        default:
             return ServerFailure('Opps There Was An Error,Please Try Later!');
      }
  }
  factory ServerFailure.fromBadResponse(int? statusCode,dynamic response)
  {
    if(statusCode==400 || statusCode==401 || statusCode==403)
      {
        return ServerFailure(response['error']['message']);
      }
    else if(statusCode==404)
      {
        return ServerFailure('Your Request Is Not Found,Please Try Again');
      }
    else if(statusCode==500)
      {
        return ServerFailure('Internal Server Error,Please Try Later!');
      }
    else
      {
        return ServerFailure('Opps There Was An Error,Please Try Later!');
      }
  }
}