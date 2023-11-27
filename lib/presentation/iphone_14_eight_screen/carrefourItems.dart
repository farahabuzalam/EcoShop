import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:farah_s_ecoshop/modules/altModule.dart';
import 'package:farah_s_ecoshop/modules/itemModule.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_eight_screen/itemContainer.dart';
import 'package:flutter/material.dart';

class CarrefourItems extends StatefulWidget {

  CarrefourItems({Key? key})
      : super(
    key: key,
  );

  @override
  State<CarrefourItems> createState() => _CarrefourItemsState();

}

class _CarrefourItemsState extends State<CarrefourItems> {

  List<ItemModule> _itemsList = [];
  List<ItemModule> _spoonsAlts = [];
  List<ItemModule> _bottleAlts =[];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    _spoonsAlts.add(ItemModule(carbonFootprint: 1,
        name: "Preserve Spoons",
        image: "https://m.media-amazon.com/images/I/61q6r9xLjVS.jpg",
        price: 14));

    _bottleAlts.add(ItemModule(carbonFootprint: 2,
        name: "Reusable Water Bottle",
        image: "https://m.media-amazon.com/images/I/71dKrjHj8dL._AC_UF1000,1000_QL80_.jpg",
        price: 12));

    _bottleAlts.add(ItemModule(carbonFootprint: 1.75,
        name: "Bambaw Water Bottle",
        image: "https://m.media-amazon.com/images/I/71dS3hQUQ7L._AC_UF1000,1000_QL80_.jpg",
        price: 17));
    

    _itemsList.add(ItemModule(carbonFootprint: 5,
        name: "Falcon Plastic Spoons",
        image: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRMtYRqb23kWuYrlFCf4WzuqLhgz5WPL7yl4X39RTJbGQbePGWv6mMHVfQF_833z55DKcw6ow3h1pqfxXUub9RdGIKb8hb-CBG6-Z7MYTsM4R5mUZrGGhtJTW9RCxbNup6dxxVrFQ&usqp=CAc",
        price: 10,
        alternatives: _spoonsAlts));

    _itemsList.add(ItemModule(carbonFootprint: 5,
        name: "Masafi Bottled Drinking Water",
        image: "https://www.luluhypermarket.com/cdn-cgi/image/f=auto/medias/5499-02.jpg-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wxNjU2MjV8aW1hZ2UvanBlZ3xhREV4TDJneU9TOHhNemt5TVRrd05URTBOemt6TkM4MU5EazVMVEF5TG1wd1oxOHhNakF3VjNneE1qQXdTQXw0NDMyOGMwMzM5OTlhMmYwYWMwYzkxNzNmZGIyZTU1NGVkNTViYTk5YzgxNTUzODE5MDNmOGY1NTdlOTUwYjIx",
        price: 2,
        alternatives: _bottleAlts));



  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


        body: SizedBox(

          child: Column(
            children: [

              SizedBox(height: 23.v),
              _verticalList(_itemsList),
              Spacer(),

              SizedBox(height: 6.v),

              CustomImageView(
                imagePath: ImageConstant.imgCompanyLogo1,
                height: 60.v,
                width: 225.h,
              ),
              SizedBox(height: 26.v),
            ],
          ),
        ),
      ),
    );

  }


  _verticalList(List<ItemModule> list) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: list.map((e) => ItemContainer(item: e)).toList(),
      ),
    );
  }


}

