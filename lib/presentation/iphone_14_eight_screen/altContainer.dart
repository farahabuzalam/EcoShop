import 'package:farah_s_ecoshop/globalVariables.dart';
import 'package:farah_s_ecoshop/modules/cartListModule.dart';
import 'package:farah_s_ecoshop/modules/itemModule.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_eight_screen/detailsScreen.dart';
import 'package:flutter/material.dart';


class AltContainer extends StatefulWidget {


  ItemModule item;

  AltContainer(
      {Key? key,
        required this.item,
      })
      : super(key: key);

  @override
  State<AltContainer> createState() => _AltContainerState();
}

class _AltContainerState extends State<AltContainer> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(var v in GlobalVariables.cartList){
      if(widget.item .name == v.item.name)
        widget.item.count = v.item.count;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
          ),
          padding: EdgeInsets.symmetric(
              vertical: 10, horizontal: 10),

          child: Row(
              children:[

                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.network(
                    widget.item.image,
                    fit: BoxFit.cover,
                    height: 150,

                  ),
                ),
                SizedBox(
                  width:20,
                ),

                Column(
                    children:[
                      Text(
                        widget.item.name,
                        style: TextStyle(color: Colors.black),
                      ),

                      Row(
                        children: [
                          Text(
                            "Price ",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            '${widget.item.price}' + "AED",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Text(
                            "Carbon Footprint",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            '${widget.item.carbonFootprint}'+"g CO2e",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),

                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          //color: AppColor.black.withOpacity(0.1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              widget.item.count == null
                                  ? SizedBox()
                                  : _icon(Icons.remove, () => _minimise()),
                              widget.item.count == null
                                  ? SizedBox()
                                  : Text(
                                widget.item.count.toString(),
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.red,
                                    backgroundColor:
                                    Colors.white.withOpacity(0.3)),
                              ),
                              _icon(Icons.add, () => _add()),
                            ],
                          ),
                        ),
                      ),

                    ]
                )

              ]
          )
      ),

      onTap:()=> Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  DetailScreen(item: widget.item))).then((value) => setState((){})),

    );
  }

  _icon(icon, Function() press) {
    return Container(
      height: 40,
      width: 40,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration:
      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
      child: IconButton(
        onPressed: press,
        icon: Icon(
          icon,
          color: Colors.black,
          size: 25,
        ),
      ),
    );
  }

  _add() {

    setState(() async {
      widget.item.count == null
          ? widget.item.count = 1
          : widget.item.count = (widget.item.count! + 1);

      print(widget.item.count.toString());

      bool update = false;
      for(var c in GlobalVariables.cartList)
      {
        if(c.item.name == widget.item.name)
          update = true;
      }


      if (!update) {
        GlobalVariables.cartList.add(CartListModule(item: widget.item));
      }
      else{
        for(var c in GlobalVariables.cartList)
        {
          if(c.item.name == widget.item.name)
            c.item.count = widget.item.count;
        }
      }

      setState(() {

      });

    }

    );

  }

  _minimise() {
    setState(() {

      widget.item.count == 1
          ? widget.item.count = null
          : widget.item.count = (widget.item.count! - 1);


      if(widget.item.count == null)
        GlobalVariables.cartList.removeWhere((element) => element.item.name == widget.item.name);

      print(GlobalVariables.cartList.length.toString());



      setState(() {

      });
    });
  }



}
