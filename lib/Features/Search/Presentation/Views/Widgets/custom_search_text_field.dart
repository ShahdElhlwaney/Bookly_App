import 'package:book_app/Features/Search/Presentation/Manager/SearchBooksCubit/search_books_cubit.dart';
import 'package:book_app/Features/Search/Presentation/Views/Widgets/search_result_list_view.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../Home/Data/Models/BookModel.dart';

class CustomSearchTextField extends StatelessWidget {
   CustomSearchTextField({Key? key})
      : super(key: key);
String? input;
TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    List<BookModel>li=[];
    return TextField(
      onSubmitted: (t){},
      controller:controller ,
      onChanged: (t){
        input=t;
        if(input=='')
        {
          controller.clear();
        }
        BlocProvider.of<SearchBooksCubit>(context).getSearchBooks(title: input??'');
      },
      decoration: InputDecoration(
          hintText: 'Search',
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 22,))
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(

      borderRadius: BorderRadius.circular(12),

      borderSide: BorderSide(

        color: Colors.white,
      ),
    );
  }
}