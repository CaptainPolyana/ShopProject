import 'package:flutter/material.dart';
import 'package:flutter_grid_view/favorite_cars_list.dart';
import 'package:flutter_grid_view/models/cars.dart';
class FavoriteItem extends StatelessWidget {
  const FavoriteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Избранное'
      ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: FavoriteItemCar.length,
          itemBuilder: (context, index){

          return FavoriteCarsList(favorite_car_index: index);

          }
      ),
    );
  }
}
