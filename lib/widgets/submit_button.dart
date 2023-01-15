import 'package:flutter/material.dart';
import '../constants/colors.dart';

class SubmitButton extends StatelessWidget {
  String label;

  SubmitButton({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: FractionallySizedBox(
        widthFactor: 1,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: ColorConstants.darkCerulean,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Text(label,
              style: const TextStyle(
                fontSize: 19,
              )),
        ),
      ),
    );
  }
}
