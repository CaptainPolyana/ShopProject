import 'package:flutter/material.dart';
import 'package:flutter_grid_view/models/cars.dart';
class IconButtonFavorite extends StatefulWidget {
   IconButtonFavorite({Key? key, required this.index_car}) : super(key: key);
  final int index_car;
  @override
  State<IconButtonFavorite> createState() => _IconButtonFavoriteState(index_car);
}

class _IconButtonFavoriteState extends State<IconButtonFavorite> {
  final int index_car;
  bool _isFavorite = false;
  int count = 0;
  Color _MyColor = Colors.white;
  _IconButtonFavoriteState(this.index_car);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      
      
      
      child: IconButton(
        
        
        
        icon: Icon(Icons.favorite),
        selectedIcon: Icon(Icons.favorite),
        isSelected: _isFavorite,
        color: _MyColor,
        tooltip: 'Добавить в избранное',
          onPressed: (){
            if(_isFavorite == false)
              {
                FavoriteItemCar.add(carsList[index_car]);
                _MyColor = Colors.red;
                  setState(() {
                    _isFavorite = !_isFavorite;
                  });
              }
            else if(_isFavorite == true)
            {
              FavoriteItemCar.removeWhere((item) => item.id == carsList[index_car].id);
              _MyColor = Colors.white;
              setState(() {
                _isFavorite = !_isFavorite;
              });
            }

          },

      ),
    );
  }
}

