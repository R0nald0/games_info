import 'package:flutter/material.dart';
import 'package:play_games/app/core/constants/constanst.dart';
import 'package:play_games/app/core/exntensions/extension.dart';
import 'package:play_games/app/domain/models/game_.dart';
import 'package:play_games/app/presentation/homeModule/home_controller.dart';
import 'package:play_games/app/presentation/homeModule/model/item_menu_model.dart';
import 'package:play_games/app/presentation/homeModule/widgets/card_game_item.dart';
import 'package:play_games/app/presentation/homeModule/widgets/item_menu.dart';
import 'package:provider/provider.dart';

class MenuRight extends StatelessWidget {
  final double height;
  final double width;
  
  const MenuRight({super.key, required this.height, required this.width});

 static final menus = [
    ItemMenuModel(icon: Icons.home, title:'Home', onTap: (){}),
    ItemMenuModel(icon: Icons.settings, title:'Settings', onTap: (){}),
    ItemMenuModel(icon: Icons.gamepad, title:'Library', onTap: (){}),
    
  ] ;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: context.theme.colorScheme.primaryContainer,  // color: Color(0xFF16202C),
            borderRadius: BorderRadius.circular(20),
            border: null),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
         spacing: 10,
          children: [
            SizedBox(
              height: 120,
              width: double.infinity,
              child: Image.asset(Constants.IMAGE_LOGO,
              fit: BoxFit.contain,
              ),
            ),
            ItemMenu(itemMenu: menus[0]),
            ItemMenu(itemMenu: menus[1]),
            ItemMenu(itemMenu: menus[2]),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 16),
              child: Text("Init Fast",style:TextStyle(color: Colors.white),),
            ),
            Expanded(
              child: ListenableBuilder(
                listenable: context.read<HomeController>(),
                builder: (context, child) {
                  return ListView.builder(
                  itemCount: context.read<HomeController>().gamesPlaying.length,
                  itemBuilder: (context, index) {
                    final gamePlaying = context.read<HomeController>().gamesPlaying[index]; 
                    return CardGameItem(
                      game: Game(
                        ratingTop: 4,
                        id: gamePlaying.id,
                        title: gamePlaying.title,
                        image:  gamePlaying.image,
                        sugestions: gamePlaying.sugestions,
                        price: 12.12,
                        rate: gamePlaying.rate,
                        description: ""
                        ),
                    ); 
                },);
                },
               
              ),
            )
          ],
        ) ,
      );
          
  }
}
