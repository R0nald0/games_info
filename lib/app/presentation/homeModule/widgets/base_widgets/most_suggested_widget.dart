import 'package:flutter/material.dart';
import 'package:play_games/app/core/exntensions/extension.dart';
import 'package:play_games/app/presentation/homeModule/home_controller.dart';
import 'package:play_games/app/presentation/homeModule/widgets/card_game_list_item.dart';
import 'package:provider/provider.dart';

class MostSuggestedWidget extends StatefulWidget {
  const MostSuggestedWidget({
    super.key,
  });

  @override
  State<MostSuggestedWidget> createState() => _MostSuggestedWidgetState();
}

class _MostSuggestedWidgetState extends State<MostSuggestedWidget> {
  final _scrollController = ScrollController();
  var newOffeset = 0.0;

  increment() {
    newOffeset = newOffeset + 300;
    _scrollController.animateTo(newOffeset,
        duration: Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  decrement() {
    newOffeset = newOffeset - 300;
    _scrollController.animateTo(newOffeset,
        duration: Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(top: 16),
      sliver: SliverToBoxAdapter(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              spacing: 10,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    spacing: 5,
                    children: [
                      Text("Most suggested"),
                      Expanded(child: SizedBox.shrink()),
                      Text('See All'),
                      IconButtonArrowWidget(
                        icon: Icons.arrow_back,
                        onTap: () {
                          if (newOffeset != 0) {
                            decrement();
                          }
                        },
                      ),
                      IconButtonArrowWidget(
                        icon: Icons.arrow_forward,
                        onTap: () {
                          increment();
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: constraints.maxWidth * .3,
                  child: ListenableBuilder(
                    listenable: context.read<HomeController>(),
                    builder: (context, child) {
                      return ListView.builder(
                        controller: _scrollController,
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            context.read<HomeController>().gameDiscount.length,
                        itemBuilder: (context, index) {
                          final game = context
                              .read<HomeController>()
                              .gameDiscount[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CardGameListItem(
                              rating: game.rate,
                              imageUrl: game.image,
                              sugestions: game.sugestions,
                              title: game.title,
                              platforms: game.platforms
                                      ?.map((p) =>
                                          context.getIconsPlatform(p.id ?? 0))
                                      .toList() ??
                                  <IconData>[],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class IconButtonArrowWidget extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  const IconButtonArrowWidget(
      {super.key, required this.icon, required this.onTap});

  @override
  Widget build(
    BuildContext context,
  ) {
    return SizedBox(
      height: 30,
      width: 30,
      child: IconButton.filled(
          iconSize: 14,
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
                context.theme.colorScheme.primaryContainer),
            iconColor:
                WidgetStatePropertyAll(context.theme.colorScheme.tertiary),
          ),
          onPressed: onTap,
          icon: Icon(icon)),
    );
  }
}
