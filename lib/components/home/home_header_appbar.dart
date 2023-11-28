
import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeHeaderAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          const Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  Widget _buildAppBarLogo() {
    return Row(
      children: [
        Image.asset("assets/logo.png",
          width: 30, 
          height: 30, 
          color: kAccentColor,
        ),
        const SizedBox(width: gap_s,),
        Text("airbnb", style: h5(mColor: Colors.white),),
      ],
    );
  }

  Widget _buildAppBarMenu() {
    return Row(
      children: [
        _header_textButton('회원가입'),
        SizedBox(width: gap_m,),
        _header_textButton('로그인'),
      ],
    );
  }

  TextButton _header_textButton(String data) {
    return TextButton(
          onPressed: () {},
          child: Text(data, style: subTitle1(mColor: Colors.white),),
      );
  }
}
