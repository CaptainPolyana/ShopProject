import 'package:flutter/material.dart';
import 'package:flutter_grid_view/models/cars.dart';
import 'package:intl/intl.dart';
class Shop extends StatefulWidget {
  int shop_index;
  Shop({Key? key, required this.shop_index}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState(shop_index);
}

class _ShopState extends State<Shop> {
  final int shop_index;
  _ShopState(this.shop_index);
  @override

  DateTime now = new DateTime.now();
 
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      child: Table(
          border: TableBorder.all(width: 1, color: Colors.black),
          children: [
            TableRow(
                children: [
                  Center(
                    child: Text('Фото'
                    ),
                  ),
                  Center(child: Text('Название')
                  ),
                  Center(child: Text('Количество'),
                  ),
                  Center(child: Text('Стоимость'),),
                  Center(child: Text('Дата и время покупки'),),

                ]
            ),
            TableRow(
                children: [
                  Center(
                    child: Image.network('${ShopHistory[shop_index].photo}'
                    ),

                  ),
                  Center(child: Text('${ShopHistory[shop_index].name}'
                  ),
                  ),
                  Center(child: Text(ShopHistory[shop_index].quantity.toString()
                  ),
                  ),
                  Center(
                    child: Text((ShopHistory[shop_index].cost*ShopHistory[shop_index].quantity).toString()),
                  ),
                  Center(child: Text(now.toString()),)


                ]
            )
          ]
      ),

    );
  }
}
