import 'package:flutter/material.dart';
import 'package:flutter_grid_view/models/cars.dart';
class BasketList extends StatelessWidget {
  const BasketList({Key? key, required this.index_basket}) : super(key: key);
  final int index_basket;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 300,
      height: 200,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(16)
          )
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
              child: Container(
                alignment: Alignment.centerRight,

                  child:  IconButton(
                  onPressed: (){
                    BasketCars.removeAt(index_basket);
                     },
                  icon: Icon(Icons.cancel_outlined)
              )
                 )
          ),
        Expanded(flex: 2 ,child: Image.network('${BasketCars[index_basket].photo}',
        fit: BoxFit.scaleDown,
      ),
      ),
      Center(

          child: Expanded(child: Text('Название автомобиля: ${BasketCars[index_basket].name}'
          ),
          )

      ),
      Center(
          child: Expanded(child: Text('Комплектация: ${BasketCars[index_basket].complex}'
          ),
          )
      ),
      Center(
        child: Expanded(child: Text('Цена: ${BasketCars[index_basket].cost} ₽')),
      ),
      ]
      )

    );
  }
}
