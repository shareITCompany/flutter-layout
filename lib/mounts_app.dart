import 'package:flutter/material.dart';
import 'package:mounts_of_the_world/colors.dart';

import 'app_bottom_bar.dart';
import 'app_category_list.dart';
import 'app_header.dart';
import 'app_mount_listview.dart';
import 'app_search.dart';

class MountsApp extends StatelessWidget {
  const MountsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //Appbar는 아이콘과 action만 표시되도록 배경을 투명하게 설정합니다.
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Icon(
            Icons.terrain,
            color: mainColor,
            size: 40,
          ),
        ),
        actions: const [
          SizedBox(width: 40, height: 40),
        ],
        iconTheme: const IconThemeData(color: mainColor),
      ),
      // 네비게이션 드로어를 생성합니다.
      // 드로어는 화면 왼쪽에 있으며, 배경색은 애플리케이션의 기본 색상입니다.
      // 드로어의 왼쪽 하단 모서리에는 흰색의 80픽셀 크기의 아이콘이 있습니다.
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(30),
          color: mainColor,
          alignment: Alignment.bottomLeft,
          child: const Icon(
            Icons.terrain,
            color: Colors.white,
            size: 80,
          ),
        ),
      ),
      // 애플리케이션의 본문을 생성합니다.
      // 본문은 왼쪽 정렬이며, 다음 위젯으로 구성됩니다.
      // * AppHeader: 애플리케이션의 헤더입니다.
      // * AppSearch: 애플리케이션의 검색창입니다.
      // * AppMountListView: 애플리케이션의 목록 뷰입니다.
      // * AppCategoryList: 애플리케이션의 카테고리 목록입니다.
      // * AppBottomBar: 애플리케이션의 바닥글입니다.
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeader(),
          AppSearch(),
          Expanded(
            child: AppMountListView(),
          ),
          AppCategoryList(),
          AppBottomBar(),
        ],
      ),
    );
  }
}
