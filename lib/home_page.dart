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
  Icon customIcon = const Icon(Icons.search, color: Colors.black,);
  Widget customSearchBar = const Text('Российские авто', style: TextStyle
    (fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold
  ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customSearchBar,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                  customIcon = const Icon(Icons.cancel, color: Colors.black,);
                  customSearchBar = const ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 28,
                    ),
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: 'введите название автомобиля...',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  );
                } else {
                  customIcon = const Icon(Icons.search, color: Colors.black,);
                  customSearchBar = const Text('Российские автомобили', style: TextStyle
                  (fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold
                  ),
                  );
                }
              });
            },
            icon: customIcon,
          ),
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
