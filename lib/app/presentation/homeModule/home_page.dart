import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:play_games/app/core/exntensions/extension.dart';
import 'package:play_games/app/core/mixins/base_state.dart';
import 'package:play_games/app/core/utils/play_games_loader.dart';
import 'package:play_games/app/presentation/homeModule/home_controller.dart';
import 'package:play_games/app/presentation/homeModule/widgets/base_widgets/app_bar_widget.dart';
import 'package:play_games/app/presentation/homeModule/widgets/base_widgets/menu_right.dart';
import 'package:play_games/app/presentation/homeModule/widgets/base_widgets/with_discount_widget.dart';
import 'package:play_games/app/presentation/homeModule/widgets/card_game_list_item.dart';
import 'package:play_games/app/presentation/homeModule/widgets/card_slide_games.dart';

class HomePage extends StatefulWidget {
   final HomeController _homeController;
  
  const HomePage({super.key , required HomeController  homeController}) :_homeController = homeController;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage> {
  late VoidCallback listenerLoading;
  final CarouselController carouselController =
      CarouselController(initialItem: 1);

 
 @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_)async{
       widget._homeController.getAll();
    });
  }

  @override
  void dispose() {
    carouselController.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ListenableBuilder(
            listenable: widget._homeController,
            builder: (context, child) {
              return Visibility(
                visible: !widget._homeController.isLoading,
                replacement: PlayGamesLoader(),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    spacing: 10,
                    children: [
                      MenuRight(
                          height: constraints.maxHeight * 0.9,
                          width: constraints.maxWidth * 0.17),
                      Expanded(
                        child: Container(
                          height: constraints.maxHeight,
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 8),
                          child: CustomScrollView(
                            slivers: [
                              AppBarWidget(),
                              SliverToBoxAdapter( 
                                child: SizedBox(
                                  height: context.parcentHeight(0.6),
                                  child:  Visibility(
                                    visible: widget._homeController.previouGames.isNotEmpty ,
                                    replacement: PlayGamesLoader(),
                                    child: CarouselSlider.builder(
                                      itemCount: widget._homeController.previouGames.length,
                                      itemBuilder: (context, index, realIndex) {
                                        final game = widget._homeController.previouGames[index];
                                        return Center(
                                            child: CardSlideGames(
                                          game: game,
                                        ));
                                      },
                                      options: CarouselOptions(
                                        autoPlayCurve: Curves.fastOutSlowIn,
                                        aspectRatio: 2.0,
                                        enlargeFactor: 0.3,
                                        viewportFraction: 0.6,
                                        autoPlay: true,
                                        enlargeStrategy:
                                            CenterPageEnlargeStrategy.scale,
                                        enlargeCenterPage: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SliverPadding(
                                padding: EdgeInsets.all(16),
                                sliver: SliverToBoxAdapter(
                                  child: Row(
                                    spacing: 5,
                                    children: [
                                      Text("Most suggested"),
                                      Expanded(child: SizedBox.shrink()),
                                      Text('See All'),
                                      IconButtonArrowWidget(icon: Icons.arrow_back),
                                      IconButtonArrowWidget(icon: Icons.arrow_forward)
                                    ],
                                  ),
                                ),
                              ),
                              WithDiscountWidget(),
                              SliverPadding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 16),
                                sliver: SliverToBoxAdapter(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("All games"),
                                      Divider(
                                        color:
                                            context.theme.colorScheme.onPrimary,
                                        thickness: 2,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              ListenableBuilder(
                                listenable: widget._homeController,
                                builder: (context, _) {
                                  return SliverGrid(
                                    gridDelegate:
                                        SliverGridDelegateWithMaxCrossAxisExtent(
                                       maxCrossAxisExtent: 180,
                                      mainAxisExtent: 300,
                                      childAspectRatio:4/2 ,
                                      crossAxisSpacing: 20,
                                      mainAxisSpacing: 76,
                                       
                                    ),
                                    delegate: SliverChildBuilderDelegate(
                                      childCount: widget._homeController.games.length,
                                      (context, index) {
                                        final game = widget._homeController.games[index];
                                        
                                        return CardGameListItem(
                                            rating: game.rate,
                                            sugestions: game.sugestions,
                                            platforms: game.platforms?.map((p)=> context.getIconsPlatform(p.id ?? 0) ).take(4).toList() ?? <IconData>[],
                                            title: game.title,
                                            imageUrl: game.image);
                                      },
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class IconButtonArrowWidget extends StatelessWidget {
  final  IconData icon;
  const IconButtonArrowWidget({
    super.key,
    required this.icon
  });

  @override
  Widget build(BuildContext context ,) {
    return SizedBox(
      height: 30,
      width: 30,
      child: IconButton.filled(
          iconSize: 14,
          style: ButtonStyle(
            backgroundColor:
                WidgetStatePropertyAll(context
                    .theme
                    .colorScheme
                    .primaryContainer),
            iconColor: WidgetStatePropertyAll(
                context.theme.colorScheme
                    .tertiary),
          ),
          onPressed: () {},
          icon: Icon(icon)),
    );
  }
}
