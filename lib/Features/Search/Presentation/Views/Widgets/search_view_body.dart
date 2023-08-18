

import 'package:book_app/Features/Search/Presentation/Views/Widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/Utils/styles.dart';
import '../../Manager/SearchBooksCubit/search_books_cubit.dart';
import 'custom_search_text_field.dart';



class SearchViewBody extends StatelessWidget{
  const SearchViewBody({Key? key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String? t;
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(onChanged: (String? text )
          {
                t=text;
               /* if(t!=null)
                  {
                    BlocProvider.of<SearchBooksCubit>(context)
                        .getSearchBooks(title:t! );

                  }*/




          },),
          SizedBox(height: 16,),
          Text('Result Search',style: Styles.textStyle18,),
          SizedBox(height: 26,),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}



