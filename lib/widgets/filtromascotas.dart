import 'package:desing1/models/filtro_pets.dart';
import 'package:flutter/material.dart';

class FilterPetsWidget extends StatelessWidget {
  final FilterPet filter;
  final int index ;
  const FilterPetsWidget({Key key, this.filter, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Padding(
       
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 60,
          height: 80,
         decoration: BoxDecoration(
            
           border: index==0 
           ? Border.all( color : Colors.transparent) :
            Border.all( color : Colors.black, width: 0.5),

           borderRadius: BorderRadius.circular(20.0),
           color:  filter.colorbox
          
         ),
         child: Center(
           child: filter.icono
         ),
      ),
    );
  }
}