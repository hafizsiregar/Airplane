import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/theme/theme.dart';
import 'package:airplane/ui/pages/home/home_page.dart';
import 'package:airplane/ui/pages/setting/setting_page.dart';
import 'package:airplane/ui/pages/transaction/transaction_page.dart';
import 'package:airplane/ui/pages/wallet/wallet_page.dart';
import 'package:airplane/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
              bottom: 30, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
              color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CustomBottomNavigationItem(
                imgUrl: 'images/ic_home.png',
                index: 0,
              ),
              CustomBottomNavigationItem(
                imgUrl: 'images/ic_booking.png',
                index: 1,
              ),
              CustomBottomNavigationItem(
                imgUrl: 'images/ic_card.png',
                index: 2,
              ),
              CustomBottomNavigationItem(
                imgUrl: 'images/ic_setting.png',
                index: 3,
              ),
            ],
          ),
        ),
      );
    }

    Widget buildContent(int currentIndex) {

      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingPage();    
        default:
          return HomePage();
      }
    }
  
    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(
            children: <Widget>[
              buildContent(currentIndex),
              customBottomNavigation()
            ],
          ),
        );
      },
    );
  }
}
