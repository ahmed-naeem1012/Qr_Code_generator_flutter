import 'package:flutter/material.dart';
import '../../../Components/app_bar.dart';
import '../../../Components/spacer.dart';
import '../../../Declarations/Constants/constants.dart';

import '../../../Components/snack_bar.dart';
import '../Widgets/qr_widget.dart';
import '../Widgets/text_form_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController textEditingController;
  String data = '';

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(appBarTitle: widget.title),
        body: Column(
          children: [
            HeightSpacer(myHeight: kSpacing),
            InputField(
                controller: textEditingController,
                generateQR: () => generateQRCode()),
            HeightSpacer(myHeight: kSpacing),
            QRWidget(data: textEditingController.text),
          ],
        ));
  }

  generateQRCode() {
    String inputData = textEditingController.text;

    // Check if the data is empty
    if (inputData.isEmpty) {
      buildErrorLayout(context, 'Enter data for generating QR Code');
      return; // Stop further execution if data is empty
    }

    // Splitting the input data by commas
    List<String> options = inputData.split(',');

    // Check if there are exactly 4 options
    if (options.length != 4) {
      buildErrorLayout(context, 'Please add 4 options separated with commas');
      return; // Stop further execution if the number of options is not 4
    }

    setState(() => data = inputData);
  }
}
