import 'package:desing1/icons/icon_custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:desing1/models/pets_model.dart';

class DetailPetPage extends StatelessWidget {
  final Pet pet;

  const DetailPetPage({Key key, this.pet}) : super(key: key);
  @override
  Widget build(BuildContext context) {

  double heigthPet = MediaQuery.of(context).size.height * 0.5;
  double heigthTable = MediaQuery.of(context).size.height * 0.55;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Stack(
            children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                  height: heigthPet,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(pet.foto),
                      fit: BoxFit.cover
                      )
                  ),
                  ),
                ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: heigthTable,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(60), topRight:Radius.circular(60) )
                  ),
                  child: datosPet(),
                ),
              )
            ],
          )
        )
      
    );
  }

  Widget datosPet(){
    return Padding(
      padding: const EdgeInsets.only(right: 32.0, left: 32.0, top: 15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(pet.nombre, style: TextStyle( fontSize: 40.0 , fontWeight: FontWeight.bold ),),
                SizedBox(width: 30),
                Text(pet.genero),
                Expanded(child: Container()),
                Icon(Icons.bookmark)
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("RAZA",style: TextStyle(fontWeight: FontWeight.bold )),
                    SizedBox(height: 5.0, ),
                    Text(pet.raza),
                  ],
                ),
                 Column(
                  children: <Widget>[
                    Text("EDAD",style: TextStyle(fontWeight: FontWeight.bold )),
                    SizedBox(height: 5.0, ),
                    Text("${pet.edad.toString()} años"),
                  ],
                ),
                 Column(
                  children: <Widget>[
                    Text("TAMAÑO",style: TextStyle(fontWeight: FontWeight.bold )),
                    SizedBox(height: 5.0, ),
                    Text("${pet.altura.toString()} cm"),
                  ],
                ),
                 Column(
                  children: <Widget>[
                    Text("PESO",style: TextStyle(fontWeight: FontWeight.bold )),
                    SizedBox(height: 5.0, ),
                    Text("${pet.peso.toString()} Kgs"),
                  ],
                ),
                
              ],
            ),
            SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Direccion",style: TextStyle(fontWeight: FontWeight.bold )),
                Text(pet.direccion)
              ],
            ),
            SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("ACERCA DE",style: TextStyle(fontWeight: FontWeight.bold )),
                Text(pet.informacion)
              ],
            ),
            SizedBox(height: 15.0),
            Container(
              height: 80.0,
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset('assets/fotosperros/perro_banner.png', width: 40, height: 75,)
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("KNOW ABOUT WHITE DOGS",style: TextStyle(fontWeight: FontWeight.bold )),
                        Text("Learn about their behaviour,diet etc",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0 ),textAlign: TextAlign.center,)
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.arrow_forward_ios)
                    )
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Expanded(
                   flex: 2,
                  
                   child: Container(
                    height: 45.0,
                    
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(width: 0.5, color: Colors.grey)
                    ),
                    child: Center(child: Text('Wishlist', style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 18.0))),
                  ),
                 ),
              SizedBox(width: 10.0),
              Expanded(
                flex: 3,
                child: Container(
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  child: Center(child: Text('Schedule Visit', style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 18.0))),
                ),
                
              ),
            
               ]
              
            )
            
          ],
          
        ),
      ),
    );
  }
}