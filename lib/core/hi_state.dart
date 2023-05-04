import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

abstract class HiState<T extends StatefulWidget> extends State<T> {
  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    } else {
      print('HiState:页面已经销毁，本次setState不执行：${toString()}');
    }
  }

  @override
  void dispose() {
    EasyLoading.dismiss(animation: false);
    super.dispose();
  }
}
