import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/components/views/my_wallet/transactions_item.dart';
import 'package:movie_app/constants/constants.dart';
import 'package:movie_app/theme/app_styles.dart';

import '../../materials/app_colors.dart';
import 'card_my_wallet.dart';

class MyWalletScreen extends StatefulWidget {
  const MyWalletScreen({super.key});

  @override
  State<MyWalletScreen> createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen> {

  final ScrollController _scrollController = ScrollController();
  bool showbtn = false;
  @override
  void initState() {
    _scrollController.addListener(() { //scroll listener
      double showoffset = 10.0; //Back to top botton will show on scroll offset 10.0

      if(_scrollController.offset > showoffset){
        showbtn = true;
        setState(() {
          //update state
        });
      }else{
        showbtn = false;
        setState(() {
          //update state
        });
      }
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const fakeData = Constants.fakeDataMyWallet;
    return Scaffold(
        floatingActionButton: AnimatedOpacity(
          duration: const Duration(milliseconds: 1000),  //show/hide animation
          opacity: showbtn?1.0:0.0, //set obacity to 1 on visible, or hide
          child: FloatingActionButton(
            onPressed: () {
              _scrollController.animateTo( //go to top of scroll
                  0,  //scroll offset to go
                  duration: const Duration(milliseconds: 500), //duration of scroll
                  curve:Curves.fastOutSlowIn //scroll type
              );
            },
            backgroundColor: Colors.redAccent,
            child: const Icon(Icons.arrow_upward),
          ),
        ),
        body: SafeArea(
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.1,
                padding: EdgeInsets.only(bottom: 20.h),
                child: Center(
                  child: Text("My Wallet", style: AppStyle.textSize24Font600),
                ),
              ),
              CardMyWallet(size: size),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Text("Recent Transactions", style: AppStyle.textSize18Font500),
              ),
              ListView.builder(itemBuilder: (context, index) {
                return TransactionsItem(
                  size: size,
                  imageUrl: (fakeData[index] as Map )["imageUrl"],
                  movieName: (fakeData[index] as Map )["movieName"],
                  date: (fakeData[index] as Map)["movieDate"],
                  price: (fakeData[index] as Map )["price"],
                );
              },
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: fakeData.length,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

