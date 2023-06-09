import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;

  const BMIResultScreen({
    super.key,
    required this.result,
    required this.age,
    required this.isMale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.keyboard_arrow_left)),
            title: const Text(
              "BMI Result",
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Gender : ${isMale ? 'Male' : 'Female'}",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              Text(
                "Result : $result",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              Text(
                "Age : $age",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
            ],
          ),
        ));
  }
}
