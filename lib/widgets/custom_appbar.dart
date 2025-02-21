import 'package:flutter/material.dart';
import 'package:assignment2/widgets/circular_icon_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
      ),
      leading: CircularIconButton(icon: Icons.arrow_back_ios_new),
      actions: <Widget>[CircularIconButton(icon: Icons.more_horiz)],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
