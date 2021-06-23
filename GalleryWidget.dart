import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class GalleryWidget extends StatefulWidget {
  GalleryWidget(
      this.imgList
      );
  final List<ImageProvider> imgList;
  @override
  _GalleryWidgetState createState() => _GalleryWidgetState();
}

class _GalleryWidgetState extends State<GalleryWidget> {
  CarouselController buttonCarouselController = CarouselController();
  int _currentCarouselPage = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    var carouselSlider = CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height/1.3,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 10),
        viewportFraction: 6.0,
        aspectRatio: MediaQuery.of(context).size.aspectRatio,
        pauseAutoPlayOnTouch: true,
        /*pauseAutoPlayOnTouch: Duration(milliseconds: 25),
          onPageChanged: (index) {
            setState(() {
              _currentCarouselPage = index;
            });
          },*/
      ),
      carouselController: buttonCarouselController,
      items: widget.imgList.map((imageName) {
        return Container(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            child: Image(
              image: imageName,
              width: 300,
              height: 520,
              //fit: BoxFit.none
            ),
          ),
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
              color: Colors.white
          ),
        );
      },
      ).toList(),
    );

    return Stack(
        children: [
          carouselSlider,
          Positioned(
            left: 0,
            top: 235,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.indigoAccent.withOpacity(1.0),),
              onPressed: () => buttonCarouselController.previousPage(
                  duration: Duration(milliseconds: 300), curve: Curves.linear),
              iconSize: 100,
            ),
          ),
          Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(widget.imgList, (index, url) {
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentCarouselPage == index ? Colors.indigo[900] : Colors.blueGrey
                    ),
                  );
                }),
              )
          ),
          Positioned(
            right: 0,
            top: 235,
            child: IconButton(
              icon: Icon(Icons.arrow_forward_ios, color: Colors.indigoAccent.withOpacity(1.0),),
              onPressed: () => buttonCarouselController.nextPage(
                  duration: Duration(milliseconds: 300), curve: Curves.linear),
              iconSize: 100,
            ),
          ),
        ]
    );
  }
}