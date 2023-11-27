import 'package:farah_s_ecoshop/core/utils/image_constant.dart';
import 'package:farah_s_ecoshop/core/utils/size_utils.dart';
import 'package:farah_s_ecoshop/globalVariables.dart';
import 'package:farah_s_ecoshop/modules/cartListModule.dart';
import 'package:farah_s_ecoshop/modules/itemModule.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_eight_screen/altContainer.dart';
import 'package:farah_s_ecoshop/presentation/iphone_14_eight_screen/itemContainer.dart';
import 'package:farah_s_ecoshop/theme/app_decoration.dart';
import 'package:farah_s_ecoshop/theme/custom_button_style.dart';
import 'package:farah_s_ecoshop/theme/custom_text_style.dart';
import 'package:farah_s_ecoshop/theme/theme_helper.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/custom_app_bar.dart';
import 'package:farah_s_ecoshop/widgets/custom_icon_button.dart';
import 'package:farah_s_ecoshop/widgets/custom_image_view.dart';
import 'package:farah_s_ecoshop/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  ItemModule item;
  DetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    // TODO: implement initState
    if (widget.item.count != null)
      _count = widget.item.count!;
    super.initState();
  }
  int _count = 1;
  //int cartItems = 0;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildTwelve(context),
                Column(
                  children: [
                    Container(
                      height: 16.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: appTheme.gray900,
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.black900.withOpacity(0.25),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(
                              5,
                              5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 22.h),
                        child: Text(
                          "Falcon Plastic Spoons",
                          style: CustomTextStyles
                              .headlineLargePoppinsBlack900SemiBold,
                        ),
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [Text(widget.item.name, style: CustomTextStyles.titleLargeRegular,),
                          Spacer(),
                          Text('${widget.item.price}'+" AED", style: CustomTextStyles.titleLargeRegular,)],
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [Text("Carbon Footprint", style: CustomTextStyles.titleLargeRegular,),
                          Spacer(),
                          Text('${widget.item.carbonFootprint}'+"g CO2e", style: CustomTextStyles.titleLargeRegular,)],
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Container(
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

                    SizedBox(height: 25.v),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          "Eco-friendly Alternative",
                          style: CustomTextStyles.headlineSmallPrimaryContainer,
                        ),
                      ),
                    ),
                    SizedBox(height: 18.v),

                    _verticalList(widget.item.alternatives!),

                    SizedBox(height: 18.v),

                    CustomImageView(
                      imagePath: ImageConstant.imgCompanyLogo1,
                      height: 60.v,
                      width: 225.h,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );



  }


  Widget _buildTwelve(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(vertical: 22.v),
      decoration: AppDecoration.fillGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 6.v),
          CustomAppBar(
            height: 36.v,
            centerTitle: true,
            title: Column(
              children: [
                Row(
                  children: [
                    AppbarSubtitleFour(
                      text: "Partnered Shops",
                      margin: EdgeInsets.only(top: 2.v),
                    ),
                    AppbarSubtitleFour(
                      text: "Carrefour",
                      margin: EdgeInsets.only(
                        left: 82.h,
                        bottom: 2.v,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 170.h,
                      child: Divider(),
                    ),
                    SizedBox(
                      width: 174.h,
                      child: Divider(
                        indent: 74.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 22.v),
          Image.network(
            widget.item.image,
            fit: BoxFit.cover,
            height: 150,

          )

        ],
      ),
    );
  }


  _icon(icon, Function() press) {
    return Container(
      height: 40,
      width: 40,
      margin: EdgeInsets.symmetric(horizontal:20),
      decoration:
      BoxDecoration(shape: BoxShape.circle, color: Colors.green),
      child: IconButton(
        onPressed: press,
        icon: Icon(
          icon,
          color: Colors.white,
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

  _addToCart()
  {

      bool update = false;

      for(var c in GlobalVariables.cartList)
      {
        if(c.item.name == widget.item.name)
          update = true;
      }


      widget.item.count = _count;



      if (!update)
      {
        GlobalVariables.cartList.add(CartListModule(item: widget.item));

      }


      Navigator.pop(context, );




  }

  _verticalList(List<ItemModule> list) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: list.map((e) => AltContainer(item: e)).toList(),
      ),
    );
  }


}



