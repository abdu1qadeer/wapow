import 'package:flutter/material.dart';
import 'package:wapow/pages/wallpaper_widgets/back_button.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.pink, Colors.purple],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Liked Wallpapers"),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
