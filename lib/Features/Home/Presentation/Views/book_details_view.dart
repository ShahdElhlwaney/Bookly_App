

import 'package:flutter/material.dart';

import 'Widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
<<<<<<< HEAD
      body: SafeArea(child: BookDetailsViewBody()),
=======
      body: BookDetailsViewBody(),
>>>>>>> 520b2ee199c0ed5e8d9067db6402d6b52267089f
    );
  }
}
