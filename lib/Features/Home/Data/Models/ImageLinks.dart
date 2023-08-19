class ImageLinks {
  ImageLinks({
     required this.smallThumbnail,
     required this.thumbnail,});

  ImageLinks.fromJson(dynamic json){

    smallThumbnail = json['smallThumbnail']as String?;
    thumbnail = json['thumbnail']as String?;
 }
  String? smallThumbnail;
  String? thumbnail;



}