import 'package:flutter/material.dart';

class CustomChipsChoice<T> extends StatefulWidget {
  final List<T> options;
  final List<T> selectedOptions;
  final ValueChanged<List<T>> onChanged;

  CustomChipsChoice({
    required this.options,
    required this.selectedOptions,
    required this.onChanged,
  });

  @override
  _CustomChipsChoiceState<T> createState() => _CustomChipsChoiceState<T>();
}

class _CustomChipsChoiceState<T> extends State<CustomChipsChoice<T>> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      children: widget.options.map((option) {
        bool isSelected = widget.selectedOptions.contains(option);
        return GestureDetector(
          onTap: () {
            setState(() {
              if (isSelected) {
                widget.selectedOptions.remove(option);
              } else {
                widget.selectedOptions.add(option);
              }
              widget.onChanged(widget.selectedOptions);
            });
          },
          child: Chip(
            label: Text(option.toString(), style: TextStyle(
              color: Colors.white,
            ),),
            backgroundColor: isSelected ? Colors.black : Color(0xff931741),
          ),
        );
      }).toList(),
    );
  }
}
