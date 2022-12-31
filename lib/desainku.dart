import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smstorerisa/productdua.dart';
import 'package:smstorerisa/productsatu.dart';
import 'package:smstorerisa/producttiga.dart';
import 'package:smstorerisa/productempat.dart';

class DesainKu extends StatelessWidget {
  const DesainKu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NCTZEN STORE', 
        style: TextStyle(color: Colors.lightGreen, fontWeight: FontWeight.w900, fontSize: 25),),
        toolbarHeight: 80,
      centerTitle: true,
      leading: Icon(Icons.home, color: Colors.lightGreen, size: 30,),
      actions: <Widget>[
      IconButton(icon: new Icon(Icons.shopping_bag, color: Colors.lightGreen, size: 30,), onPressed: (){},
      ), 
    ButtonBar()
    ], 
      
    flexibleSpace: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
        Colors.white,
        Colors.white
      ])          
    ),
  ),     
      ),
      body: 
      ListView(
        children: [
          Container(height: 80),
          Container(
            height: 100,
            child: Card(
            color: Colors.white,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Productsatu()));
                    },
                    child: Image.asset("img/p1.png", width: 100, height: 100,)),
                  Expanded(child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        Text('Lightstick & Album', style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w800,
                          ), 
                          ), 
                      ], 
                    ),
                  )),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            child: Card(
            color: Colors.white,
            child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Productdua(),));
                    },
                    child: Image.asset('img/p3.png', width: 90, height: 100,)),
                  Expanded(child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Hats', style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w800,
                          ),),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            child: Card(
              color: Colors.white,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Producttiga(),));
                    },
                    child: Image.asset('img/p2.png', width: 100, height: 100,)),
                  Expanded(child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('T-shirt  & Hoddie', style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w800,
                          ),),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            child: Card(
              color: Colors.white,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Productempat(),));
                    },
                    child: Image.asset('img/p4.png', width: 80, height: 100,)),
                  Expanded(child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Photocard & Accsesories', style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w800,
                          ),),
                      ],
                    ),
                  )
                  ),
                ],
              ),
            ),
          ),
         ]),
      );
  }
}