import 'package:flutter/material.dart';

import 'colors.dart';
import 'mounts_app.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 2초 후에 애플리케이션의 메인 페이지로 이동하는 명령어 입니다
    Future.delayed(
      const Duration(seconds: 2),
      () {
        //현재 보여주고 있는 화면을 지정한 화면으로 교체합니다.
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const MountsApp(),
            ));
      },
    );

    return Container(
      color: mainColor,
      //Align 위젯을 서로 겹칠 수 있도록 Stack으로 구성해줍니다.
      child: Stack(
        children: [
          //바탕이 될 수 있는 배경을 Align위젯으로 감싸 자식 위젯을 정렬해줍니다.
          const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.terrain,
              color: Colors.white,
              size: 90,
            ),
          ),
          //로딩 바를 하단 중앙에 위치시키고 애니메이션이 동작하도록합니다.
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 80),
              child: const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
