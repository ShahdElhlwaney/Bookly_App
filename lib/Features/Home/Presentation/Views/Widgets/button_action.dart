


import 'package:flutter/material.dart';
import '../../../../../Core/Functions/launch_custom_url.dart';
import '../../../../../Core/Widgets/custom_button.dart';
import '../../../Data/Models/BookModel.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({Key? key, required this.bookModel}) : super(key: key);
   final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButton(
            textColor: Colors.black
            , backgroundColor: Colors.white
            , text: '19.99 \$'
            ,borderRadius:const BorderRadius.only(topLeft:Radius.circular(12)
              ,bottomLeft:Radius.circular(12) ), onPressed: () {  } ,),
        ),
        Expanded(
          child: CustomButton(
            fontSize: 16,
            textColor: Colors.white
            , backgroundColor: const Color(0xffEF8262)
            , text:getText()// 'Free preview'
            ,borderRadius:const BorderRadius.only(topRight:Radius.circular(12)
              ,bottomRight:Radius.circular(12) )
            , onPressed: ()async {
           await launchCustomUrl(context,bookModel.volumeInfo.previewLink);
          } ,),
        )
      ],
    );
  }



  String getText() {
    if(bookModel.volumeInfo.previewLink==null)
      {
        return 'Not Available';
      }
    else
      {
        return 'Free preview';
      }
  }
}