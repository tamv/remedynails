import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remedynails/components/text_field_wrapper.dart';
import 'package:remedynails/constants/color_scheme.dart';


class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final bool maskText;
  final Function(String) onValidate;
  final TextInputFormatter formatter;

  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.maskText = false,
    this.onValidate,
    this.formatter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldWrapper(
      child: TextFormField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
        obscureText: maskText,
        validator: onValidate,
        inputFormatters: formatter == null ? [] : [formatter],
      ),
    );
  }
}