import 'package:flutter/material.dart';

class FloatingMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,  // Align bottom left as per your requirement
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FloatingActionButton(
              heroTag: "btn1",
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Telephone'),
                      content: Text('0866593656'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Close'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              backgroundColor: Colors.red,
              child: Icon(Icons.phone, color: Colors.white),
            ),
            SizedBox(height: 8),
            FloatingActionButton(
              heroTag: "btn2",
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('QR Code'),
                      content: Image.network('images/qr_code.png', height: 200, width: 200), // Add your QR code image here
                      actions: <Widget>[
                        TextButton(
                          child: Text('Close'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              backgroundColor: Colors.green,
              child: Image.network(
                'images/line_icon.png',
                color: Colors.white,
                height: 30,
                width: 30,
              ),
            ),
            SizedBox(height: 8),
            FloatingActionButton(
              heroTag: "btn3",
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Email'),
                      content: Text('meenunited@gmail.com'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Close'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              backgroundColor: Colors.amberAccent,
              child: Icon(Icons.email),
            ),
            SizedBox(height: 8),
            FloatingActionButton(
              heroTag: "btn4",
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Facebook'),
                      content: Text('Facebook link or info here'), // Add relevant Facebook info
                      actions: <Widget>[
                        TextButton(
                          child: Text('Close'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              backgroundColor: Colors.indigo,
              child: Icon(
                Icons.facebook,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
