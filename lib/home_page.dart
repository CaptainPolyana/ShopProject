import 'package:flutter/material.dart';
import 'package:flutter_grid_view/basket.dart';
import 'package:flutter_grid_view/cars_list.dart';
import 'package:flutter_grid_view/favorite_cars.dart';
import 'package:flutter_grid_view/models/cars.dart';
import 'package:flutter_grid_view/user_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text('Российские автомобили',
          style: TextStyle
            (fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold
          ),

        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => UserPage()));
              },
              icon: Icon(Icons.person)
          ),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => FavoriteItem()));
          }, icon: Icon(Icons.favorite)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Basket()));
          }, icon: Icon(Icons.shopping_basket))
        ],
      ),
      body: GridView.builder(
          itemCount: carsList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.610
          ),
          itemBuilder: (BuildContext context, int index){

            return CarsList(index_car: index);

          }
      ),

    );;
  }
}
