import 'dart:convert';
import 'dart:io';

import 'model.dart';

class DataRepository {
  static const String _fileName = 'data.json';
  
  Future<void> saveData(List<DataModel> dataList) async {
    final file = File(_fileName);
    final jsonData = dataList.map((data) => data.toMap()).toList();
    await file.writeAsString(jsonEncode(jsonData));
  }

  Future<List<DataModel>> loadData() async {
    try {
      final file = File(_fileName);
      final jsonString = await file.readAsString();
      final List<dynamic> jsonList = jsonDecode(jsonString);
      final List<DataModel> dataList =
          jsonList.map((json) => DataModel.fromJson(json)).toList();
      return dataList;
    } catch (e) {
      return [];
    }
  }
}