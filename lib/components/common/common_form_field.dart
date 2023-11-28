
import 'package:flutter/material.dart';
import 'package:flutter_airbnb/styles.dart';

class CommonFormField extends StatelessWidget {

  final prefixText;
  final hintText;

  CommonFormField({required this.prefixText, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 30, bottom: 10, left: 20),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 2,
            )
          ),
          errorBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          // prefix: Text(prefixText), 고정된 텍스트
         ),
        ),

        Positioned(
          top: 8,
          left: 20,
          child: Text(prefixText,
            style: overLine(),
          ),
        ),
      ]
    );
  }
}
