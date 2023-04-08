import 'package:flutter/widgets.dart';

import 'app_styles.dart';
import 'colors.dart';

extension WidgetX on Widget {
  Padding px(double padding) => Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: this,
      );

  Padding py(double padding) => Padding(
        padding: EdgeInsets.symmetric(vertical: padding),
        child: this,
      );

  Padding pOnly({
    double top = 0,
    double right = 0,
    double bottom = 0,
    double left = 0,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          top: top,
          right: right,
          bottom: bottom,
          left: left,
        ),
        child: this,
      );

  Padding pad(double value) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );

  Align get centerLeft => Align(
        child: this,
        alignment: Alignment.centerLeft,
      );

  SliverToBoxAdapter get toSliverBox => SliverToBoxAdapter(child: this);

  Expanded expanded({int flex = 1}) => Expanded(
        child: this,
        flex: flex,
      );
}

extension TextStyleX on TextStyle {
  TextStyle get eveleth => copyWith(fontFamily: 'Eveleth');

  TextStyle get rubik => copyWith(fontFamily: 'Rubik');

  //colors
  TextStyle get primary => copyWith(color: AppColor.appColor);

  TextStyle get red => copyWith(color: AppColor.appColor);

  TextStyle get white => copyWith(color: AppColor.whiteColor);

  TextStyle lineHeight(double value) => copyWith(height: value / fontSize!);

  TextStyle spacing(double value) =>
      copyWith(letterSpacing: calculateSpacing(value));
}
