import 'package:flutter/material.dart';
import 'package:gamapark/scan-widget/panel_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanWidget extends StatefulWidget {
  ScanWidget ({ Key? key }) : super(key: key);

  @override
  State<ScanWidget> createState() => _ScanWidgetState();
}

class _ScanWidgetState extends State<ScanWidget> {
  final GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');
  late QRViewController _controller;
  bool _flashOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded( 
            child: QRView(
              key: _qrKey, 
              overlay: QrScannerOverlayShape(
                borderColor: Colors.white,
                borderLength: 61,
              ),
              onQRViewCreated: (QRViewController controller){
                this._controller = controller;
                controller.scannedDataStream.listen((val) {
                  if(mounted){
                    _controller.dispose();
                  }
                });
              },
              ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(51, 51, 51, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.close),
                  iconSize: 21,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  ),
                  Spacer(),
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Scan to pay',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  color: Colors.white,
                  icon: Icon(_flashOn ? Icons.flash_on : Icons.flash_off),
                  iconSize: 21,
                  onPressed: () {
                    setState(() {
                    _flashOn = !_flashOn;
                    });
                    _controller.toggleFlash();
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}