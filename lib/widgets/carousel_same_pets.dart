import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class SameLostPets extends StatefulWidget {
  const SameLostPets({super.key});

  @override
  State<StatefulWidget> createState() => _SameLostPetsState();
}

class _SameLostPetsState extends State<SameLostPets> {
  final urls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjt9-JOz-lORu9dEOsDKBnNATXV4v52keS3Q&usqp=CAU',
    'https://moderncat.com/wp-content/uploads/2015/12/MaineCoon.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8hrt0AaE42K-rM16OaInoC8WoD4K37UDlIg&usqp=CAU'
  ];

  final titles = [
    'Найдена кошка, 3-я круговая улица',
    'Найден кот, 7-я квадратная улица',
    'Найдена кошка, 19-я овальная улица',
  ];

  final descriptions = [
    'На западном пропала черепаха красноухая, приметы: рост метров двадцать ...',
    'На западном пропал леопард, приметы: разговаривает на испанском ...',
    'На западном пропала кошка, приметы: белая ...'
  ];

  final dates = ['8.10.2021', '8.10.2021', '8.10.2021'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: urls.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: EdgeInsets.only(right: 14),
                child: Container(
                  width: 270,
                  height: 180,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 11),
                        child: Image.network(
                          urls[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(bottom: 13),
                          child: Text(
                            titles[index],
                            style: TextStyle(fontSize: 17),
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(bottom: 13),
                          child: Text(
                            descriptions[index],
                            style: TextStyle(fontSize: 12),
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(bottom: 13),
                          child: Text(
                            dates[index],
                            style: TextStyle(fontSize: 12,color: Color.fromRGBO(151, 151, 153, 1)),
                          )),
                    ],
                  ),
                ));
          }),
    );
  }
}
