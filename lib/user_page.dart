import 'package:flutter/material.dart';
import 'package:flutter_grid_view/models/user.dart';
import 'package:flutter_grid_view/shop_list.dart';
class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  int index = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Личный кабинет'),
        centerTitle: true,

      ),
      body: ListView(
        children: <Widget>[

          Row(
            children: [
              Container(
                child: Text('Фото личного кабинета: '),
              ),
              Container(
                margin: EdgeInsets.all(8),
                  alignment: Alignment.topCenter,
                  child: Image.network('${Useris[index].PhotoUser}',  height: 100, )),
            ],
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Text('Имя : ${Useris[index].firstname}'),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Text('Фамилия : ${Useris[index].lustname}'),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Text('Электронная почта : ${Useris[index].Email}'),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Text('Телефон : ${Useris[index].Phone}'),
          ),
          
          Container(
            margin: EdgeInsets.all(8),
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ShopList()));
            },
                child: Text('История покупок')
            ),
          )

        ],
      ),
    );
  }
}
