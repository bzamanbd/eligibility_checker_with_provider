import 'package:eligibility_checker_with_provider/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShowMssgWidget extends StatelessWidget {
  const ShowMssgWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Consumer<AgeController>(
      builder: (_,ageController,__)=> Text(
        ageController.mssg,
        textScaleFactor: 1.2,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: (ageController.isEligible==true)? Colors.green : Colors.red
        ),
      ),
    );
  }
}