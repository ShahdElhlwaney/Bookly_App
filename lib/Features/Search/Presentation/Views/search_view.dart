

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Widgets/search_view_body.dart';


class SearchView extends StatelessWidget {
  const SearchView({super.key,  });
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: SearchViewBody()),
    );
  }
}
