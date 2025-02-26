import 'package:flutter/material.dart';
import 'package:tecbeck_interview_task/utilities/app_images.dart';

import '../models/disease.dart';

class DiseasesList {
  static List<Disease> diseasesList = [
    Disease(
      name: 'Caries',
      color: Colors.red,
      image: AppImages.caries,
      severity: 3,
      title: 'Caries (Tooth Decay) 🦠🦷',
      definition: '''Cavities are holes in your teeth caused by bacteria.
They start small but can grow deeper over time.''',
      potentialRisks: [
        '• Cavities can cause pain and sensitivity.',
        '• If left untreated, they can lead to infections or even tooth loss.'
      ],
      precautions: [
        '✅ Brush your teeth twice daily with fluoride toothpaste.',
        '✅ Avoid sugary snacks and drinks.',
        '✅ Visit a dentist regularly to catch cavities early.',
      ],
      checkupSuggestions: [
        '• If you feel pain or sensitivity.',
        '• If you see black or brown spots on your teeth.',
      ],
      suggestedImages: [],
    ),
    Disease(
      name: 'Plaque',
      image: AppImages.plaque,
      color: Colors.yellow,
      severity: 2,
      title: 'Plaque (Bacterial Biofilm) 🪥🦠',
      definition:
          '''Plaque is a sticky layer of bacteria that forms on your teeth every day. If you don’t clean it properly, it hardens into tartar and causes gum problems.''',
      potentialRisks: [
        '• Causes gum bleeding and bad breath.',
        '• Can lead to serious gum disease and even tooth loss.'
      ],
      precautions: [
        '✅ Brush and floss every day to remove plaque.',
        '✅ Use mouthwash to help control bacteria.',
        '✅ Drink water and chew sugar-free gum to reduce plaque buildup.',
      ],
      checkupSuggestions: [
        '• If your gums bleed when you brush or floss.',
        '• If your breath smells bad even after brushing.',
        '• Preventive Checkup every 6 months to 1 year.'
      ],
      suggestedImages: [],
    ),
    Disease(
      name: 'Cavity',
      image: AppImages.cavity,
      color: Colors.orange,
      title: 'Cavity 🕳️⚡',
      definition:
          '''A tooth cavity occurs when the tooth is damaged by caries, enamel wear, or lesions caused by habits such as drinking acidic beverages or applying excessive pressure during brushing.''',
      potentialRisks: [
        '• Can cause severe pain and infections.',
        '• Might require a root canal or tooth removal.'
      ],
      precautions: [
        '✅ See a dentist as soon as possible.',
        '✅ Use mouthwash to help control bacteria.',
        '✅ Avoid hard or sticky foods that might worsen the damage.',
      ],
      checkupSuggestions: [
        '• If your tooth hurts constantly.',
        '• If a piece of your tooth breaks off.',
        '• Preventive Checkup every 6 months to 1 year.'
            'Aesthetic reasons.'
      ],
      suggestedImages: ['Deep cavity in a molar.'],
    ),
    Disease(
      name: 'Fracture',
      image: AppImages.cavity,
      color: Colors.purple,
      title: 'Fracture 🕳️⚡',
      definition:
          '''A tooth cavity occurs when the tooth is damaged by caries, enamel wear, or lesions caused by habits such as drinking acidic beverages or applying excessive pressure during brushing.''',
      potentialRisks: [
        '•Can cause severe pain and infections.',
        '• Might require a root canal or tooth removal.'
      ],
      precautions: [
        '✅ See a dentist as soon as possible.',
        '✅ Use mouthwash to help control bacteria.',
        '✅ Avoid hard or sticky foods that might worsen the damage.',
      ],
      checkupSuggestions: [
        '• If your tooth hurts constantly.',
        '• If a piece of your tooth breaks off.',
        '• Preventive Checkup every 6 months to 1 year.'
            'Aesthetic reasons.'
      ],
      suggestedImages: ['Deep cavity in a molar.'],
    ),
    Disease(
      color: Colors.blue,
      image: AppImages.cavity,
      name: 'Filling',
      title: 'Filling 🕳️⚡',
      definition:
          '''• A tooth cavity occurs when the tooth is damaged by caries, enamel wear, or lesions caused by habits such as drinking acidic beverages or applying excessive pressure during brushing.''',
      potentialRisks: [
        'Can cause severe pain and infections.',
        '• Might require a root canal or tooth removal.'
      ],
      precautions: [
        '✅ See a dentist as soon as possible.',
        '✅ Use mouthwash to help control bacteria.',
        '✅ Avoid hard or sticky foods that might worsen the damage.',
      ],
      checkupSuggestions: [
        '• If your tooth hurts constantly.',
        '• If a piece of your tooth breaks off.',
        '• Preventive Checkup every 6 months to 1 year.'
            'Aesthetic reasons.'
      ],
      suggestedImages: ['• Deep cavity in a molar.'],
    ),
  ];
}
