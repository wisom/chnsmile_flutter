import 'dart:convert' as convert;
import 'package:chnsmile_flutter/constant/hi_constant.dart';
import 'package:chnsmile_flutter/core/platform_response.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:hi_cache/hi_cache.dart';

class PlatformMethod {
  static const MethodChannel _channel = MethodChannel('com.icefire.chnsmile/api');

  static Future<PlatformResponse> invokeNativeMethod(
      {String method, Map param}) async {
    try {
      final response = await _channel.invokeMethod(method, param);
      print("response:" + response);
      Map<String, dynamic> data = convert.jsonDecode(response);
      return PlatformResponse.from(data);
    } on PlatformException catch (error, stackTrace) {
      print(error);
      return PlatformResponse.error(error, stackTrace,
          code: int.parse(error.code), msg: error.message);
    } catch (error, stackTrace) {
      print(error);
      return PlatformResponse.error(error, stackTrace);
    }
  }

  static void sentTriggerUnreadToNative() {
    BoostChannel.instance.sendEventToNative("triggerUnRead",{});
  }

  ///这里是一些通用的方法
  ///data: getUserAgent
  static Future<PlatformResponse> getUserAgent() async {
    return invokeNativeMethod(method: "getUserAgent");
  }

  ///data: UserInfo
  static Future<PlatformResponse> getUserInfo() async {
    return invokeNativeMethod(method: "getUserInfo");
  }

  ///data: logout
  static Future<PlatformResponse> logout() async {
    return invokeNativeMethod(method: "logout");
  }

  ///data: getProxy
  static Future<PlatformResponse> getProxy() async {
    return invokeNativeMethod(method: "getProxy");
  }
}