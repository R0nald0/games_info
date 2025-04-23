import 'package:flutter/material.dart';
import 'package:play_games/app/core/utils/play_games_loader.dart';


abstract class  BaseState<W extends StatefulWidget>  extends State<W> {
  bool isLoading = false;
   
  @override
  void initState()  {
    super.initState();
    onReady();
  } 

  
  onReady() async{
  
  }
     
  showLoader(BuildContext context){
     showDialog(context: context, builder: (context) {
      return PlayGamesLoader(); 
    },);
  }

  hideLoader(BuildContext context){
    if(isLoading){
      isLoading =  false;
    }
  }

}