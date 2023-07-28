import 'package:changeiconlikebutton/LikeButton.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  String activityButton = 'red';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              likeButton((_ischange) {
                setState(() {
                  activityButton = _ischange ? 'red' : 'black';
                });
              }),
              Text('$activityButton')
            ]),
      ),
    );
  }
}
