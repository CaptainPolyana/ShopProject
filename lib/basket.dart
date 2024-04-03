import 'package:flutter/material.dart';
import 'package:flutter_grid_view/basket_list.dart';
import 'package:flutter_grid_view/home_page.dart';
import 'package:flutter_grid_view/models/cars.dart';
import 'package:flutter_grid_view/models/final_cost.dart';

class Basket extends StatefulWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  double sum = 0;
  void updateSum(){
    setState(() {
      sum = FinalCost();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Корзина'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          Text('Сумма товаров: '
          ),
          Text(FinalCost().toString()),
          IconButton(
              onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(Icons.home)
          ),
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
                  return BasketList(index_basket: index, updateSum: updateSum);
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => Basket()));

          }, child: Text('Купить все'))
        ],
      ),






    );
  }
}
