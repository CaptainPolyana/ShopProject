import 'package:flutter/material.dart';
import 'package:flutter_grid_view/home_page.dart';
import 'package:flutter_grid_view/models/cars.dart';
import 'package:flutter_grid_view/shopping.dart';
class ShopList extends StatelessWidget {
  const ShopList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('История покупок'),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(Icons.home)
          )
        ],
      ),
      body: ListView.builder(
          itemCount: ShopHistory.length,
          itemBuilder: (context, int index){
            return Shop(shop_index: index);

          }


      ),
    );
  }
}
