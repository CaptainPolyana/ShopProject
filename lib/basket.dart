import 'package:flutter/material.dart';
import 'package:flutter_grid_view/basket_list.dart';
import 'package:flutter_grid_view/models/cars.dart';
import 'package:flutter_grid_view/models/final_cost.dart';
class Basket extends StatelessWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Корзина'),
        centerTitle: true,
        actions: [
          Text('Сумма товаров: '
          ),
          Text(FinalCost().toString())
        ],
      ),
      body: Column(
        children: [
          Container(
            width: 500,
            height: 550,
            child: ListView.builder(
                itemCount: BasketCars.length,
                itemBuilder: (context, int index){
                  return BasketList(index_basket: index);
                }
            ),
          ),
          ElevatedButton(onPressed: (){
            int count = 0;
            while(count != BasketCars.length){

              ShopHistory.add(BasketCars[count]);

              count++;
            }
            BasketCars.clear();

          }, child: Text('Купить все'))
        ],
      ),






    );
  }
}
