import 'package:disenos/src/provider/menu_provider.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatelessWidget {
  //const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo diseños'),
      ),

      body: CrearBody(),
    );
  }
}

class CrearBody extends StatelessWidget {
  //const CrearBody({ Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: menuProvider.cargarMenu(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {

        return ListView(
           children: _listaItems(snapshot.data, context)
           //children:[crearOpciones(data: [snapshot.data],)] 
            
        );


        },

    );
  }
}

List<Widget> _listaItems(List<dynamic>? data,BuildContext context) {
    
    final List<Widget> opciones = [];

    data?.forEach((element) {

      final widgetTemp = ListTile(
        title: Text(element['texto']),
        //leading: getIcon(element['icon']),
        trailing:  Icon(Icons.keyboard_arrow_right),
        onTap: (){

            Navigator.pushNamed(context, element['ruta']);
        },
      
      );

      opciones..add(widgetTemp)
              ..add(Divider()); 

    });

     return opciones;   

  }


/*class crearOpciones extends StatelessWidget {

  final List<dynamic> data;

  const crearOpciones({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) { 

    final List<Widget> opciones = [];

    this.data.forEach((json){

        final opcMenu = ListTile(
          title: Text(json['texto']),
          //leading:
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){
            Navigator.pushNamed(context, json['ruta']);
          }, 
        );

      opciones..add(opcMenu)
              ..add(Divider());
    });

    return Column(
        children: opciones,
    );
  }
}*/