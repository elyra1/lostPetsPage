import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({super.key});
  final String content = 'Пропал питомец';

  void _ShareContent() => Share.share(content);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: IconButton(
          onPressed: () => _ShareContent(),
          icon: const Icon(Icons.ios_share_sharp,
              color: Color.fromRGBO(37, 138, 86, 1))),
    );
  }
}
