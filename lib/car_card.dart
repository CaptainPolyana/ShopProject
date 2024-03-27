import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grid_view/example_table.dart';
import 'package:flutter_grid_view/models/cars.dart';
import 'package:flutter_grid_view/shop_list.dart';
import 'package:flutter_grid_view/shopping.dart';
import 'package:flutter_grid_view/swiper_image.dart';
import 'package:flutter_grid_view/video_player.dart';
class CarCard extends StatefulWidget {
  int index_car;
  CarCard({Key? key, required this.index_car}) : super(key: key);

  @override
  State<CarCard> createState() => _CarCartState(index_car);
}

class _CarCartState extends State<CarCard> {
  final int index_car;
  _CarCartState(this.index_car);
  @override
  Widget build(BuildContext context) {
    bool _isShown = true;
    void _delete(BuildContext context){
      showCupertinoDialog(
          context: context,
          builder: (BuildContext ctx) {
            return CupertinoAlertDialog(
              title:  const Text('Подтвердить покупку'),
              content: const Text('Вы уверены, что хотите купить данный товар'),
              actions: [
                //Кнопка Да
                CupertinoDialogAction(
                  onPressed: (){

                    setState(() {
                      _isShown = false;
                      ShopHistory.add(carsList[index_car]);
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ShopList() ));


                    });
                  },
                  isDefaultAction: true,
                  isDestructiveAction: true,
                  child: const Text('Да'),
                ),
                CupertinoDialogAction(

                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    isDefaultAction: false,
                    isDestructiveAction: false,
                    child: const Text('Нет')
                )

              ],
            );
          }
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(''
      ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 200,
            child: SwiperImage(index_car: index_car),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Text('Название авто: ${carsList[index_car].name}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Text('Цена: ${carsList[index_car].cost}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Text('Описание:' ),

          ),
          Container(
            width: 200,
            height: 100,
            child: ListView(
              children: <Widget>[
                Text('${carsList[index_car].description}')
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Text('Характеристики:'),
          ),
          Container(

            child: ExampleTable(index_car: index_car),
          ),
          Container(

            margin: EdgeInsets.all(8),
            child: VideoWidget(index_car: index_car),
          ),
          Container(
              margin: EdgeInsets.all(8),
              child: CupertinoButton(child: Text('Купить сейчас', style: TextStyle(fontSize: 30, color: Colors.blue),), onPressed: _isShown == true ? () => _delete(context): null)
          )
        ],
      ),
    );
  }
}

