import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenAdaperUtil {
  static init(context) {
    ScreenUtil.init(context,
        width: 1500, height: 1334, allowFontScaling: false);
  }

  static height(double value) {
    return ScreenUtil().setHeight(value);
  }

  static width(double value) {
    return ScreenUtil().setWidth(value);
  }

  static getScreenHeight() {
    return ScreenUtil.screenHeightDp;
  }

  static getScreenWidth() {
    return ScreenUtil.screenWidthDp;
  }
  // ScreenUtil.screenHeight
}

// ScreenAdaper
