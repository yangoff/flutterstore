import 'package:flutter/material.dart';

class DrawerTile  extends StatelessWidget {
  final IconData icon;
  final String text;
  final PageController control;
  final int page;

  DrawerTile(this.icon,this.text,this.control,this.page);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.of(context).pop();
          this.control.jumpToPage(page);
        },
        child: Container(
          height: 60.0,
          child: Row(
            children: <Widget>[
              Icon(icon,size: 32.0,color: control.page == page ? Theme.of(context).primaryColor : Colors.black ,),
              SizedBox(width: 32.0,),
              Text(text,style: TextStyle(fontSize: 16.0,color:control.page == page ? Theme.of(context).primaryColor : Colors.black ,),)
            ],
          ),
        ),
      ),
    );
  }
}
