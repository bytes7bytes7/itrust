import 'package:flutter/material.dart';

abstract class HomeService {
  List<IconData> get tabIcons;

  void setTab(int index);
}
