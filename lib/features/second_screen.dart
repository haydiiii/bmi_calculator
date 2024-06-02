import 'package:bmi_calculator/core/constants/text_style.dart';
import 'package:bmi_calculator/core/utils/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.result});
  final double result;

  String? getClassification(double result) {
    if (result < 16) {
      return 'Severe Thinness';
    } else if (result >= 16 || result <= 17) {
      return 'Moderate Thinness';
    } else if (result >= 18.5 || result <= 25) {
      return 'Normal';
    } else if (result >= 30 || result <= 35) {
      return 'Overweight';
    } else if (result > 40) {
      return 'Obese Class III';
    }
  }

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
              getClassification(result).toString(),
              style: AppTxtStyle.style1,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              result.toStringAsFixed(2),
              style: AppTxtStyle.style2,
            ),
            const SizedBox(
              height: 10,
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
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    ' ReCalculate',
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
