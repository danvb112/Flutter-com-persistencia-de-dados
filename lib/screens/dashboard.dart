import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercompd/screens/contacts_list.dart';

class Dashboard extends StatelessWidget {

  static const String _titleAppBar = 'Dashboard';
  static const String _textContainer = 'Contacts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titleAppBar)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/bytebank_logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Theme.of(context).primaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactsList()));
                },
                child: Container(
                    height: 100,
                    width: 150,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              _textContainer,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          )
                        ])),
              ),
            ),
          )
        ],
      ),
    );
  }
}
