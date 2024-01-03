import 'package:flutter/material.dart';

class MyTextInputField extends StatelessWidget {
  ///final GlobalKey<FormState> _key = GlobalKey(<FormState>);
  final String hintext;
  final TextEditingController controller;
  final Widget prefixicon;
  final Widget suffixicon;
  final String? Function(String?)? validator;
  final bool Obsecure;
   MyTextInputField({super.key, 
  required this.hintext, 
  required this.controller, 
  required this.prefixicon, 
  required this.suffixicon, 
  //required this.validator, 
  required this.Obsecure, this.validator
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //validator: validator,
      obscureText: Obsecure,
      controller: controller,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade500,
        enabled: true,
        hintText: hintext,
        prefixIcon: prefixicon,
        suffixIcon: suffixicon,
        border: OutlineInputBorder(
          gapPadding: 8,
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.black12,
            width: 3,
            strokeAlign: 5,
            style: BorderStyle.solid,
          ),
        
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.greenAccent,
          )
        )
      ),
    );
  }
}
