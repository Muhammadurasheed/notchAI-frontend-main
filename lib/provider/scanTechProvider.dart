// ignore: file_names
import 'dart:io';

import 'package:flutter/material.dart';

class ScanTechProvider with ChangeNotifier {
  File? selectedImage;
  Prediction? highestAccuracyPrediction;

  void setImage(File? image) {
    selectedImage = image;
    notifyListeners();
  }

  void setPrediction(Prediction? prediction) {
    highestAccuracyPrediction = prediction;
    notifyListeners();
  }
}

class Prediction {
  final String name;
  final double confidence;
  bool showCausesAndRecommendations;

  Prediction({
    required this.name,
    required this.confidence,
    this.showCausesAndRecommendations = false,
  });
}
