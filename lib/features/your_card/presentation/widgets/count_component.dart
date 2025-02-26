import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_colors.dart';

class CountComponent extends StatefulWidget {
  const CountComponent({super.key, required this.count});
  final ValueChanged<int> count;
  @override
  State<CountComponent> createState() => _CountComponentState();
}

class _CountComponentState extends State<CountComponent> {
  int _count = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 120,
      decoration: BoxDecoration(
        color: AppColors.colorF2,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              if (_count == 0) return;
              widget.count(_count--);
              setState(() {});
            },
            child: CircleAvatar(
              backgroundColor: AppColors.colorDF,
              radius: 16,
              child: Icon(Icons.remove, size: 15),
            ),
          ),
          Spacer(),
          Text(_count.toString()),
          Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.count(_count++);
              });
            },
            child: CircleAvatar(
              backgroundColor: AppColors.colorA0,
              radius: 16,
              child: Icon(Icons.add, color: Colors.white, size: 15),
            ),
          ),
        ],
      ),
    );
  }
}
