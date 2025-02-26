import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/disease.dart';
import '../providers/disease_provider.dart';

class DiseaseDetailsCard extends StatelessWidget {
  const DiseaseDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<DiseaseProvider>(builder: (_, pro, __) {
      Disease disease = pro.selectedDisease;
      return Container(
          width: size.width * 0.93,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: pro.selectedDiseaseIndex == 0
                    ? Radius.zero
                    : Radius.circular(20),
                topRight: pro.selectedDiseaseIndex == 4
                    ? Radius.zero
                    : Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                disease.title,
                style: TextStyle(
                  color: Colors.grey.shade100,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              _TextTitleWidget(text: '🔷 What It Means:'),
              _TextBodyWidget(text: disease.definition),
              SizedBox(height: 20),
              _TextTitleWidget(text: '⚠️ Potential Risks:'),
              ...List.generate(
                  disease.potentialRisks.length,
                  (index) => _TextBodyWidget(
                        text: disease.potentialRisks[index],
                      )),
              SizedBox(height: 20),
              _TextTitleWidget(text: '🛠️ What You can Do:'),
              ...List.generate(
                  disease.precautions.length,
                  (index) => _TextBodyWidget(
                        text: disease.precautions[index],
                      )),
              SizedBox(height: 20),
              _TextTitleWidget(text: '🦷 When to See a Dentist:'),
              ...List.generate(
                  disease.checkupSuggestions.length,
                  (index) => _TextBodyWidget(
                        text: disease.checkupSuggestions[index],
                      )),
              SizedBox(height: 20),
              _TextTitleWidget(text: '🖼️ Suggested Images:'),
              SizedBox(height: 20),
              ...List.generate(
                  disease.suggestedImages.length,
                  (index) => _TextBodyWidget(
                        text: disease.suggestedImages[index],
                      )),
            ],
          ));
    });
  }
}

class _TextTitleWidget extends StatelessWidget {
  const _TextTitleWidget({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25));
  }
}

class _TextBodyWidget extends StatelessWidget {
  const _TextBodyWidget({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.white, fontSize: 15));
  }
}
