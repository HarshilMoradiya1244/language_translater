import 'package:flutter/material.dart';
import 'package:language_translater/screen/home/provider/translater_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TranslaterProvider? providerr;
  TranslaterProvider? providerw;

  TextEditingController txtEdit = TextEditingController();
  @override
  Widget build(BuildContext context) {
    providerr = context.read<TranslaterProvider>();
    providerw = context.watch<TranslaterProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          title: const Text("Translate"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings_outlined),
            ),
          ],
        ),
        body: Column(
          children: [
            DropdownButton(items:providerw!.tran, onChanged:(value) {

            }, )
          ],
        ),
      ),
    );
  }
}
