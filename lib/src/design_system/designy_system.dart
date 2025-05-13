import 'package:flutter/material.dart';

class FoodSnapsColors {
  static const Color tomatoRed = Color(0xFFE53935);
  static const Color leafGreen = Color(0xFF7CB342);
  static const Color mangoYellow = Color(0xFFFFB300);
  static const Color riceWhite = Color(0xFFFAFAFA);
  static const Color cocoaBrown = Color(0xFF4E342E);
  static const Color textDark = Color(0xFF212121);
  static const Color textLight = Color(0xFFFFFFFF);
}

class FoodSnapsTextStyles {
  static const TextStyle title = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: FoodSnapsColors.textDark,
  );

  static const TextStyle body = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal,
    fontSize: 16,
    color: FoodSnapsColors.textDark,
  );

  static const TextStyle highlight = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.italic,
    fontSize: 14,
    color: FoodSnapsColors.leafGreen,
  );
}

class FoodSnapsButtonStyles {
  static ButtonStyle primary = ElevatedButton.styleFrom(
    backgroundColor: FoodSnapsColors.tomatoRed,
    foregroundColor: FoodSnapsColors.textLight,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
  );

  static ButtonStyle secondary = OutlinedButton.styleFrom(
    foregroundColor: FoodSnapsColors.leafGreen,
    side: const BorderSide(color: FoodSnapsColors.leafGreen),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
  );
}

class FoodSnapsChips {
  static Chip categoryChip(String label) {
    return Chip(
      label: Text(label),
      backgroundColor: FoodSnapsColors.mangoYellow.withAlpha(128),
      labelStyle: const TextStyle(color: FoodSnapsColors.textDark),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}

class FoodSnapsSize {
  static const double paddingScreen = 10.0;
  static const double paddingItem = 8.0;
}

class FoodSnapsTheme {
  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: FoodSnapsColors.riceWhite,
      fontFamily: 'Poppins',
      textTheme: const TextTheme(bodyLarge: FoodSnapsTextStyles.body, titleLarge: FoodSnapsTextStyles.title),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: FoodSnapsColors.leafGreen),
        ),
      ),
    );
  }
}
