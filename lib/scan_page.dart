import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'scan-widget/scan_widget.dart';
import 'scan-widget/panel_widget.dart';
 
class ScanPage extends StatefulWidget {
  const ScanPage({ Key? key }) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        parallaxEnabled: true,
        parallaxOffset: 0.5,
        minHeight: MediaQuery.of(context).size.height * 0.15,
        maxHeight: MediaQuery.of(context).size.height * 0.3,
        body: ScanWidget(),
        panelBuilder: (controller) => PanelWidget(controller: controller),
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
    );
  }
}