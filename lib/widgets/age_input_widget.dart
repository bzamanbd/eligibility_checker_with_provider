import 'package:eligibility_checker_with_provider/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AgeInputWidget extends StatelessWidget {
  const AgeInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Consumer<AgeController>(
        builder: (_, ageController, __) =>TextField(
         onChanged: (val)=>ageController.checker(int.parse(val)),
         showCursor: true,
         textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
              hintText: 'Enter your age here',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))),
        ),
      ),
    );
  }
}
