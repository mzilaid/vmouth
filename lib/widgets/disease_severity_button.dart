import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/disease_provider.dart';

import '../models/disease.dart';

class DiseaseSeverity extends StatelessWidget {
  const DiseaseSeverity(
      {super.key, required this.disease, required this.onTap});
  final Disease disease;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)),
                width: size.width * 0.16,
                height: size.height * 0.15,
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: disease.color,
                    borderRadius: BorderRadius.vertical(
                        top: disease.severity > 0
                            ? Radius.zero
                            : Radius.circular(40),
                        bottom: Radius.circular(40)),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    alignment: Alignment.center,
                    child: Text(disease.severity.toString(),
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                height: size.height *
                    (1 / (size.height < 880 ? 33 : 32)) *
                    disease.severity,
                width: size.width * 0.151,
                child: Container(
                  decoration: BoxDecoration(
                      color: disease.color,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      )),
                ),
              ),
            ],
          ),
        ),
        Consumer<DiseaseProvider>(builder: (_, pro, __) {
          return Text(
            disease.name,
            style: TextStyle(
                color: pro.selectedDisease.name == disease.name
                    ? Colors.white
                    : null),
          );
        }),
      ],
    );
  }
}
