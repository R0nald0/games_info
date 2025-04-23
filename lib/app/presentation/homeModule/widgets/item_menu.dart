import 'package:flutter/material.dart';
import 'package:play_games/app/core/exntensions/extension.dart';
import 'package:play_games/app/presentation/homeModule/model/item_menu_model.dart';

class ItemMenu extends StatelessWidget {
   
   final ItemMenuModel itemMenu;
   
  const ItemMenu({super.key, required this.itemMenu});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child:TextButton.icon(
        icon: Icon(itemMenu.icon),
        onPressed:itemMenu.onTap, 
        label : SizedBox( 
          width: context.parcentWidth(0.2),
          child: Text(itemMenu.title,textAlign: TextAlign.start,))
        ),
    );
  }
}