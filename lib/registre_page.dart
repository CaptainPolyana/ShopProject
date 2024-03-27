import 'package:flutter/material.dart';
import 'package:flutter_grid_view/autorization_page.dart';
import 'package:flutter_grid_view/gender_button.dart';
import 'package:intl/intl.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Регистрация'
      ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only( left: 10, right: 10),
                  margin: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.center,
                  child: TextField(style: TextStyle(fontSize: 20, color: Colors.black
                  ),
                    decoration: InputDecoration(hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                        hintText: 'Электронная почта',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 3)
                        )
                    ),
                  ),
                )
            ),
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 8),
                  child: TextField(style: TextStyle(fontSize: 20, color: Colors.black
                  ),
                    decoration: InputDecoration(hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                        hintText: 'Пароль',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 3)
                        )
                    ),
                  ),
                )
            ),
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 8),
                  child: TextField(style: TextStyle(fontSize: 20, color: Colors.black
                  ),
                    decoration: InputDecoration(hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                        hintText: 'Повторите пароль',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 3)
                        )
                    ),
                  ),
                )
            ),
            Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text('Ваш пол:', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                )
            ),
            Expanded(
              flex: 1,
              child: GenderButton(),
            ),
            Expanded(
              flex: 1,
              child: TextField(
                controller: datePickerController,
                readOnly: true,
                decoration:
                const InputDecoration(hintText: "Нажмите сюда, чтобы выбрать дату рождения"),
                onTap: () => onTapFunction(context: context),
              ),

            ),
            Expanded(
                flex: 1,
                child: ElevatedButton(

                  child: Text('Зарегистрироваться'),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AutorizationPage())
                    );
                  },
                )

            )

          ],
        ),
      ),


    );
  }
}

TextEditingController datePickerController = TextEditingController();
onTapFunction({required BuildContext context}) async {
  DateTime? pickedDate = await showDatePicker(
    context: context,
    lastDate: DateTime.now(),
    firstDate: DateTime(2015),
    initialDate: DateTime.now(),
  );
  if (pickedDate == null) return;
  datePickerController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
}