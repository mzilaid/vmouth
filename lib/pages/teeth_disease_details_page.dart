import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/disease_provider.dart';
import '../widgets/disease_details_card.dart';
import '../utilities/diseases_list.dart';
import '../widgets/disease_severity_button.dart';
import '../utilities/app_icons.dart';

class TeethDiseaseDetailsPage extends StatelessWidget {
  const TeethDiseaseDetailsPage({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.1),
        child: Container(
          height: size.height * 0.2,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Spacer(flex: 4),
              SizedBox(
                height: 40,
                child: Image.asset(
                  AppIcons.applogo,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 10),
              Text(
                'VMouth',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              Spacer(flex: 3),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 18),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                child: Text('Plus +', style: TextStyle(color: Colors.white)),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    CupertinoIcons.back,
                    size: 35,
                  ),
                  SizedBox(width: 10),
                  Text('Findings',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.remove_red_eye,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.3,
                child: Consumer<DiseaseProvider>(builder: (_, pro, __) {
                  return Image.asset(pro.selectedDisease.image);
                }),
              ),
              SizedBox(
                height: size.height * 1.1,
                child: Stack(
                  children: [
                    Positioned(
                      child: SizedBox(
                        height: size.height * 0.2,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: DiseasesList.diseasesList.length,
                          itemBuilder: (_, index) {
                            return Row(children: [
                              Consumer<DiseaseProvider>(builder: (_, pro, __) {
                                return Container(
                                  padding: EdgeInsets.all(4),
                                  width: size.width * 0.17,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(40),
                                    ),
                                    color: pro.selectedDiseaseIndex == index
                                        ? Theme.of(context).primaryColor
                                        : null,
                                  ),
                                  child: DiseaseSeverity(
                                    disease: DiseasesList.diseasesList[index],
                                    onTap: () => pro.onSelect(index),
                                  ),
                                );
                              }),
                              SizedBox(width: size.width * 0.02)
                            ]);
                          },
                        ),
                      ),
                    ),
                    Consumer<DiseaseProvider>(builder: (_, pro, __) {
                      return Positioned(
                        top: size.height * 0.18,
                        left: size.width * 0.19 * pro.selectedDiseaseIndex,
                        child: Container(
                          width: size.width * 0.17,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }),
                    Positioned(
                        top: size.height * 0.22, child: DiseaseDetailsCard()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
