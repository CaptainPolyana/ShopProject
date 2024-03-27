import 'package:flutter/material.dart';
import 'package:flutter_grid_view/models/cars.dart';
class BasketList extends StatefulWidget {
  int index_basket;
  BasketList({Key? key, required this.index_basket}) : super(key: key);

  @override
  State<BasketList> createState() => _BasketListState(index_basket);
}

class _BasketListState extends State<BasketList> {
  final int index_basket;
  _BasketListState(this.index_basket);
  @override
  Widget build(BuildContext context) {
    bool _isButtonDisabled = false;
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
                child: Expanded(child: Text('Цена: ' + (BasketCars[index_basket].quantity*BasketCars[index_basket].cost).toString() )),
              ),
              Container(
                child: Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                              onPressed: _isButtonDisabled ? null : (){
                                if(BasketCars[index_basket].quantity <= 1){
                                }
                                else if (BasketCars[index_basket].quantity == 2){
                                  _isButtonDisabled = true;
                                  setState(() {
                                    BasketCars[index_basket].quantity--;
                                  });
                                }
                                else{
                                  setState(() {
                                    BasketCars[index_basket].quantity--;
                                  });
                                }
                              },
                              child: Text('-')


                          ),
                        ),
                        Expanded(child: Text(BasketCars[index_basket].quantity.toString(), textAlign: TextAlign.center,)),
                        Expanded(
                            flex: 1,
                            child: ElevatedButton(
                                onPressed: (){
                                  setState(() {
                                    BasketCars[index_basket].quantity++;
                                    _isButtonDisabled = false;
                                  });
                                },
                                child: Text('+'))
                        )
                      ],
                    )

                ),
              )
            ]
        )

    );
  }
}
