import 'package:flutter/material.dart';
import 'package:language_translater/screen/home/model/translate_model.dart';
import 'package:language_translater/utils/api_helper.dart';

class TranslaterProvider with ChangeNotifier{

  TranslatorModel? translatorModel;

  List<String> lang=['hi','gu','de','af','am','ar','cs'];

  String tran = 'hi';

  void languageTran(String l1){
  tran = l1;
  notifyListeners();
  }

  Future<void> getData(String edit) async {
  TranslatorModel? model = await APIHelper.apiHelper.translatorAPICall(edit,tran);
  translatorModel = model;
  notifyListeners();
  }

}