import 'package:animals/widgets/buttons/like_button.dart';
import 'package:animals/widgets/buttons/share_button.dart';
import 'package:flutter/material.dart';

class PetPage extends StatefulWidget {
  const PetPage({super.key});

  @override
  State<PetPage> createState() => _PetPageState();
}

class _PetPageState extends State<PetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Назад',
            style: TextStyle(
              color: Color.fromRGBO(37, 138, 86, 1),
            )),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromRGBO(37, 138, 86, 1),
              size: 25,
            )),
        backgroundColor: Colors.white,
        actions: const <Widget>[
          Padding(padding: EdgeInsets.zero, child: LikeButton()
              // IconButton(
              ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: ShareButton(),
          )
        ],
      ),
    );
  }
}
