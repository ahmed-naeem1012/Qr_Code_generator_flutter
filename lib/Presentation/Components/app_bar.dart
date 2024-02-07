import 'package:flutter/material.dart';

import '../Declarations/Constants/constants.dart';

AppBar buildAppBar({
  required String appBarTitle,
  bool? centerTitle,
  List<Widget>? actionWidgets,
}) =>
    AppBar(
      leading: Container(),
      title: Text(
        appBarTitle,
        style: const TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: appbarColor,
      actions: actionWidgets ?? [],
    );
