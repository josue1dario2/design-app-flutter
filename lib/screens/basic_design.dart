import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/image.jpg'),),
          Title(),
          BottomSection(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text(
                'Un texto es una composición de signos codificados en un sistema de escritura que forma una unidad de sentido. También es una composición de caracteres imprimibles generados por un algoritmo de cifrado que, aunque no tienen sentido para cualquier persona, sí puede ser descifrado por su destinatario original.Un texto es una composición de signos codificados en un sistema de escritura que forma una unidad de sentido. También es una composición de caracteres imprimibles generados por un algoritmo de cifrado que, aunque no tienen sentido para cualquier persona, sí puede ser descifrado por su destinatario original. ',
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground',style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Kandersteg, Switzerland',style: TextStyle(color: Colors.black45),)
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star,color: Colors.red,),
          Text('41'),
        ],
      ),
    );
  }
}

class BottomSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(icon:Icons.local_phone,text:'CALL'),
          CustomButton(icon:Icons.assistant_navigation,text:'ROUTE'),
          CustomButton(icon:Icons.share,text:'SHARE'),

        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton(
      {Key? key,
        required this.text,
        required this.icon})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon,color: Colors.lightBlue,size: 30,),
        Text('$text',style: TextStyle(color: Colors.lightBlue),)
      ],
    );
  }
}

