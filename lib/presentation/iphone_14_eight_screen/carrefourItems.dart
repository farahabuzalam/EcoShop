import 'package:farah_s_ecoshop/core/app_export.dart';
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


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _itemsList.add(ItemModule(carbonFootprint: 5, name: "Falcon Plastic Spoons", image: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRMtYRqb23kWuYrlFCf4WzuqLhgz5WPL7yl4X39RTJbGQbePGWv6mMHVfQF_833z55DKcw6ow3h1pqfxXUub9RdGIKb8hb-CBG6-Z7MYTsM4R5mUZrGGhtJTW9RCxbNup6dxxVrFQ&usqp=CAc", price: 10));


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
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Total Carbon Footprint        ",
                      style: CustomTextStyles.titleLargeOnErrorContainer,
                    ),
                    TextSpan(
                      text: "5g CO2e",
                      style: theme.textTheme.titleLarge,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 6.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Recommended Level      ",
                      style: CustomTextStyles.titleLargeOnErrorContainer,
                    ),
                    TextSpan(
                      text: "   20g CO2e",
                      style: theme.textTheme.titleLarge,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 22.v),
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

