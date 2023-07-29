


import 'package:flutter/material.dart';
import '../../../../../Core/Widgets/custom_button.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButton(
            textColor: Colors.black
            , backgroundColor: Colors.white
            , text: '19.99 \$'
            ,borderRadius:BorderRadius.only(topLeft:Radius.circular(12)
              ,bottomLeft:Radius.circular(12) ) ,),
        ),
        Expanded(
          child: CustomButton(
            fontSize: 16,
            textColor: Colors.white
            , backgroundColor: Color(0xffEF8262)
            , text: 'Free preview'
            ,borderRadius:BorderRadius.only(topRight:Radius.circular(12)
              ,bottomRight:Radius.circular(12) ) ,),
        )
      ],
    );
  }
}