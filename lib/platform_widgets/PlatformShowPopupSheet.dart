import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

typedef VoidCallback = void Function(BuildContext context);

class PlatformShowPopupSheet {
  String title;
  String message;
  Map<String, VoidCallback?> actionMap;

  PlatformShowPopupSheet(
      {required this.title, required this.message, required this.actionMap});

  void showPopupSheet(BuildContext context) {
    showPlatformModalSheet(
        context: context,
        builder: (_) => PlatformWidget(
              //TODO: passing map is required for reasons explained in the function below
              material: (_, __) => _androidPopupContent(context, actionMap),
              cupertino: (_, __) => _cupertinoSheetContent(context),
            ));
  }

  Widget _androidPopupContent(BuildContext context, map) {
    return ListView.builder(itemBuilder: (context, i) {
      return PlatformListTile(
        title: Text(actionMap.keys.elementAt(i)),
        //TODO: consuming directly the instance var (actionMap) at this location throws error
        onTap: map.values.elementAt(i)!(context),
      );
    });
  }

  Widget _cupertinoSheetContent(BuildContext context) {
    List<Widget> actionWidget = [];

    actionMap.forEach((key, value) {
      actionWidget.add(CupertinoActionSheetAction(
        child: Text(key),
        onPressed: () {
          // Navigator.pop(context, 'Profiteroles');
          if (value != null) value(context);
        },
      ));
    });

    return CupertinoActionSheet(
      title: Text(title),
      message: Text(message),
      actions: actionWidget,
      cancelButton: CupertinoActionSheetAction(
        isDefaultAction: true,
        onPressed: () {
          Navigator.pop(context, 'Cancel');
        },
        child: const Text('Cancel'),
      ),
    );
  }
}
