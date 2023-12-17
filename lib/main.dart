
import 'package:resep_foodies/pages/start_screen.dart';

import 'package:resep_foodies/utils/utils.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'resep_foodies',
          theme: ThemeData(
            useMaterial3: true,
              textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme), // Mengganti font menjadi Lato
                colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue) // Mengganti warna menjadi biru
                  .copyWith(background: AppColors.white),
          ),
          home: const ScaffoldMessenger(child:  startScreen()),
        );
      },
    );
  }
}
