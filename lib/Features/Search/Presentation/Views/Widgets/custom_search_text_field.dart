import 'package:book_app/Core/Utils/service_locator.dart';
import 'package:book_app/Features/Search/Data/Repos/search_repo_impl.dart';
import 'package:book_app/Features/Search/Presentation/Manager/SearchBooksCubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key, required this.onChanged})
      : super(key: key);
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
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