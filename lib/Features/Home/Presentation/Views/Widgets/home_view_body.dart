
import 'package:flutter/material.dart';
import '../../../../../Core/utils/styles.dart';
import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
         SliverToBoxAdapter(
            child: Column(
               crossAxisAlignment:CrossAxisAlignment.start,
               children: [
                 CustomAppBar(),
                 FeaturedListViewItem(),
                 SizedBox(
                   height: 40,
                 ),
                 Padding(
                   padding: EdgeInsets.symmetric(horizontal: 30),
                   child: Text('Best Seller',style: Styles.textStyle18,),
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
           child: BestSellerListView(),
         ),
        )
      ],
    );




  }

}
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics:const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context,index){
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellerListViewItem(),
          );
        });
  }
}








