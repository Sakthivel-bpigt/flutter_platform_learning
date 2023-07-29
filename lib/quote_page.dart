import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_spinbox/cupertino.dart';

class QuotePage extends StatefulWidget {
  const QuotePage({super.key});

  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(),
      body: CupertinoSpinBox(
        min: 0,
        max: 100,
        value: _value,

        onChanged: (double val) {
          setState(() {
            _value = val;
          });
        },
      ),
    );
  }
}
