```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Handle missing keys gracefully
      final nestedData = jsonData['data']?['nested']?['value'];
      if (nestedData != null) {
        print(nestedData);
      } else {
        print('Nested data not found');
      }
    } else {
      //More informative error message with status code
      throw Exception('Failed to load data. Status code: ${response.statusCode}  Response body: ${response.body}');
    }
  } catch (e) {
    //Log the error properly
    print('Error fetching data: $e');
    //Consider more sophisticated error handling, such as retry logic
  }
}
```