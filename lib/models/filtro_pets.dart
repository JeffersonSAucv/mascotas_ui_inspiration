import 'package:desing1/icons/icon_custom_icons.dart';
import 'package:flutter/material.dart';

class FilterPet{

  final Icon icono;
  final Color colorbox;

  FilterPet( {this.icono, this.colorbox});
  
}

List filter = [

  FilterPet(

    icono: Icon(IconCustom.all),
    colorbox: Colors.yellow
  ),
  FilterPet(

    icono: Icon(Icons.pets),
    colorbox: Colors.transparent
  ),
  FilterPet(

    icono: Icon(IconCustom.bird),
    colorbox: Colors.transparent
  ),
  FilterPet(

    icono: Icon(Icons.pets),
    colorbox: Colors.transparent
  ),
  FilterPet(

    icono: Icon(IconCustom.bird),
    colorbox: Colors.transparent
  ),
  FilterPet(

    icono: Icon(Icons.pets),
    colorbox: Colors.transparent
  ),
  FilterPet(

    icono: Icon(IconCustom.bird),
    colorbox: Colors.transparent
  ),
  FilterPet(

    icono: Icon(Icons.pets),
    colorbox: Colors.transparent
  ),
  FilterPet(

    icono: Icon(IconCustom.bird),
    colorbox: Colors.transparent
  ),

];