import 'package:flutter/cupertino.dart';

@pragma('vm:entry-point')
void card() => runApp(
    const Directionality(textDirection: TextDirection.ltr, child: MyCard()));

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(Object context) {
    return Column(children: [
      const Text(
        "This is some long description text that should wrap to multiple lines. This is some long description text that should wrap to multiple lines.",
        style: TextStyle(color: Color(0xFF444444)),
      ),
      const SizedBox(height: 24),
      SizedBox(
        width: double.infinity,
        child: CupertinoButton(
            onPressed: () {},
            color: const Color(0xFFFF4444),
            child: const Text(
              "Primary Button",
              style: TextStyle(
                  fontWeight: FontWeight.w900, color: Color(0xFFFFFFFF)),
            )),
      ),
      const SizedBox(height: 8),
      SizedBox(
        width: double.infinity,
        child: CupertinoButton(
            onPressed: () {},
            color: const Color(0xFFFFFFFF),
            child: const Text(
              "Secondary Button",
              style: TextStyle(
                  fontWeight: FontWeight.w900, color: Color(0xFFFF4444)),
            )),
      ),
    ]);
  }
}
