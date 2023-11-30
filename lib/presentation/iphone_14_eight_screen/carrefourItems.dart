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
  List<ItemModule> _cleaningAlts =[];
  List<ItemModule> _towelsAlts =[];
  List<ItemModule> _shampooAlts =[];





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

    _cleaningAlts.add(ItemModule(carbonFootprint: 1.5,
        name: "Earth Choice Spray",
        image: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSWoyBoQtyyzX6vjqE-OGb-IAU6HZRScYI6YTh5VrzsjJ2BthZ7f5dIrmNhI3gC3K1yyTBfB5at0e5AOFaqCR70fdqXCBoEIh1x9LkJtsS_1XWYWt1Reanx&usqp=CAE",
        price: 20));

    _cleaningAlts.add(ItemModule(carbonFootprint: 3,
        name: "Pure Water Detergent",
        image: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQSduW8b9zJCi-cOycas8pfHebNiS8iwNsFvJHqokQwJmOcJPqxx_lKPHN4iu0EykTPTqkI4XocIPxt5KxmyszfysDnvtE7-BQGaHCh0RjOmevnRqQpqXyN4w&usqp=CAE",
        price: 17));

    _towelsAlts.add(ItemModule(carbonFootprint: 3,
        name: "Reusable Towels",
        image: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTGM3WqUd8nX-BzhwEdxxzwpQBJFUCTXuQ00-FUfZ-Xx1rzu9tik1gH3owbYryaDVQ3k5lv7cG9_k0nYXAx57NeQkdkgtT94LnDqI-4E3PZO79FA-UdaXvqWQ&usqp=CAE",
        price: 17));

    _shampooAlts.add(ItemModule(carbonFootprint: 3,
        name: "Organic Hair Shampoo",
        image: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSHkBD0e_CTUz0YkjmyvxEKrI6QiZtJ_C857MGcf-0ip1C-SI5dS0B11q0NfltFQUX1z1mwoPSLBVNZihu_CfltJBrC1teTVV0IfmBOCh53QGwGoe1Ynwqgqg&usqp=CAE",
        price: 23));

    _towelsAlts.add(ItemModule(carbonFootprint: 1,
        name: "Recycled Paper",
        image: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQl0rUmySa0C6nVd2Bkdcxe2vkNBjBxFajLiEsmKGR3cN36Z8jtM0B-dzCGKyfWaG-kNf-096a8gnoKYQOETumlkKeuxh-o4Qos9Ui4ZNG5vME-iz-LycLoKQ&usqp=CAE",
        price: 13));
    

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

    _itemsList.add(ItemModule(carbonFootprint: 2.3,
        name: "Clorox Bleach Liquid",
        image: "https://cdnprod.mafretailproxy.com/sys-master-root/h5d/had/48116626817054/1700Wx1700H_1101_main.jpg",
        price: 15,
        alternatives: _cleaningAlts));

    _itemsList.add(ItemModule(carbonFootprint: 7,
        name: "Scott Paper Towels",
        image: "https://m.media-amazon.com/images/I/91RAiHu9M6L.jpg",
        price: 2,
        alternatives: _towelsAlts));

    _itemsList.add(ItemModule(carbonFootprint: 10,
        name: "TRESemme Shampoo",
        image: "https://m.media-amazon.com/images/I/61G2dDBEGTL.jpg",
        price: 25,
        alternatives: _shampooAlts));


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
         children: [

           SizedBox(height:60),
           _verticalList(_itemsList),

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

