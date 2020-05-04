// GENERATED CODE - DO NOT MODIFY BY HAND

part of optionbottomsheet;

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

///Builds and display Bottom Sheet
///[title] is required.
///[subTitle] can be null.
///[onSelection] is a callback with value back which is invoked on user selection
///[optionItems] is a list of selections in Bottom sheet.
class OptionBottomSheet extends StatelessWidget {
  ///Builds and display Bottom Sheet
  ///[title] is required.
  ///[subTitle] can be null.
  ///[onSelection] is a callback with value back which is invoked on user selection
  ///[optionItems] is a list of selections in Bottom sheet.
  const OptionBottomSheet(
      {Key key,
      @required this.title,
      this.subTitle,
      this.onSelection,
      this.optionItems})
      : super(key: key);

  ///Builds and display Bottom Sheet
  ///[title] is required.
  ///[subTitle] can be null.
  ///[onSelection] is a callback with value back which is invoked on user selection
  ///[optionItems] is a list of selections in Bottom sheet.
  final Widget title;

  ///Builds and display Bottom Sheet
  ///[title] is required.
  ///[subTitle] can be null.
  ///[onSelection] is a callback with value back which is invoked on user selection
  ///[optionItems] is a list of selections in Bottom sheet.
  final Widget subTitle;

  ///Builds and display Bottom Sheet
  ///[title] is required.
  ///[subTitle] can be null.
  ///[onSelection] is a callback with value back which is invoked on user selection
  ///[optionItems] is a list of selections in Bottom sheet.
  final Function onSelection;

  ///Builds and display Bottom Sheet
  ///[title] is required.
  ///[subTitle] can be null.
  ///[onSelection] is a callback with value back which is invoked on user selection
  ///[optionItems] is a list of selections in Bottom sheet.
  final List<OptionItem> optionItems;

  @override
  Widget build(BuildContext _context) => optionBottomSheet(_context,
      title: title,
      subTitle: subTitle,
      onSelection: onSelection,
      optionItems: optionItems);
}
