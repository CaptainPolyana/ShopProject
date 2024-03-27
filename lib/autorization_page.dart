import 'package:flutter/material.dart';
import 'package:flutter_grid_view/example_button.dart';
import 'package:flutter_grid_view/example_text_field.dart';
import 'package:flutter_grid_view/home_page.dart';
import 'package:flutter_grid_view/registre_page.dart';




class AutorizationPage extends StatelessWidget {
  const AutorizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(

                flex: 4,
                child: Container(
                  alignment: Alignment.center,
                  child: Image.network("https://cstor.nn2.ru/forum/data/forum/images/2010-12/30178754-d89cdfd06dd7.jpg"),
                )
            ),
            Expanded(
                flex: 2,
                child: Container(
                  width: 200,
                  height: 10,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Введите логин:'
                    ),
                    maxLength: 30,
                  ),
                )
            ),
            Expanded(
                flex: 2,
                child: Container(
                    width: 200,
                    height: 10,
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: ExampleTextField(HintText: 'Введите пароль:', MAXLength: 10)
                )
            ),
            Expanded(
                child: Container(

                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 8),
                  child: ElevatedButton(
                      child: ExampleButton(text: 'Войти'),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomePage())
                        );
                      }
                  ),
                )
            ),
            Expanded(child: Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                    child: ExampleButton(text: 'Зарегистрироваться'),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Registration())
                      );
                    }
                )
            )
            )
          ],
        ),
      ),
      appBar: AppBar(title: Text('ВедроТрейд'),centerTitle: true,),
    );
  }
}