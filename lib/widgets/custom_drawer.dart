import 'package:flutter/material.dart';
import 'package:loja_virtual/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  final PageController control;

  CustomDrawer(this.control);

  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 226, 115, 130), Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        );
    return Drawer(
      child: Stack(
        children: <Widget>[
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 170,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Text(
                        "Flutters\nBrusinhas",
                        style: TextStyle(
                            fontSize: 34.0, fontWeight: FontWeight.bold),
                      ),
                      top: 8.0,
                      left: 0.0,
                    ),
                    Positioned(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Olá,",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap:(){

                            } ,
                            child: Text("Entre ou cadastre-se >",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold
                                )),
                          )
                        ],
                      ),
                      bottom: 0.0,
                      left: 0.0,
                    )
                  ],
                ),
              ),
              Divider(),
              DrawerTile(Icons.home,"Inicio",control,0),
              DrawerTile(Icons.list,"Produtos",control,1),
              DrawerTile(Icons.location_on,"Lojas",control,2),
              DrawerTile(Icons.playlist_add_check,"Meus Pedidos",control,3),
            ],
          )
        ],
      ),
    );
  }
}
