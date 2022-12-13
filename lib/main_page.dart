import 'package:animals/widgets/buttons/like_button.dart';
import 'package:animals/widgets/buttons/share_button.dart';
import 'package:animals/widgets/image_carousel.dart';
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
            Padding(padding: EdgeInsets.zero, child: LikeButton()),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: ShareButton(),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: const [
            ImageCarousel(),
            Padding(
                padding: EdgeInsets.only(left: 22, top: 17, right: 240),
                child: Text('Пропал кот',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MuseoCyrilli'))),
            Padding(
                padding: EdgeInsets.only(left: 22, top: 13, right:97),
                child: Text('Красноармейская улица, 37, Ростов-на-Дону',
                    style: TextStyle(fontSize: 13))),
            Padding(
                padding: EdgeInsets.only(left: 22, top: 6, right: 257),
                child: Text(
                  'Показать на карте',
                  style: TextStyle(color: Color.fromRGBO(37, 138, 86, 1),fontSize: 13)),
                ),
            Padding(
                padding: EdgeInsets.only(left: 22, top: 25, right: 22),
                child: Text(
                  'На Красноармейской пропал каракал. Предположительно выпрыгнул через открытое окно. Отзывается на свою кличку “Шлёпа” или “Русский кот”. Очень любит пельмени. Клеймо отсутствует, полное телосложение. Чистый и ухоженный, людей не боится.',
                 style: TextStyle(fontSize: 13))),
            //Padding(padding: EdgeInsets.only(left: 22,top: 25, right: 22), child,)
          ]),
        ));
  }
}
