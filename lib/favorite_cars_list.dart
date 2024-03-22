import 'package:flutter/material.dart';
import 'package:flutter_grid_view/models/cars.dart';
class FavoriteCarsList extends StatelessWidget {
  const FavoriteCarsList({Key? key, required this.favorite_car_index}) : super(key: key);
  final int favorite_car_index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
        height: 200,
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.all(Radius.circular(16)
    )
    ),
    child: Column(
    children: <Widget>[
    Expanded(flex: 2 ,child: Image.network('${FavoriteItemCar[favorite_car_index].photo}',
    fit: BoxFit.scaleDown,
    ),
    ),
    Center(

    child: Expanded(child: Text('Название автомобиля: ${FavoriteItemCar[favorite_car_index].name}'
    ),
    )

    ),
    Center(
    child: Expanded(child: Text('Комплектация: ${FavoriteItemCar[favorite_car_index].complex}'
    ),
    )
    ),
    Center(
    child: Expanded(child: Text('Цена: ${FavoriteItemCar[favorite_car_index].cost} ₽')),
    ),
  ]
    ),
    );
  }
}
