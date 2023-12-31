import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/common_form_field.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeHeaderForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Align(
        // 2 0.6
        alignment: const Alignment(-0.6, 0),
        child: Container(
          width: 420,
          //height: 100,
          // -1.0 1.0 범위 가짐
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
              child: Padding(
                padding: const EdgeInsets.all(gap_l),
                child: Column(
                  children: [
                    _buildFormTitle(),
                    _buildFormField(),
                    _buildFormSubmit(),
                  ],
                ),
              ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return Column(
      children: [
        Text("에어비엔비에서 숙소를 검색하세요", style: h4(),),
        const SizedBox(height: gap_xs,),
        Text("혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 '공간전체' 숙소까지 에어비엔비에 다 있습니다",
          style: body1(),
        ),
        const SizedBox(height: gap_m,),
      ],
    );
  }
  Widget _buildFormField() {
    return Column(
      children: [
        CommonFormField(prefixText: "위치", hintText: "근처 추천 장소"),
        const SizedBox(height: gap_s,),
        Row(
          children: [
            SizedBox(
              width: 180,
                child: CommonFormField(prefixText: "체크인", hintText: "날짜 입력"),
            ),
            const SizedBox(width: gap_xs,),
            Expanded(
              child: CommonFormField(prefixText: "체크 아웃", hintText: "날짜 입력"),
            ),
          ],
        ),

        const SizedBox(height: gap_s,),
        Row(
          children: [
            SizedBox(
              width: 180,
              child: CommonFormField(prefixText: "성인", hintText: "2"),
            ),
            const SizedBox(width: gap_xs,),
            Expanded(
              child: CommonFormField(prefixText: "어린이", hintText: "0"),
            ),
          ],
        ),
        const SizedBox(height: gap_m,),
      ],
    );
  }

  Widget _buildFormSubmit() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(onPressed: () {
        print("submit 클릭됨");
      },
        style: TextButton.styleFrom(
          backgroundColor: kAccentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
          child: Text("검색", style: subTitle1(mColor: Colors.white),),
      ),
    );
  }
}
