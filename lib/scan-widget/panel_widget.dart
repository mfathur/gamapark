import 'package:flutter/material.dart';

class PanelWidget extends StatefulWidget {
  final ScrollController controller;

  const PanelWidget({ 
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<PanelWidget> createState() => _PanelWidgetState();
}

class _PanelWidgetState extends State<PanelWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      controller: widget.controller,
      children: [
        SizedBox(height: 13),
        Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildDragHandle(),
                  SizedBox(
                    height: 17,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 27,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Flower shopping center',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.room),
                            Text(
                              'kharkiv, kharkiv region',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Divider(
                    color: Colors.grey[400],
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(112, 0, 43, 0),
                    child: Text(
                      'your vehicle has been parked for 3 hours',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
      ],
    );
  }

  Widget buildDragHandle(){
    return Center(
      child: Container(
        width: 92,
        height: 8,
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(69),
        ),
      ),
    );
  }

}