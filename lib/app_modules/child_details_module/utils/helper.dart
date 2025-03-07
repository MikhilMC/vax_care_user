import 'package:intl/intl.dart';

class Helper {
  // Sample vaccination schedule; in a real application, this would be more dynamic
  static const List<Map<String, dynamic>> _vaccinationSchedule = [
    {
      'vaccine': 'Bacillus Calmette-Guerin (BCG)',
      'dueAge': Duration(days: 0), // At birth
    },
    {
      'vaccine': 'Oral Polio Vaccine (OPV) – 0 dose',
      'dueAge': Duration(days: 0), // At birth
    },
    {
      'vaccine': 'Hepatitis B – birth dose',
      'dueAge': Duration(days: 0), // At birth
    },
    {
      'vaccine': 'Oral Polio Vaccine (OPV) – 1',
      'dueAge': Duration(days: 6 * 7), // 6 weeks
    },
    {
      'vaccine': 'Pentavalent – 1',
      'dueAge': Duration(days: 6 * 7), // 6 weeks
    },
    {
      'vaccine': 'Rotavirus Vaccine (RVV) – 1',
      'dueAge': Duration(days: 6 * 7), // 6 weeks
    },
    {
      'vaccine': 'Fractional Inactivated Polio Vaccine (fIPV) – 1',
      'dueAge': Duration(days: 6 * 7), // 6 weeks
    },
    {
      'vaccine': 'Pneumococcal Conjugate Vaccine (PCV) – 1',
      'dueAge': Duration(days: 6 * 7), // 6 weeks
    },
    {
      'vaccine': 'Oral Polio Vaccine (OPV) – 2',
      'dueAge': Duration(days: 10 * 7), // 10 weeks
    },
    {
      'vaccine': 'Pentavalent – 2',
      'dueAge': Duration(days: 10 * 7), // 10 weeks
    },
    {
      'vaccine': 'Rotavirus Vaccine (RVV) – 2',
      'dueAge': Duration(days: 10 * 7), // 10 weeks
    },
    {
      'vaccine': 'Fractional Inactivated Polio Vaccine (fIPV) – 2',
      'dueAge': Duration(days: 10 * 7), // 10 weeks
    },
    {
      'vaccine': 'Pneumococcal Conjugate Vaccine (PCV) – 2',
      'dueAge': Duration(days: 10 * 7), // 10 weeks
    },
    {
      'vaccine': 'Oral Polio Vaccine (OPV) – 3',
      'dueAge': Duration(days: 14 * 7), // 14 weeks
    },
    {
      'vaccine': 'Pentavalent – 3',
      'dueAge': Duration(days: 14 * 7), // 14 weeks
    },
    {
      'vaccine': 'Rotavirus Vaccine (RVV) – 3',
      'dueAge': Duration(days: 14 * 7), // 14 weeks
    },
    {
      'vaccine': 'Pneumococcal Conjugate Vaccine (PCV) – Booster',
      'dueAge': Duration(days: 14 * 7), // 14 weeks
    },
    {
      'vaccine': 'Measles and Rubella (MR) – 1',
      'dueAge': Duration(days: 30 * 9), // 9 months
    },
    {
      'vaccine': 'Japanese Encephalitis (JE) – 1',
      'dueAge': Duration(days: 30 * 9), // 9 months
    },
    {
      'vaccine': 'Vitamin A – 1',
      'dueAge': Duration(days: 30 * 9), // 9 months
    },
    {
      'vaccine': 'Measles and Rubella (MR) – 2',
      'dueAge': Duration(days: 30 * 16), // 16 months
    },
    {
      'vaccine': 'Japanese Encephalitis (JE) – 2',
      'dueAge': Duration(days: 30 * 16), // 16 months
    },
    {
      'vaccine': 'Vitamin A – 2',
      'dueAge': Duration(days: 30 * 16), // 16 months
    },
    {
      'vaccine': 'Diphtheria, Pertussis, and Tetanus (DPT) – Booster 1',
      'dueAge': Duration(days: 30 * 16), // 16 months
    },
    {
      'vaccine': 'Oral Polio Vaccine (OPV) – Booster',
      'dueAge': Duration(days: 30 * 16), // 16 months
    },
    {
      'vaccine': 'Vitamin A – 3',
      'dueAge': Duration(days: 30 * 18), // 18 months
    },
    {
      'vaccine': 'Vitamin A – 4',
      'dueAge': Duration(days: 30 * 24), // 24 months
    },
    {
      'vaccine': 'Diphtheria, Pertussis, and Tetanus (DPT) – Booster 2',
      'dueAge': Duration(days: 365 * 5), // 5 years
    },
    {
      'vaccine': 'Tetanus and adult diphtheria (Td)',
      'dueAge': Duration(days: 365 * 10), // 10 years
    },
    {
      'vaccine': 'Human Papillomavirus (HPV)',
      'dueAge': Duration(days: 365 * 10), // 10 years
    },
    {
      'vaccine': 'Tetanus & adult Diphtheria (Td)',
      'dueAge': Duration(days: 365 * 16), // 16 years
    },
  ];

  static String calculateNextVaccinationStatus(DateTime birthDate) {
    final today = DateTime.now();
    for (var vaccine in _vaccinationSchedule) {
      final dueDate = birthDate.add(vaccine['dueAge']);
      final difference = dueDate.difference(today).inDays;
      if (difference > 0) {
        if (difference <= 14) {
          return 'Next vaccination (${vaccine['vaccine']}) is due in $difference days.';
        } else {
          return 'Next vaccination (${vaccine['vaccine']}) is due on ${DateFormat('dd MMM yyyy').format(dueDate)}.';
        }
      }
    }
    return 'All vaccinations are up to date.';
  }

  static String getNutritionGuide(DateTime birthDate) {
    final today = DateTime.now();
    final ageInMonths =
        today.difference(birthDate).inDays ~/ 30; // Convert days to months

    if (ageInMonths < 6) {
      return 'Exclusive breastfeeding or formula feeding is recommended.';
    } else if (ageInMonths < 12) {
      return 'Introduce pureed vegetables, mashed fruits, iron-rich cereals, and yogurt.';
    } else if (ageInMonths < 24) {
      return 'Soft foods, proteins (eggs, fish, meat), whole grains, and dairy products.';
    } else if (ageInMonths < 60) {
      return 'A balanced diet with fruits, vegetables, dairy, nuts, and whole grains.';
    } else {
      return 'A well-rounded diet including proteins, fiber-rich foods, and healthy snacks.';
    }
  }
}
