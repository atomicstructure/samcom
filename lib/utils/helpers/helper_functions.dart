import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THelperFunctions {
  static Color? getcolor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Orange') {
      return Colors.orange;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Cyan') {
      return Colors.cyan;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Amber') {
      return Colors.amber;
    } else if (value == 'Lime') {
      return Colors.lime;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    }
    return null;
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  static void showAlert(String title, String message) {
    Get.defaultDialog(
      title: title,
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('OK'),
        ),
      ],
    );
  }

  static void navigateToScreen(Widget screen) {
    Get.to(() => screen);
  }

  static void navigateToScreenWithReplacement(Widget screen) {
    Get.offAll(() => screen);
  }

  static String truncateText(String text, int maxLength) {
    if (text.length > maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode() {
    return Get.isDarkMode;
  }

  static Size getScreenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double getScreenWidth() {
    return getScreenSize().width;
  }

  static double getScreenHeight() {
    return getScreenSize().height;
  }

  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  static String getFormattedDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  static List<Widget> wrapWidgets(List<Widget> widgets) {
    return widgets
        .map((widget) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: widget,
            ))
        .toList();
  }
}
