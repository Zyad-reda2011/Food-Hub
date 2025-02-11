import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget 
{
  final Widget icon;
  final String label;
  final bool isSelected;
  const CategoryCard
  (
    {
      super.key,
      required this.icon,
      required this.label,
      this.isSelected = false,
    }
  );

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration
      (
        color: isSelected ? const Color(0xffFE724C) : const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column
      (
        children: 
        [
          icon,
          const SizedBox(height: 4,),
          Text
          (
            label,
            style: TextStyle(color: isSelected ? Colors.white : Colors.black),
          )
        ],
      ),
    );
  }
}
