import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class PlayGamesLoader extends StatelessWidget {

  const PlayGamesLoader({ super.key });

   @override
   Widget build(BuildContext context) {
       return Center(
         child: LoadingAnimationWidget.threeArchedCircle(color: Colors.amber, size: 50),
       );
  }
  
  
}