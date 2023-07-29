import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}
