import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key, required this.imageUrl}) : super(key: key);
   final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(

      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 3.1/4,
        child: //Image.network(imageUrl,fit: BoxFit.fill,)
       Image.network( imageUrl,fit: BoxFit.fill,
       //   errorWidget: (context, url, error) => const Icon(Icons.error
         //   ),
        )






      ),
    );
  }
}