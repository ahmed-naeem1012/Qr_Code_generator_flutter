import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../../Declarations/Constants/Images/image_files.dart';

class QRWidget extends StatelessWidget {
  const QRWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: data.isNotEmpty ? true : false,
      child: QrImage(
        data: data,
        version: QrVersions.auto,
        eyeStyle: const QrEyeStyle(
            eyeShape: QrEyeShape.square,
            color: Color.fromARGB(255, 58, 58, 58)),
        dataModuleStyle: const QrDataModuleStyle(
            dataModuleShape: QrDataModuleShape.circle, color: Colors.grey),
        embeddedImage: AssetImage(imagePath[0]),
        embeddedImageStyle: QrEmbeddedImageStyle(size: const Size(40, 40)),
        size: 280.0,
      ),
    );
  }
}
