
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget> [
          Card(
            child: Container(
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                      left: 10,

                      child: Material(

                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 18,
                          ),

                        ),
                      )
                  ),
                  Positioned(
                    top: 25,
                      left: 100,
                      child:
                      Container(
                        height: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(" Manoel Haim",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                            ),
                            Text("postado as 08:06",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.cyanAccent,
                            ),
                            ),
                            Divider(color: Colors.black,)
                          ],
                        ),
                      ),

                  ),

                  Positioned(
                    top: 70,
                    width: 400,


                    child: Card(
                      elevation: 0,
                      shadowColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Image.asset('assets/bnw.jpg',
                      fit: BoxFit.fill,
                      ),

                    ),
                  ),


                ],

              ),

              ),

            ),
      ]
      ),


      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Minha rede de parcerias",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
            color: Colors.green,
          )
        ],
        leading: CircleAvatar(
          backgroundColor: Colors.black,
          radius: 10,
        ),

      ),

      bottomNavigationBar: GNav(
        tabs: const [
          GButton(icon: Icons.monetization_on,
          text: "Custos",
          ),
          GButton(icon: Icons.house,
          text: "cooperativa",
          ),
          GButton(icon: Icons.agriculture,
            text: "Maquinas",),
          GButton(icon: Icons.people,
          text: "comunidade",)
        ],
      ),
    );
  }
}
