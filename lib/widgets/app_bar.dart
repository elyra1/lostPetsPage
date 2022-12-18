import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

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

class ShareButton extends StatelessWidget {
  const ShareButton({super.key});
  final String content = 'Пропал питомец';

  void _shareContent() => Share.share(content);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: IconButton(
          onPressed: () => _shareContent(),
          icon: const Icon(Icons.ios_share_sharp,
              color: Color.fromRGBO(37, 138, 86, 1))),
    );
  }
}



