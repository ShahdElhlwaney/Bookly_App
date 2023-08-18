
import 'package:flutter/material.dart';
import '../../../../../Core/utils/styles.dart';
import 'newest_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
         SliverToBoxAdapter(child: Column(
               crossAxisAlignment:CrossAxisAlignment.start,
               children: [
                 CustomAppBar(),
                 FeaturedListViewItem(),
                 SizedBox(
                   height: 40,
                 ),
                 Padding(
                   padding: EdgeInsets.symmetric(horizontal: 30),
                   child: Text('Newest Books',style: Styles.textStyle18,),
                 ),
                 SizedBox(
                   height: 20,
                 )
               ],
             )
         ),
        SliverToBoxAdapter(
         child: Padding(
           padding: EdgeInsets.symmetric(horizontal: 30),
           child: NewestListView(),
         ),
        )
      ],
    );




  }

}









