import 'package:flutter/material.dart';
import 'package:play_games/app/core/exntensions/extension.dart';
import 'package:play_games/app/presentation/homeModule/widgets/profile_field_widget.dart';

class AppBarWidget extends StatelessWidget {
  
  const AppBarWidget({ super.key });
   @override
   Widget build(BuildContext context) {
       return SliverAppBar(
                          pinned: true,
                          expandedHeight: 65,
                          floating: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          flexibleSpace:LayoutBuilder(builder: (context, constraints) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: constraints.maxWidth * 0.2,
                                  height: context.parcentHeight(0.07),
                                  child: SearchBar(
                                    leading: Icon(Icons.search),
                                    hintText: 'Find game',
                                    hintStyle: WidgetStatePropertyAll(
                                      context.theme.textTheme.bodySmall
                                    ),
                                  ),
                                ),
                                ProfileFieldWidget(),
                              ],
                            ); 
                          },)
                        );
  }
}