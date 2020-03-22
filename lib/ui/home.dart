import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          padding:EdgeInsets.only(top:20.0,left:20.0),
      alignment: Alignment.center,
      color: Colors.lime,
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Expanded(
                child: Text(
              "Margharetia",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 20.0,
                decoration: TextDecoration.none,
                fontFamily: 'Gudea',
                
              ),
            )),
            Expanded(
                child: buildText("Tomata, Basil, Pepper", 20.0, "Gudea")),
          ]),
          Row(children: <Widget>[
            Expanded(
                child: Text(
              "Ginogyt",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 20.0,
                decoration: TextDecoration.none,
                fontFamily: 'Gudea',
                fontWeight: FontWeight.bold,
              ),
            )),
            Expanded(
                child: Text(
              "Tomata, Garlic",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 20.0,
                decoration: TextDecoration.none,
                fontFamily: 'Gudea',
                fontWeight: FontWeight.bold,
              ),
            )),
          ]),
          PizzaImageWidget(),
          OrderButton(),
        ],
      ),
    ));
  }

  Text buildText(String text, double fSize, String family ) {
    return Text(
            text,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: fSize,
              decoration: TextDecoration.none,
              fontFamily: family,
              fontWeight: FontWeight.bold,
            ),
          );
  }
}

class PizzaImageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza.png');
    Image image = Image(image:pizzaAsset, width:10.0, height:10.0,);
    return Container(child:image);
  }
  
}


class OrderButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin:EdgeInsets.only(top:50.0),
      child:RaisedButton(
        child:Text("Order your Pizza!"),
        color:Colors.deepOrangeAccent ,
        elevation:5.0,
        onPressed: (){
          order(context);
                  },
                  )
                
                );
                return button; 

            }
          
            void order(BuildContext context) {
              var alert = AlertDialog(
                title:Text("Order completed"),
                content:Text("Thanks for your order!!! :-), Now place another order")
              );
              showDialog(context: context,
              builder: (BuildContext context)=> alert);


            }

}