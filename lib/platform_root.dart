import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_learning/platform_widgets/PlatformShowPopupSheet.dart';
import 'package:flutter_platform_learning/quote_page.dart';
import 'package:flutter_platform_learning/trade_page.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class PlatformRoot extends StatefulWidget {
  const PlatformRoot({super.key});

  @override
  State<PlatformRoot> createState() => _PlatformRootState();
}

//

class _PlatformRootState extends State<PlatformRoot> {
  int _selectedValue = 0;

  @override
  void initState() {
    super.initState();
  }

  void func1(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    PlatformShowPopupSheet popupSheet = PlatformShowPopupSheet(
        title: "menu",
        message: "select options here",
        actionMap: {"a": func1, "b": func1});

    return PlatformScaffold(
      appBar: PlatformAppBar(
        leading: PlatformIconButton(
          icon: Icon(context.platformIcons.ellipsis),
          onPressed: () {
            PlatformShowPopupSheet popupSheet2 = PlatformShowPopupSheet(
              title: "menu",
              message: "select page",
              actionMap: {
                "Quote": (BuildContext context) => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (ctx) => const QuotePage()),
                    ),
                "Trade": (BuildContext context) => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (ctx) => const TradePage()),
                    ),
                "History": (BuildContext context) => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (ctx) => const TradePage()),
                    ),
              },
            );

            popupSheet2.showPopupSheet(context);
          },
        ),
        title: const Text('Platform Scaffold'),
        trailingActions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              print('Selected option: $value');
            },
            itemBuilder: (BuildContext context) {
              //define the items
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Option1',
                  child: Text('Option 1'),
                )
              ];
            },
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 2, 20, 2),
        child: CupertinoPicker(
          itemExtent: 50,
          scrollController:
              FixedExtentScrollController(initialItem: _selectedValue),
          onSelectedItemChanged: (index) {
            print('Selected option: $index');
            setState(() {
              _selectedValue = index;
            });
          },
          children: List.generate(
              5,
              (index) => Center(
                    child: Text('val:${index + 1}'),
                  )),
        ),
      ),
    );
  }
}
