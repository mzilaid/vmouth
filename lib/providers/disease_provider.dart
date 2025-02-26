import 'package:flutter/material.dart';
import '/models/disease.dart';
import '/utilities/diseases_list.dart';

class DiseaseProvider extends ChangeNotifier {
  int _selectedDiseaseIndex = 0;
  int get selectedDiseaseIndex => _selectedDiseaseIndex;
  Disease get selectedDisease =>
      DiseasesList.diseasesList[_selectedDiseaseIndex];

  onSelect(int index) {
    _selectedDiseaseIndex = index;
    notifyListeners();
  }
}
