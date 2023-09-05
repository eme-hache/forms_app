import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key, 
    this.label, 
    this.hintText, 
    this.errorMessage, 
    this.onChanged, 
    this.validator, 
    this.obscureText = false
  });

  final String? label;
  final bool obscureText;
  final String? hintText;
  final String? errorMessage;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(40)
    );

    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border.copyWith(borderSide: BorderSide(color: colors.primary)),
        errorBorder: border.copyWith(borderSide: BorderSide(color: Colors.red.shade800)),
        focusedErrorBorder: border.copyWith(borderSide: BorderSide(color: Colors.red.shade800)),
        isDense: true,
        label: label != null ? Text(label!)  : null,
        hintText: hintText,
        focusColor: colors.primary,
        errorText: errorMessage,
        suffixIcon: Icon(Icons.supervised_user_circle_outlined, color: colors.primary)
      ),
    );
  }
}