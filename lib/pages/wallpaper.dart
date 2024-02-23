import 'package:flutter/material.dart';
import 'package:wapow/pages/wallpaper_widgets/back_button.dart';
import 'package:wapow/pages/wallpaper_widgets/item.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WallpaperPage extends StatelessWidget {
  final String image;

  WallpaperPage({required this.image});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(this.image))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MainBackButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ItemButton(
                  onTap: () {},
                  text: 'Like',
                  icon: Icons.favorite_outline_rounded,
                  bgColor: Colors.red,
                ),
                ItemButton(
                  onTap: () {},
                  text: 'Download',
                  icon: Icons.download_sharp,
                  bgColor: Colors.black,
                ),
                ItemButton(
                  text: 'Apply',
                  icon: Icons.play_arrow,
                  bgColor: Colors.green,
                  onTap: () {
                    // CODE HERE
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
