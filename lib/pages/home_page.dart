import 'package:cycle_showcasing_ui/widgets/bg_container.dart';
import 'package:cycle_showcasing_ui/widgets/slanted_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgContainer(
        content: ListView(
          children: const [
            SlantedCard(),
          ],
        ),
      ),
    );
  }
}
