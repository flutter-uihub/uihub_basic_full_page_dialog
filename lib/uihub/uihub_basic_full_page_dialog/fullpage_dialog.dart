import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'fullpage_dialog_view.dart';


void NewFullScreenPopup(BuildContext context) async {
  await showGeneralDialog(
    barrierDismissible: true, // 바깥 영역 터치 시 닫기
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.black54, // 배경 투명도 조정
    transitionDuration: Duration(milliseconds: 200), // 팝업 등장/사라짐 애니메이션
    context: context,
    pageBuilder: (context, animation, secondaryAnimation) {
      return Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.transparent, // 배경 투명
          child: NewView() // NewView를 전체 화면 팝업에 사용
              .backgroundColor(Theme.of(context).colorScheme.background),
        ),
      );
    },
    transitionBuilder: (context, a1, a2, widget) {
      return FadeTransition(
        opacity: CurvedAnimation(parent: a1, curve: Curves.easeInOut), // 페이드 인/아웃 애니메이션
        child: widget,
      );
    },
  );
}
