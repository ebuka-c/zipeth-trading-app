import 'package:zipeth/screens/transactions/qr_scanning/qr_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRResultScreeen extends StatelessWidget {
  final String code;
  final Function() closeScreen;
  const QRResultScreeen(
      {super.key, required this.closeScreen, required this.code});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              closeScreen();
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black87,
            )),
        centerTitle: true,
        title: Text(
          'QR scanner',
          style: GoogleFonts.openSans(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //show QR code here
            QrImageView(
              data: code,
              size: 150,
              version: QrVersions.auto,
            ),
            Text(
              'Scanned result',
              style: GoogleFonts.openSans(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              code,
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                color: Colors.black87,
                letterSpacing: 1,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: width - 100,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: code));
                },
                child: Text('Copy',
                    style: GoogleFonts.openSans(
                      letterSpacing: 1,
                      fontSize: 16,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
