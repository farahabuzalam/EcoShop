import 'package:farah_s_ecoshop/presentation/iphone_14_eight_screen/itemContainer.dart';
import 'package:flutter/material.dart';

import '../../globalVariables.dart';

class Iphone14SevenScreen extends StatefulWidget {


  Iphone14SevenScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14SevenScreen> createState() => _Iphone14SevenScreenState();
}

class _Iphone14SevenScreenState extends State<Iphone14SevenScreen> {
  @override

  double _limit= GlobalVariables.cartList.length * 2;

  _calculateTotal() {
    double total = 0;

    GlobalVariables.cartList.forEach((element) {

      total += element.item.count !=null? element.item.price * element.item.count!: 0.0;
    });



      return total;
  }

  _calculateCFTotal() async {
    double total = 0;

    GlobalVariables.cartList.forEach((element) {

      total += element.item.count !=null? element.item.carbonFootprint * element.item.count!: 0.0;
    });


    /*  int discountPerc = _applyCode();
    if (_validate)
      return total - (discountPerc*total)/100;
    else*/

    await Future.delayed(Duration.zero, () {
      if(total > _limit)
      _showAlert("Carbon Footprint Excceds The Recommended Limit!", "The recommended level is: "+ '${_limit}');
      else
        _showAlert("Carbon Footprint is within Limits", "Proceed with shopping");
    });

    return total;
  }


  _showAlert(title, description){
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title),
        content:  Text(description),

      ),
    );
  }



  bool _validate = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

          children: [

            SizedBox(height: 20,),
          Padding(
          padding:  EdgeInsets.all(10),
          child: Row(children: [
            Text(
              'Your cart',
              style: TextStyle(fontSize: 20),
            ),
            Spacer(),
            Text(
              'items: ' + GlobalVariables.cartList.length.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ]),
        ),
        Flexible(
            child: ListView(
                padding: EdgeInsets.all(10),
                children: GlobalVariables.cartList
                    .map((e) => ItemContainer(
                    item: e.item, ))
                    .toList())),
        Container(
            padding: EdgeInsets.all(10),
            child:

              Column(
                children: [
                  Row(
                    children: [
                      Text('Total Price: ', style: TextStyle(fontSize: 20)),
                      Spacer(),
                      Text(_calculateTotal().toString(),
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  Row(
                 children: [  Text('Total Carbon Footprint: ', style: TextStyle(fontSize: 20)),
                  Spacer(),

        FutureBuilder<dynamic>(
        future: _calculateCFTotal(),
    builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
    // Display a loading indicator while waiting for the result
    return CircularProgressIndicator();
    } else if (snapshot.hasError) {
    // Handle any errors that occurred
    return Text('Error: ${snapshot.error}');
    } else {
    // Display the result
    return Text('${snapshot.data}',
    style: TextStyle(fontSize: 20));


    }
        })],
              ),
              ]),
    )]

      ),
    );
  }

  _setState() {
    setState(() {});
  }

  /*int _applyCode() {
    int perc = 0;
    setState(() {
      for (PromoCode element in promoCodes) {
        if(myController.text == element.code)
        {
          _validate = true;
          perc = element.perc;
          break;
        }

      };
      //myController.text == _code ? _validate = true : _validate = false;
    });
    return perc;
  }*/


}


