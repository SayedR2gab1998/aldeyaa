import 'package:aldeyaa/utils/colors..dart';
import 'package:flutter/material.dart';

void navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => widget),
        (route) => false);


Widget defaultTextFormField({
  required TextEditingController controller,
  required String? Function(String? value) validator,
  required TextInputType inputType,
  required String hint,
  IconData? suffix,
  Function()? onSuffixPressed,
  Function()? onTap,
  Function(String s)? onSubmit,
  bool isPassword = false,
  int? max,
  bool enable = true,
}) =>
    TextFormField(
      maxLines: max,
      enabled: enable,
      controller: controller,
      keyboardType: inputType,
      obscureText: isPassword,
      onTap: onTap,
      onFieldSubmitted: onSubmit,
      style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:  TextStyle(
          color: secondaryColor,
        ),
        suffixIcon: IconButton(icon: Icon(suffix),color: secondaryColor, onPressed: onSuffixPressed),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide:  BorderSide(color: secondaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide:  BorderSide(color: secondaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide:  BorderSide(color: secondaryColor),
        ),
      ),
      validator: validator,
    );


Widget connectSocial({
  required Function() function,
  required String image
}){
  return GestureDetector(
    onTap: function,
    child: Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: secondaryColor),
      ),
      child: Center(child: Image.asset(image,width: 40,)),
    ),
  );
}