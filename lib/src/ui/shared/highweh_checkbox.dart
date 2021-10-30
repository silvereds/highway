import 'package:flutter/material.dart';
import 'package:mobile/src/core/common/enums.dart';

class HighwehRadio extends StatelessWidget {
  const HighwehRadio({
    Key key,
    this.onChanged,
    @required this.value,
    @required this.text,
    @required this.groupValue,
  }) : super(key: key);
  final void Function(Object value) onChanged;
  final CheckBoxValues value;
  final String text;
  final Object groupValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          activeColor: Color(0xFF4EB181),
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 13, fontFamily: 'Poppins', color: Color(0xFF334D6E)),
        ),
      ],
    );
  }
}
