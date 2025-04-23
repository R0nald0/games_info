
import 'package:flutter/material.dart';

class ItemMenuModel {
   final IconData icon; 
  final String  title;
  final VoidCallback onTap; 

  ItemMenuModel({
    required this.icon,
    required this.title,
    required this.onTap,
  });
}
