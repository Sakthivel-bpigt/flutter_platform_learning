import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class PlatformRoot extends StatefulWidget {
  const PlatformRoot({super.key});

  @override
  State<PlatformRoot> createState() => _PlatformRootState();
}

typedef VoidCallback = void Function(BuildContext context);

class _PlatformRootState extends State<PlatformRoot> {
  Map<String, VoidCallback> functionMap = {};
  @override
  void initState() {
    functionMap['Profiteroles'] = func1;
    functionMap['Cannolis'] = func1;
    functionMap['Trifle'] = func1;

    super.initState();
  }

  void func1(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        leading: PlatformIconButton(
          icon: Icon(context.platformIcons.collections),
          onPressed: () {},
        ),
        title: const Text('Platform Scaffold'),
      ),
      body: ListView(
        children: [
          /// ! BottomSheet
          Container(
            padding: const EdgeInsets.fromLTRB(20, 2, 20, 2),
            child: PlatformElevatedButton(
              child: const Text('Bottom Sheet'),
              onPressed: () => _showPopupSheet(
                  context, 'Bottom Sheet' as Map<String, Function>),
            ),
          ),
        ],
      ),
    );
  }

  _showPopupSheet(BuildContext context, Map<String, Function> map) {
    showPlatformModalSheet(
      context: context,
      builder: (_) => PlatformWidget(
        material: (_, __) => _androidPopupContent(context, map),
        cupertino: (_, __) => _cupertinoSheetContent(context, map),
      ),
    );
  }

  Widget _androidPopupContent(BuildContext context, Map<String, Function> map) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          GestureDetector(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: PlatformText('Profiteroles'),
            ),
            onTap: () => Navigator.pop(context),
          ),
          GestureDetector(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: PlatformText('Cannolis'),
            ),
            onTap: () => Navigator.pop(context),
          ),
          GestureDetector(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: PlatformText('Trifle'),
            ),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
    // return ListView.builder(itemBuilder: (context, i) {
    //   return PlatformListTile(
    //     title: Text(map.keys.elementAt(i)),
    //     onTap: map.values.elementAt(i),
    //   );
    // });
  }

  Widget _cupertinoSheetContent(
      BuildContext context, Map<String, Function> map) {
    return CupertinoActionSheet(
      title: const Text(' Favorite Dessert'),
      message:
          const Text('Please select the best dessert from the options below.'),
      actions: <Widget>[
        CupertinoActionSheetAction(
          child: const Text('Profiteroles'),
          onPressed: () {
            Navigator.pop(context, 'Profiteroles');
          },
        ),
        CupertinoActionSheetAction(
          child: const Text('Cannolis'),
          onPressed: () {
            Navigator.pop(context, 'Cannolis');
          },
        ),
        CupertinoActionSheetAction(
          child: const Text('Trifle'),
          onPressed: () {
            Navigator.pop(context, 'Trifle');
          },
        ),
      ],
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
