import 'package:flutter/material.dart';

class likeButton extends StatefulWidget {
  final Function(bool) didTapButton;

  const likeButton(this.didTapButton, {Key? key}) : super(key: key);

  @override
  State<likeButton> createState() => _likeButtonState();
}

class _likeButtonState extends State<likeButton> {
  bool _isChange = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.abc_sharp),
      color: _isChange ? Colors.red : Colors.black,
      iconSize: 100.0,
      onPressed: () {
        setState(() {
          _isChange = !_isChange;
          widget.didTapButton(_isChange);
        });
      },
    );
  }
}
