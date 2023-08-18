
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../Constants.dart';
import 'loading_newest_books_list_view_item.dart';
class CustomVerticalBooksLoading extends StatelessWidget {
  const CustomVerticalBooksLoading({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Shimmer.fromColors(
      loop: 1,///
      baseColor: shimmerBaseColor,
      highlightColor: shimmerHighLightColor,
      child: SizedBox(
        height: MediaQuery.of(context).size.height*.5,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context,index){
              return  const Padding(
                padding: EdgeInsets.only(left: 10,right:10,bottom: 18),
                child:LoadingNewestListViewItem()
              );
            }),
      ),
    );
  }
}




