import 'package:flutter/material.dart';

class AnnouncementInfo extends StatelessWidget {
  const AnnouncementInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 124,
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.only(bottom: 16),
                      child: const Text(
                        "Номер объявления",
                        style: TextStyle(
                            fontSize: 12,
                            color:
                                Color.fromRGBO(151, 151, 153, 1)),
                      )),
                  Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.only(bottom: 16),
                      child: const Text(
                        "Пол питомца",
                        style: TextStyle(
                            fontSize: 12,
                            color:
                                Color.fromRGBO(151, 151, 153, 1)),
                      )),
                  Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.only(bottom: 16),
                      child: const Text(
                        "Добавлено",
                        style: TextStyle(
                            fontSize: 12,
                            color:
                                Color.fromRGBO(151, 151, 153, 1)),
                      )),
                  Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.only(bottom: 16),
                      child: const Text(
                        "Найден(а)",
                        style: TextStyle(
                            fontSize: 12,
                            color:
                                Color.fromRGBO(151, 151, 153, 1)),
                      )),
                  Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.only(bottom: 16),
                      child: const Text(
                        "Имя хозяина",
                        style: TextStyle(
                            fontSize: 12,
                            color:
                                Color.fromRGBO(151, 151, 153, 1)),
                      ))
                ],
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(left: 40),
            child: SizedBox(
              width: 124,
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.only(bottom: 16),
                      child: const Text("RF488918",
                          style: TextStyle(fontSize: 12))),
                  Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.only(bottom: 16),
                      child: const Text("Мужской",
                          style: TextStyle(fontSize: 12))),
                  Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.only(bottom: 16),
                      child: const Text("Вт, 21.09.2021",
                          style: TextStyle(fontSize: 12))),
                  Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.only(bottom: 16),
                      child: const Text("Вт, 21.09.2021",
                          style: TextStyle(fontSize: 12))),
                  Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.only(bottom: 16),
                      child: const Text("Владимир",
                          style: TextStyle(fontSize: 12)))
                ],
              ),
            )),
      ],
    );
  }
}