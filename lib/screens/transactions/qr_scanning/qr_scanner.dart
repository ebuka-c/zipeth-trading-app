import 'package:zipeth/screens/transactions/qr_scanning/scanning_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

const bgColor = Color(0xfffafafa);

class QRScanner extends StatefulWidget {
  const QRScanner({super.key});

  @override
  State<QRScanner> createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  bool isScanCompleted = false;
  bool isFlashOn = false;
  bool isFrontCamera = false;
  MobileScannerController controller = MobileScannerController();
  void closeScreen() {
    isScanCompleted = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        //for switching on/off front camera and flash light
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isFlashOn = !isFlashOn;
                });
                controller.toggleTorch();
              },
              icon: Icon(Icons.flash_on,
                  color: isFlashOn ? Colors.blue : Colors.grey)),
          IconButton(
              onPressed: () {
                setState(() {
                  isFrontCamera = !isFrontCamera;
                });
                controller.switchCamera();
              },
              icon: Icon(Icons.camera_front,
                  color: isFrontCamera ? Colors.blue : Colors.grey)),
        ],
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
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(children: [
          Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Text(
                  'Place the QR code in the area',
                  style: GoogleFonts.openSans(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Scanning will be started automatically',
                  style: GoogleFonts.openSans(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
              ])),
          Expanded(
            flex: 4,
            child: MobileScanner(
              controller: controller,
              // startDelay: true,
              onDetect: (barcodes) {
                if (!isScanCompleted) {
                  String code = barcodes.raw ?? '...';
                  isScanCompleted = true;
                  Get.to(() =>
                      QRResultScreeen(closeScreen: closeScreen, code: code));
                }
              },
            ),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                child: Text('',
                    style: GoogleFonts.openSans(
                      color: Colors.black87,
                      fontSize: 14,
                      letterSpacing: 1,
                    ))),
          )
        ]),
      ),
    );
  }
}
