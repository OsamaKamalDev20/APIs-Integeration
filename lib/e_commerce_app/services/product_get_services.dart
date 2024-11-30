import "package:apis_demo/e_commerce_app/models/product_get_model.dart";
import "package:http/http.dart" as http;

getProducts() async {
  Uri uri = Uri.parse("https://dummyjson.com/products");
  var response = await http.get(uri);
  try {
    if (response.statusCode == 200) {
      var data = productModelFromJson(response.body);
      return data.products;
    } else {
      print("If any error occur");
    }
  } catch (e) {
    print(e.toString());
  }
}
