import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:play_games/app/core/exntensions/extension.dart';

class ProfileFieldWidget extends StatelessWidget {
  const ProfileFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          SizedBox(
            width: context.parcentWidth(0.03),
            child: IconButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        context.theme.colorScheme.onPrimary)),
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.heart,size: 14,),),
          ),
          SizedBox(
            width: context.parcentWidth(0.03),
            child: IconButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        context.theme.colorScheme.onPrimary)),
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.userGroup,size: 14,)),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: context.theme.colorScheme.onPrimary,
            
            ),
            width: context.parcentWidth(0.12),
            child: Center(
              child: ListTile(
                dense: true,
                leading: SizedBox(
                  width: 30,
                  height: 30,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2021/08/22/22/51/yoda-6566301_1280.jpg'),
                  ),
                ),
                title: Text("Yoda",
                    style: context.theme.textTheme.labelSmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
                subtitle: Text(
                  '@yodaJedi',
                  style: context.theme.textTheme.labelSmall,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
