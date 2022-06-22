import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigationItem extends StatelessWidget {

  final String imgUrl;
  final int index;

  const CustomBottomNavigationItem({
    Key? key, 
    required this.imgUrl,
    required this.index,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(),
          Image.asset(
            imgUrl,
            width: 24,
            height: 24,
            color:  context.read<PageCubit>().state == index ? 
                kPrimaryColor : kGreyColor, 
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
                color:  context.read<PageCubit>().state == index ? 
                kPrimaryColor : kTransparentColor, 
                borderRadius: BorderRadius.circular(18)),
          ),
        ],
      ),
    );
  }
}
