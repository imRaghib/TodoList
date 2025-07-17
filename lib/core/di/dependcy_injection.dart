import 'package:flutter_dotenv/flutter_dotenv.dart';

class DependencyInjection {
  static Future<void> setup() async {
    await dotenv.load();
  }
}
