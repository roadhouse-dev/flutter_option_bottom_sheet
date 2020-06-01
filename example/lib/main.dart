import 'package:flutter/material.dart';
import 'package:flutter_option_bottom_sheet/flutter_option_bottom_sheet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selection = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (selection != null && selection != '') Text(
              '$selection is selected',
            ),
            RaisedButton(
              child: Text('Display option list'),
                onPressed: () async {
                  final source = await _displayOptionList(
                    context,
                  );

                  setState(() {
                    selection = source;
                  });
                }
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

_displayOptionList(BuildContext context) async {
  final source = await showModalBottomSheet(
      context: context,
      builder: (dialogContext) {
        return OptionBottomSheet(
          title: Text("Title"),
          subTitle: Text("SubTitle"),
          optionItems: [
            OptionItem(
              icon: Icon(Icons.camera_alt),
              title: "OptionItem 1",
              value: "OptionItem 1",
            ),
            OptionItem(
              icon: Icon(Icons.image),
              title: "OptionItem 2",
              value: "OptionItem 2",
            ),
          ],
          onSelection: (value) {
            Navigator.of(dialogContext).pop(value);
          },
        );
      });

  return source;
}