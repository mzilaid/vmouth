import 'package:flutter/material.dart';

class Disease {
  final String name;
  final Color color;
  final int severity;
  final String image;
  final String title;
  final String definition;
  final List<String> potentialRisks;
  final List<String> precautions;
  final List<String> checkupSuggestions;
  final List<String> suggestedImages;

  Disease({
    required this.name,
    this.severity = 0,
    required this.image,
    required this.color,
    required this.title,
    required this.definition,
    required this.potentialRisks,
    required this.precautions,
    required this.checkupSuggestions,
    required this.suggestedImages,
  });
}
