import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hi_base/color.dart';

/// 墨水瓶（`InkWell`）可用时使用的字体样式。
final Color _availableStyle = primary;

/// 墨水瓶（`InkWell`）不可用时使用的样式。
final Color _unavailableStyle = Colors.grey;

class LoginFormCode extends StatefulWidget {
  /// 倒计时的秒数，默认60秒。
  final int countdown;
  /// 用户点击时的回调函数。
  final Function onTapCallback;
  /// 是否可以获取验证码，默认为`false`。
  final bool available;

  LoginFormCode({
    this.countdown: 60,
    this.onTapCallback,
    this.available: false,
  });

  @override
  _LoginFormCodeState createState() => _LoginFormCodeState();
}

class _LoginFormCodeState extends State<LoginFormCode> {
  /// 倒计时的计时器。
  Timer _timer;
  /// 当前倒计时的秒数。
  int _seconds;
  /// 当前墨水瓶（`InkWell`）的字体样式。
  Color inkWellStyle = _availableStyle;
  /// 当前墨水瓶（`InkWell`）的文本。
  String _verifyStr = '获取验证码';

  @override
  void initState() {
    super.initState();
    _seconds = widget.countdown;
  }

  /// 启动倒计时的计时器。
  void _startTimer() {
    // 计时器（`Timer`）组件的定期（`periodic`）构造函数，创建一个新的重复计时器。
    _timer = Timer.periodic(
        Duration(seconds: 1),
            (timer) {
          if (_seconds == 0) {
            _cancelTimer();
            _seconds = widget.countdown;
            inkWellStyle = _availableStyle;
            setState(() {});
            return;
          }
          _seconds--;
          _verifyStr = '已发送$_seconds'+'s';
          setState(() {});
          if (_seconds == 0) {
            _verifyStr = '重新发送';
          }
        });
  }

  /// 取消倒计时的计时器。
  void _cancelTimer() {
    // 计时器（`Timer`）组件的取消（`cancel`）方法，取消计时器。
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    // 墨水瓶（`InkWell`）组件，响应触摸的矩形区域。
    return widget.available ? InkWell(
      child: Container(
        height: 52,
        alignment: Alignment.center,
        color: inkWellStyle,
        child: Text(
          '  $_verifyStr  ',
          style: const TextStyle(color: Colors.white, fontSize: 13),
        ),
      ),
      onTap: (_seconds == widget.countdown) ? () async {
        var isSuccess = await widget.onTapCallback();
        print("isSuccess:$isSuccess");
        if (isSuccess) {
          _startTimer();
          inkWellStyle = _unavailableStyle;
          _verifyStr = '已发送$_seconds' + 's';
          setState(() {});
        }
      } : null,
    ): InkWell(
      child: Container(
          height: 52,
          alignment: Alignment.center,
          color: primary,
          child: const Text(
            '  获取验证码  ',
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
      ));
  }
}