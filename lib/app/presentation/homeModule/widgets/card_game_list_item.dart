import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:play_games/app/core/exntensions/extension.dart';

class CardGameListItem extends StatelessWidget {
  final String title;
  final List<IconData> platforms;
  final String imageUrl;
  final int sugestions;
  final double? priceWithDiscount;
  final String? dicountPercent;
  final double? rating;

  const CardGameListItem({
    super.key,
    required this.sugestions,
    required this.platforms,
    required this.title,
    required this.imageUrl,
    this.priceWithDiscount,
    this.dicountPercent,
    this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: context.parcentWidth(0.13),
          child: Column(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.shortestSide * 0.3,
                height: constraints.maxHeight * 0.5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: context.theme.colorScheme.onPrimary),
                        child: Wrap(
                           spacing: 5,
                          children: platforms
                              .map<Widget>((p) => FaIcon(
                                    p,
                                    size: 10,
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                  
                    Visibility(
                      visible: rating != 0.0,
                      replacement: SizedBox.shrink(),
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: context.theme.colorScheme.onPrimary),
                        child: Text(
                          textAlign: TextAlign.end,
                          rating.toString(),
                          overflow: TextOverflow.ellipsis,
                          style: context.theme.textTheme.labelSmall,
                        ),
                      ),
                    ),
                  ],
                ),
             
              Flexible(
                
                child: Text(title)),
              Text('Sugested by $sugestions'),
            ],
          ),
        );
      },
    );
  }
}
