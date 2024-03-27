import 'package:flutter_grid_view/models/cars.dart';
double FinalCost(){
  double Sum = 0 ;
  int count = 0;
  while(count != BasketCars.length){

    Sum=   Sum + BasketCars[count].cost*BasketCars[count].quantity;
    count++;

  }
  return Sum;
}