import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage("assets/landscape.jpg"),),

          //Title Section  
          Title(),

          //Button Section
          ButtonSection(),

          //Descripcion
          Container(
            margin: EdgeInsets.symmetric(horizontal:20,vertical: 10),
            child: Text('Proident nostrud dolore dolor adipisicing irure sint velit est ut. Elit qui pariatur aliqua qui. Sint laborum aute voluptate irure adipisicing amet velit cupidatat commodo fugiat enim esse. Ullamco aliquip fugiat veniam sit. Consequat ex labore veniam dolor dolore. Ad non commodo esse proident est aliquip fugiat pariatur aliqua.',textAlign: TextAlign.justify,),
            
            )

        ],
      )
   );
  }
}


class Title extends StatelessWidget {
  const Title({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      child: Row(
        children: [
        
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,    
            children:[
                  Text('Oeschinen Lake Campground',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45),)
            ]),

          Expanded(child: Container()),  

          Icon(Icons.star,color: Colors.red,),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          //1 Phone
          ButtonCustom(text: "CALL", iconButton:Icons.phone ,),
          //2 Route
          ButtonCustom(text: "ROUTE", iconButton:Icons.navigation ,),
          //3 Share
          ButtonCustom(text: "SHARE", iconButton:Icons.share ,),

          /* 
          Esto funciona pero es una mala practica, si se puede reutilizar el Widget Es mejor         
          //1 Phone
          Column(
            
            children: [
              Icon(Icons.phone,color: Colors.blue[200],),
              Padding(padding: EdgeInsets.symmetric(vertical: 3)),
              Text('CALL',style: TextStyle(color: Colors.blue[200]),)
            ],  
          ),
          //2 Route
          Column(
            children: [
              Icon(Icons.navigation,color: Colors.blue[200],),
              Padding(padding: EdgeInsets.symmetric(vertical: 3)),
              Text('ROUTE',style: TextStyle(color: Colors.blue[200]),)
            ],  
          ), 
          //3 SHARE
          Column(
            children: [
              Icon(Icons.share,color: Colors.blue[200],),
              Padding(padding: EdgeInsets.symmetric(vertical: 3)),
              Text('SHARE',style: TextStyle(color: Colors.blue[200]),)
            ],  
          ),
          */
        ],
      ),
    );
  }
}

class ButtonCustom extends StatelessWidget {

  final String text;
  final IconData iconButton;

  const ButtonCustom({Key? key,required this.text, required this.iconButton, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Icon(iconButton,color: Colors.blue[200],),
        Padding(padding: EdgeInsets.symmetric(vertical: 3)),
        Text(this.text, style: TextStyle(color: Colors.blue[200]),)
      ],  
    );
  }
}