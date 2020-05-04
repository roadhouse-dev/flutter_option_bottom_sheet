library optionbottomsheet;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'option_bottom_sheet.g.dart';

///Builds and display Bottom Sheet
///[title] is required.
///[subTitle] can be null.
///[onSelection] is a callback with value back which is invoked on user selection
///[optionItems] is a list of selections in Bottom sheet.
@widget
Widget optionBottomSheet(
    BuildContext context, {
      @required Widget title,
      Widget subTitle,
      Function(dynamic optionItemValue) onSelection,
      List<OptionItem> optionItems,
    }) {
  List<Widget> selectionItemWidgets = List<Widget>();

  for (OptionItem selectionItem in optionItems) {
    final listTile = ListTile(
      leading: selectionItem.icon,
      title: Text(selectionItem.title),
      onTap: () => onSelection(selectionItem.value),
    );
    selectionItemWidgets.add(listTile);
  }

  return SafeArea(
    child: Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(height: 16),
          Container(
            margin: EdgeInsets.only(left: 16.0),
            alignment: Alignment.centerLeft,
            child: DefaultTextStyle(
              child: title,
              style: Theme.of(context).textTheme.subhead,
            ),
          ),
          if (subTitle != null)
            Container(
              margin: EdgeInsets.only(top: 8, left: 16.0),
              alignment: Alignment.centerLeft,
              child: DefaultTextStyle(
                child: subTitle,
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          Container(height: 4),
          Column(
            children: selectionItemWidgets,
          ),
        ],
      ),
    ),
  );
}

/// Model class for selection item.
class OptionItem {
  /// [icon] is selection icon.
  Icon icon;
  /// [title] is selection title.
  String title;
  /// [value] is a dynamic type, this is the object we will be included in call back.
  dynamic value;

  OptionItem({Icon icon, String title, dynamic value}) {
    this.icon = icon;
    this.title = title;
    this.value = value;
  }
}