import 'package:flutter/material.dart';
import 'package:play_games/app/core/exntensions/extension.dart';
import 'package:play_games/app/presentation/homeModule/home_controller.dart';
import 'package:play_games/app/presentation/homeModule/widgets/card_game_list_item.dart';
import 'package:provider/provider.dart';

class WithDiscountWidget extends StatelessWidget {
  const WithDiscountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(top: 16),
      sliver: SliverToBoxAdapter(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return  SizedBox(
            height: constraints.maxWidth *.3,
            child: ListenableBuilder(
              listenable: context.read<HomeController>(),
              builder: (context, child) {
               return   ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: context.read<HomeController>().gameDiscount.length,
                itemBuilder: (context, index){
                   final game = context.read<HomeController>().gameDiscount[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CardGameListItem(
                        rating: game.rate,
                        imageUrl: game.image,
                       sugestions: game.sugestions,
                       title: game.title,
                       platforms: game.platforms?.map((p)=> context.getIconsPlatform(p.id ?? 0) ).toList() ?? <IconData>[],
                    
                    ),
                  );
                } ,
              );
              },
            
            ),
          );
          },
         
        ),
      ),
    );
  }
}