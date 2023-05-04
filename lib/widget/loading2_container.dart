import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loading2Container extends StatelessWidget {
  final Widget child;
  final bool isLoading;
  final bool cover;

  const Loading2Container({Key key, this.isLoading, this.child, this.cover = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (cover) {
      return Stack(
        children: [child, isLoading ? _loadingView : Container()],
      );
    } else {
      return isLoading ? _loadingView : child;
    }
  }

  Widget get _loadingView {
    return Center(child: Lottie.asset('assets/loading.json'));
  }
}
