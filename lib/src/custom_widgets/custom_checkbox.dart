import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  CustomCheckbox({
    required this.value,
    required this.onChanged,
  });

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _value = !_value;
        });
        widget.onChanged(_value);
      },
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
            color: Colors.red,
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: Colors.red),
        ),
        child: _value
            ? Icon(
          Icons.check,
          size: 16,
          color: Colors.black,
        )
            : null,
      ),
    );
  }
}