import 'package:flutter/material.dart';

import '../Declarations/Constants/constants.dart';

AppBar buildAppBar({
  required String appBarTitle,
  bool? centerTitle,
  List<Widget>? actionWidgets,
}) =>
    AppBar(
      title: Text(
        appBarTitle,
        style: const TextStyle(color: Colors.white),
      ),
      centerTitle: centerTitle ?? false,
      backgroundColor: appbarColor,
      actions: actionWidgets ?? [],
    );
