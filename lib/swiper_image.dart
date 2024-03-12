import 'package:flutter/material.dart';
import 'package:flutter_grid_view/models/cars.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class SwiperImage extends StatelessWidget {
  const SwiperImage({Key? key, required this.index_car}) : super(key: key);
  final index_car;
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index){
        return Image.network('${carsList[index_car].images[index]}', );

      },
      pagination: SwiperPagination(),
      itemCount: carsList[index_car].images.length,
      control: SwiperControl(),
    );
  }
}

