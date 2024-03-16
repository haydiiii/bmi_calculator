import 'package:bmi_calculator/colors.dart';
import 'package:flutter/material.dart';

import 'first_screen.dart';

class ResultView extends StatelessWidget {
  ResultView({super.key});
  TextStyle style1 = TextStyle(
      fontSize: 40, fontWeight: FontWeight.bold, color: AppColor.white);
  TextStyle style2 = TextStyle(fontSize: 20, color: AppColor.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        backgroundColor: AppColor.background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              ' Normal ',
              style: style1,
            ),
            Text(
              '23.3',
              style: style2,
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      foregroundColor: AppColor.white,
                      backgroundColor: AppColor.PrimaryColor),
                  onPressed: () {
                    Navigator.of(context).pop(firstScreen());
                  },
                  child: Text(
                    ' RECalculate',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
