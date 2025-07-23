import 'package:flutter/material.dart';

class Dimens {
  static const double standardEdgesInset = 12.0;
  static const double smallEdgesInset = 10.0;
  static const double extraSmallEdgesInsets = 5.0;
  static const double mediumEdgesInset = 15.0;
  static const double largeEdgesInset = 20.0;
  static const double extraLargeEdgesInset = 50.0;

  EdgeInsets get standardEdgestInset =>
      EdgeInsets.all(Dimens.standardEdgesInset);

  EdgeInsets get extraSmallEdgestInset =>
      EdgeInsets.all(Dimens.extraSmallEdgesInsets);

  EdgeInsets get smallEdgestInset => EdgeInsets.all(Dimens.smallEdgesInset);

  EdgeInsets get mediumEdgestInset => EdgeInsets.all(Dimens.mediumEdgesInset);

  EdgeInsets get largeEdgestInset => EdgeInsets.all(Dimens.largeEdgesInset);

  EdgeInsets get extraLargeEdgestInset =>
      EdgeInsets.all(Dimens.extraLargeEdgesInset);
}
