import 'package:flutter/material.dart';

import '../widgets/age_input_widget.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/show_mssg_widget.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar:CustomAppbar(title:Text(title)),
        body: Center(
          child: Column(
            mainAxisAlignment : MainAxisAlignment.center,
            crossAxisAlignment : CrossAxisAlignment.center,
            children: [
              const ShowMssgWidget(),
              SizedBox(height: size.height/15),
              const AgeInputWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
