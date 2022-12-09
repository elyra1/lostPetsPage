import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});
  @override
  State<StatefulWidget> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool _isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: IconButton(
        icon: _isLiked
            ? const Icon(
                Icons.favorite_outlined,
                color: Colors.red
              )
            : const Icon(
                Icons.favorite_border,
                color: Color.fromRGBO(37, 138, 86, 1),
              ),
        onPressed: (){
          setState(() {
            _isLiked = !_isLiked;
          });
        },
      ),
    );
  }
}
