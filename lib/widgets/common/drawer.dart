import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/constants/utils.dart';
import 'package:calculator_app/screens/bmi_calculator/bmi_calculator_screen.dart';
import 'package:calculator_app/screens/calculator/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CDrawer extends StatelessWidget {
  const CDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = CUtils.isDarkMode(context);
    
    return Drawer(
      backgroundColor: isDark ? CColors.dark : CColors.light,
      child: ListView(
        children: [
          Container(
            color: isDark ? CColors.darkDrawerHeaderColor : CColors.lightDrawerHeaderColor,
            child: Column(
              children: [
                const SizedBox(height: 20),
                const CircleAvatar(
                  radius: 40,
                  child: Icon(Icons.person, size: 50),
                ),
                const SizedBox(height: 10),
                Text(
                  'Muhammed Jasir',
                  style: TextStyle(
                    color: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'jasirmm307@gmail.com',
                  style: TextStyle(
                    color: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // List Tiles
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: const Text('Calculator'),
              leading: const Icon(FontAwesomeIcons.calculator),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CalculatorScreen(),
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: const Text('BMI Calculator'),
              leading: const Icon(FontAwesomeIcons.weightScale),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BmiCalculatorScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
