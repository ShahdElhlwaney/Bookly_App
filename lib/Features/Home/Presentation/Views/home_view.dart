
import 'package:book_app/Features/Home/Presentation/Views/Widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: HomeViewBody(),
    );
  }
}

