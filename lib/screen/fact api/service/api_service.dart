import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static String url = "https://api.api-ninjas.com/v1/facts";
  static String API_KEY = "tIqewI3lIGQP2kapnPuFyA==Wt6vnumUuQuzcIpq";

  static Future<String> fetchFact() async {


    final response = await http.get(
      Uri.parse(url),
      headers: {'X-Api-Key': API_KEY},
    );

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      if (data.isNotEmpty) {
        return data[0]['fact'].toString();
      } else {
        return "No fact found.";
      }
    } else {
      throw Exception("Failed to fetch fact: ${response.statusCode}");
    }
  }


}
