

import 'package:desing1/models/pets_model.dart';
import 'package:desing1/pages/detailpetpage.dart';
import 'package:flutter/material.dart';

class PetsLits extends StatelessWidget {
  final Pet pet;

  const PetsLits({Key key, this.pet}) : super(key: key);

  
  @override
  
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        print("El nombre es ${pet.nombre}");
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => DetailPetPage(pet: pet))
          );
      },
      child: Container(
        child: Stack(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(18.0),
                child: Image.asset(
                  pet.foto,
                  fit: BoxFit.cover,
                 
                )),
            Padding(
              padding: const EdgeInsets.only(left: 8.0 ),
              child: datosPet(),
            )
          ],
        ),
      ),
    );
  }

  Widget datosPet() {
    return Container(
    
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                pet.nombre,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                pet.raza,
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.cake,
                    color: Colors.white,
                    size: 14.0,
                  ),
                  Text(
                    pet.edad.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 14.0),
                  ),
                ],
              ),
              SizedBox(height: 5.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.pets,
                    color: Colors.white,
                    size: 14.0,
                  ),
                  Text(
                    pet.genero,
                    style: TextStyle(color: Colors.white, fontSize: 14.0),
                  )
                ],
              )
            ],
          ),
        ),
      
    );
  }
}
