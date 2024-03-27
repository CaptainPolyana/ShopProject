import 'package:flutter/material.dart';
import 'package:flutter_grid_view/car_card.dart';
import 'package:flutter_grid_view/models/cars.dart';
class ToCar extends StatelessWidget {
  const ToCar({Key? key, required this.index_car}) : super(key: key);
  final int index_car;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text('${carsList[index_car].name}'),
        onPressed: (){

          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CarCard(index_car: index_car))
          );
        }

    );
  }
}
