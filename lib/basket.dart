import 'package:flutter/material.dart';
import 'package:flutter_grid_view/basket_list.dart';
import 'package:flutter_grid_view/models/cars.dart';
class Basket extends StatelessWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Корзина'),
      centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: BasketCars.length,
          itemBuilder: (context, int index){
            return BasketList(index_basket: index);
          }
      )

    );
  }
}
