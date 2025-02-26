import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '/providers/disease_provider.dart';
import '/pages/teeth_disease_details_page.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DiseaseProvider(),
      child: MaterialApp(
        title: 'VMouth',
        theme: ThemeData(primaryColor: Color.fromRGBO(35, 35, 44, 1)),
        home: TeethDiseaseDetailsPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
