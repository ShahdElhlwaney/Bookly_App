import 'package:book_app/Core/Constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'custom_loading_featured_book.dart';
class CustomHorizontalBooksLoading extends StatelessWidget {
  const CustomHorizontalBooksLoading({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: shimmerBaseColor,
      highlightColor: shimmerHighLightColor,
      child: SizedBox(
        height: MediaQuery.of(context).size.height *.25,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return  const CustomLoadingFeaturedBook();
          }
          ),
      ),
    );
  }
}


