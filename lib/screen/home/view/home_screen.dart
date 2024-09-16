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
          title: const Text("Language Translator"),
          centerTitle: true,
          backgroundColor: Colors.blue.shade400,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: DropdownButton(
                          value: providerw!.sourceLanguage,
                          items: List.generate(
                            providerw!.languages.length,
                                (index) {
                              return DropdownMenuItem(
                                child: Text(providerw!.languages[index]['name']!),
                                value: providerw!.languages[index]['code'],
                              );
                            },
                          ),
                          onChanged: (value) {
                            providerr!.setSourceLanguage(value!);
                          },
                          hint: const Text("Select Source Language"),
                          isExpanded: true,
                          underline: const SizedBox(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: DropdownButton(
                          value: providerw!.targetLanguage,
                          items: List.generate(
                            providerw!.languages.length,
                                (index) {
                              return DropdownMenuItem(
                                child: Text(providerw!.languages[index]['name']!),
                                value: providerw!.languages[index]['code'],
                              );
                            },
                          ),
                          onChanged: (value) {
                            providerr!.setTargetLanguage(value!);
                          },
                          hint: const Text("Select Target Language"),
                          isExpanded: true,
                          underline: const SizedBox(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: txtEdit,
                  decoration: InputDecoration(
                    labelText: "Enter Text",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  maxLines: 5,
                ),
                const SizedBox(height: 20),

                SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade100,
                    ),
                    child: Text(
                      providerw!.translatorModel == null
                          ? "Translation will appear here..."
                          : providerw!.translatorModel!.dataModel!.translatedText!,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async {
                      String edit = txtEdit.text;
                      await providerr!.getData(edit);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade400,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Translate",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
