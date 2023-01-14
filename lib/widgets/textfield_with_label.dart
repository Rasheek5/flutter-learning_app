import 'package:flutter/material.dart';

class TextfieldWithLabel extends StatelessWidget {
  String label;
  Widget? labelIcon;
  String? placeholder;
  bool? obscureText;

  TextfieldWithLabel({
    Key? key,
    this.labelIcon,
    this.placeholder,
    this.obscureText,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              labelIcon ?? const SizedBox(),
              labelIcon != null ? const SizedBox(width: 5) : const SizedBox(),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: obscureText ?? false,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: placeholder ?? "",
            ),
          ),
        ],
      ),
    );
  }
}
