import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Поделиться',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
            padding: EdgeInsets.zero,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.vk,
                      size: 44,
                      color: Colors.blue,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.whatsapp,
                      size: 44,
                      color: Colors.green,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.telegram,
                      size: 44,
                      color: Colors.blue,
                    )),
              ],
            )),
      ],
    );
  }
}