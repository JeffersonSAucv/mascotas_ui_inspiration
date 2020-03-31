

import 'package:desing1/models/filtro_pets.dart';
import 'package:desing1/widgets/filtromascotas.dart';
import 'package:desing1/widgets/listarmascotas.dart';
import 'package:flutter/material.dart';
import 'package:desing1/models/pets_model.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Column(
          children: <Widget>[
            appBar(),
            SizedBox(height: 10,),
            shearchBar(),
            SizedBox(height: 10,),
            Flexible( flex: 1, child: filterBar()),
            SizedBox(height: 10,),
            Flexible( flex: 6,  child: listCustomPets()),
            //listCustomPets()
          ],
        )
      ),
    );
  }

  Widget appBar(){
     return Padding(
       padding: const EdgeInsets.all(8.0),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[
           Row(
             children: <Widget>[
               Text('HSR LAYOUT', style: TextStyle( fontWeight: FontWeight.bold, fontSize:22.0),),
               Icon(Icons.keyboard_arrow_down , size: 35),
             ]
           ),

           Icon(Icons.person, size: 35),
         ],
       ),
     );
  }
  Widget shearchBar(){

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(

          color:  Colors.grey[200],
          borderRadius: BorderRadius.circular(10.0)
        ) ,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Eg- Golden Retriever', style: TextStyle(color: Colors.grey),),
                Icon(Icons.search, color: Colors.black87,)
              ]
            ),
          ) 
          ),
      ),
      
    );

  }
  Widget filterBar(){

     return ListView.builder(
       shrinkWrap: true,
       physics: ClampingScrollPhysics(),
       itemCount:  filter.length,
       scrollDirection: Axis.horizontal,
       itemBuilder: (context , index){
         return FilterPetsWidget(
           filter: filter[index],
           index: index,
         );
       }
      
      );

  }
   Widget listCustomPets(){
    return StaggeredGridView.countBuilder(
      shrinkWrap: true,
      primary: false,
      crossAxisCount: 4,
      padding: const EdgeInsets.all(12.0),
      mainAxisSpacing: 24.0,
      crossAxisSpacing: 12.0,
      itemCount:  pets.length,
      itemBuilder: (BuildContext context, int index) => 
       PetsLits(pet: pets[index],),
      staggeredTileBuilder: (int index) => StaggeredTile.fit(2)
      
      );
  }


 /*  Widget listPets(){
    return SingleChildScrollView(
          child: Column(
          children: <Widget>[
             for (var i=0; i< pets.length; i++)
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: PetsLits(pet: pets[i],),
             
             )

          ]
      ),
    );
  } */
  
  

}