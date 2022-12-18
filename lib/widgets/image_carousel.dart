import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});
  @override
  State<StatefulWidget> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int currentPage = 1;
  final List<String> imagesUrl = [
    "https://chudo-prirody.com/uploads/posts/2021-08/thumbs/1628938799_10-p-russkii-kot-shlepa-foto-12.jpg",
    "https://chudo-prirody.com/uploads/posts/2021-08/thumbs/1628938752_3-p-russkii-kot-shlepa-foto-4.jpg",
    "https://chudo-prirody.com/uploads/posts/2021-08/thumbs/1628938740_27-p-russkii-kot-shlepa-foto-32.jpg",
    "https://chudo-prirody.com/uploads/posts/2021-08/thumbs/1628938746_37-p-russkii-kot-shlepa-foto-43.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      SizedBox(
        height: 310,
        width: MediaQuery.of(context).size.width,
        child: PageView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: imagesUrl.length,
            pageSnapping: true,
            onPageChanged: (page) {
              setState(() {
                currentPage = page + 1;
              });
            },
            itemBuilder: (context, pagePosition) {
              return Image.network(
                imagesUrl[pagePosition],
                fit: BoxFit.fill,
              );
            }),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          color: const Color.fromRGBO(0, 0, 0, 0.8),
          height: 18,
          width: 34,
          child: Center(
              child: Text(
            '$currentPage/4',
            style: const TextStyle(color: Colors.white),
          )),
        ),
      )
    ]);
  }
}
