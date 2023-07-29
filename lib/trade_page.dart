import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class TradePage extends StatefulWidget {
  const TradePage({super.key});

  @override
  State<TradePage> createState() => _TradePageState();
}

class _TradePageState extends State<TradePage> {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
        appBar: PlatformAppBar(),
        body: CupertinoListSection(
          children: [
            PlatformListTile(
              leading: Icon(context.platformIcons.book),
              title: PlatformText("title"),
              subtitle: PlatformText("subtitle"),
              trailing: Icon(context.platformIcons.rightChevron),
              onTap: () => print('Quote1'),
            ),
            PlatformListTile(
              leading: Icon(context.platformIcons.book),
              title: PlatformText("title"),
              subtitle: PlatformText("subtitle"),
              trailing: Icon(context.platformIcons.rightChevron),
              onTap: () => print('Quote1'),
            ),
            PlatformListTile(
              leading: Icon(context.platformIcons.book),
              title: PlatformText("title"),
              subtitle: PlatformText("subtitle"),
              trailing: Icon(context.platformIcons.rightChevron),
              onTap: () => print('Quote1'),
            ),
            PlatformListTile(
              leading: Icon(context.platformIcons.book),
              title: PlatformText("title"),
              subtitle: PlatformText("subtitle"),
              trailing: Icon(context.platformIcons.rightChevron),
              onTap: () => print('Quote1'),
            ),
            PlatformListTile(
              leading: Icon(context.platformIcons.book),
              title: PlatformText("title"),
              subtitle: PlatformText("subtitle"),
              trailing: Icon(context.platformIcons.rightChevron),
              onTap: () => print('Quote1'),
            ),
          ],
        ));
  }
}
