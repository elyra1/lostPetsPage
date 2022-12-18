import 'package:animals/widgets/announcement.dart';
import 'package:animals/widgets/app_bar.dart';
import 'package:animals/widgets/carousel_same_pets.dart';
import 'package:animals/widgets/commentaries.dart';
import 'package:animals/widgets/image_carousel.dart';
import 'package:animals/widgets/share_buttons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PetPage extends StatefulWidget {
  const PetPage({super.key});

  @override
  State<PetPage> createState() => _PetPageState();
}

class _PetPageState extends State<PetPage> {
  bool showNumber = false;
  final fieldText = TextEditingController();
  void clearText() => fieldText.clear();
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
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ImageCarousel(),
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 25),
                child: Column(children: [
                  Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      alignment: Alignment.centerLeft,
                      child: const Text('Пропал кот',
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'MuseoCyrilli'))),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Красноармейская улица, 37, Ростов-на-Дону',
                          style: TextStyle(fontSize: 13))),
                  TextWithoutPaddingButton('Показать на карте',
                      Color.fromRGBO(37, 138, 86, 1), 13, EdgeInsets.zero),
                  Container(
                      height: 109,
                      alignment: Alignment.centerLeft,
                      child: const Text(
                          'На Красноармейской пропал каракал. Предположительно выпрыгнул через открытое окно. Отзывается на свою кличку “Шлёпа” или “Русский кот”. Очень любит пельмени. Клеймо отсутствует, полное телосложение. Чистый и ухоженный, людей не боится.',
                          style: TextStyle(fontSize: 13))),
                  ShowNumberButton(),
                  SocialButtons(),
                  GrayLine(17, 13),
                  AnnouncementInfo(),
                  Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      alignment: Alignment.centerLeft,
                      child: const Text('Похожие пропавшие',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'MuseoCyrilli'))),
                  SameLostPets(),
                  Container(
                    padding: const EdgeInsets.only(top: 27, bottom: 25),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      '11 комментариев',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'MuseoCyrilli'),
                    ),
                  ),
                  Stack(alignment: Alignment.centerRight, children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            hintText: 'Ваш комментарий...',
                          ),
                          controller: fieldText,
                        )),
                    TextButton(
                        onPressed: () {
                          clearText();
                        },
                        child: const Text(
                          'Отпр.',
                          style:
                              TextStyle(color: Color.fromRGBO(37, 138, 86, 1)),
                        ))
                  ]),
                  Commentary(
                      'Арсений',
                      '“На Красноармейской пропал каракал” - звучит уже неплохо!',
                      'Понедельник, 5:33'),
                  Commentary(
                      'Дмитрий',
                      'Как вернусь в Ростов, обыщу наши подвалы, я рядом живу',
                      'Понедельник, 5:33'),
                  Commentary(
                      'Женя',
                      '“На Красноармейской пропал каракал” - звучит уже неплохо!',
                      'Понедельник, 5:33'),
                  Commentary(
                      'Владимир',
                      '“На Красноармейской пропал каракал” - звучит уже неплохо!',
                      'Понедельник, 5:33'),
                  Commentary(
                      'Кот',
                      '“На Красноармейской пропал каракал” - звучит уже неплохо!',
                      'Понедельник, 5:33'),
                  Commentary(
                      'Черепаха',
                      '“На Красноармейской пропал каракал” - звучит уже неплохо!',
                      'Понедельник, 5:33'),
                  Commentary(
                      'Арсений',
                      '“На Красноармейской пропал каракал” - звучит уже неплохо!',
                      'Понедельник, 5:33'),
                  Commentary(
                      'Арсений',
                      '“На Красноармейской пропал каракал” - звучит уже неплохо!',
                      'Понедельник, 5:33'),
                  Commentary(
                      'Арсений',
                      '“На Красноармейской пропал каракал” - звучит уже неплохо!',
                      'Понедельник, 5:33'),
                  Commentary(
                      'Арсений',
                      '“На Красноармейской пропал каракал” - звучит уже неплохо!',
                      'Понедельник, 5:33'),
                  Commentary(
                      'Арсений',
                      '“На Красноармейской пропал каракал” - звучит уже неплохо!',
                      'Понедельник, 5:33'),
                  GrayLine(27, 25),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Row(children: [
                      Icon(
                        Icons.warning_rounded,
                        color: Color.fromRGBO(37, 138, 86, 1),
                        size: 24,
                      ),
                      TextWithoutPaddingButton('Пожаловаться на объявление',
                          Color.fromRGBO(37, 138, 86, 1), 13, EdgeInsets.zero)
                    ]),
                  )
                ])),
            GrayLine(6, 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWithoutPaddingButton(
                      'PET911', Colors.black, 14, EdgeInsets.only(bottom: 20)),
                  TextWithoutPaddingButton('Разместите объявление',
                      Colors.black, 10, EdgeInsets.only(bottom: 15)),
                  TextWithoutPaddingButton('Платные услуги', Colors.black, 10,
                      EdgeInsets.only(bottom: 15)),
                  TextWithoutPaddingButton('Полезные советы', Colors.black, 10,
                      EdgeInsets.only(bottom: 15)),
                  TextWithoutPaddingButton(
                      'Отзывы', Colors.black, 10, EdgeInsets.only(bottom: 15)),
                  TextWithoutPaddingButton('Вопросы-ответы', Colors.black, 10,
                      EdgeInsets.only(bottom: 15)),
                  TextWithoutPaddingButton(
                      'О нас', Colors.black, 10, EdgeInsets.only(bottom: 15)),
                  TextWithoutPaddingButton('Контакты', Colors.black, 10,
                      EdgeInsets.only(bottom: 15)),
                  GrayLine(20, 23),
                  TextWithoutPaddingButton('УСКОРЬТЕ ПОИСК ПИТОМЦА',
                      Colors.black, 14, EdgeInsets.only(bottom: 20)),
                  TextWithoutPaddingButton(
                      'Распространите объявление в социальных сетях',
                      Colors.black,
                      10,
                      EdgeInsets.only(bottom: 15)),
                  TextWithoutPaddingButton('Оповестите клиники и приюты',
                      Colors.black, 10, EdgeInsets.only(bottom: 15)),
                  TextWithoutPaddingButton('Сообщите волонтёрам о пропаже',
                      Colors.black, 10, EdgeInsets.only(bottom: 15)),
                  TextWithoutPaddingButton('Оповестите жителей района',
                      Colors.black, 10, EdgeInsets.only(bottom: 15)),
                  TextWithoutPaddingButton('Создайте премиум-объявление',
                      Colors.black, 10, EdgeInsets.only(bottom: 15)),
                  TextWithoutPaddingButton(
                      'Получайте уведомления о похожих питомцах',
                      Colors.black,
                      10,
                      EdgeInsets.only(bottom: 15)),
                  GrayLine(20, 23),
                  TextWithoutPaddingButton(
                      'ПОМОЩЬ', Colors.black, 14, EdgeInsets.only(bottom: 20)),
                  TextWithoutPaddingButton('Станьте волонтером', Colors.black,
                      10, EdgeInsets.only(bottom: 15)),
                  TextWithoutPaddingButton('Поддержите проект', Colors.black,
                      10, EdgeInsets.only(bottom: 15)),
                  GrayLine(20, 23),
                  TextWithoutPaddingButton('Связаться с нами', Colors.black, 14,
                      EdgeInsets.only(bottom: 12)),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '8(800) 350-06-10',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon:
                                    const Icon(FontAwesomeIcons.vk, size: 20)),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(FontAwesomeIcons.whatsapp,
                                    size: 20)),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(FontAwesomeIcons.telegram,
                                    size: 20)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Пн-Пт с 9:00 до 18:00 (МСК)",
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
            GrayLine(20, 23),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  TextWithoutPaddingButton(
                      'Пропавшие и найденные животные',
                      Color.fromRGBO(140, 140, 140, 1),
                      10,
                      EdgeInsets.only(bottom: 8)),
                  TextWithoutPaddingButton(
                      'Пропавшие и найденные животные России по породам',
                      Color.fromRGBO(140, 140, 140, 1),
                      10,
                      EdgeInsets.only(bottom: 15)),
                  TextWithoutPaddingButton(
                      'Политика конфеденциальности',
                      Color.fromRGBO(140, 140, 140, 1),
                      10,
                      EdgeInsets.only(bottom: 8)),
                  TextWithoutPaddingButton(
                      'Условия пользования',
                      Color.fromRGBO(140, 140, 140, 1),
                      10,
                      EdgeInsets.only(bottom: 50)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container ShowNumberButton() {
    return Container(
      height: 45,
      color: const Color.fromRGBO(207, 233, 220, 1),
      width: double.infinity,
      child: TextButton(
        child: Text(
          showNumber ? '8-800-555-35-35' : 'Показать номер хозяина',
          style: const TextStyle(color: Color.fromRGBO(51, 70, 60, 1)),
        ),
        onPressed: () {
          setState(() {
            showNumber = !showNumber;
          });
        },
      ),
    );
  }
}

class GrayLine extends StatelessWidget {
  double top;
  double bottom;
  GrayLine(double this.top, double this.bottom, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: top, bottom: bottom),
        child: Container(
          color: Colors.grey,
          height: 1,
          width: double.infinity,
        ));
  }
}

///Кнопка с текстом без отступов от границ кнопки
class TextWithoutPaddingButton extends StatelessWidget {
  String? data;
  Color? color;
  double fontsize;
  EdgeInsets padding;

  TextWithoutPaddingButton(String this.data, Color? this.color,
      double this.fontsize, EdgeInsets this.padding,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        height: fontsize + padding.bottom + padding.top,
        alignment: Alignment.centerLeft,
        child: TextButton(
            
            style: TextButton.styleFrom(padding: EdgeInsets.zero,alignment: Alignment.centerLeft),
            child: Text(
              data!,
              style: TextStyle(color: color, fontSize: fontsize),
              textAlign: TextAlign.left,
            ),
            onPressed: () {}));
  }
}
