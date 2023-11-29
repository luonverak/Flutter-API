import 'package:http/http.dart' as http;
import 'package:rest_api/model/product_model.dart';
import 'package:rest_api/service/product_api.dart';

class ProductController {
  Future getProduct() async {
    var response = await http.get(Uri.parse(productAPI));
    if (response.statusCode == 200) {
      return productModelFromJson(response.body);
    } else {
      return [];
    }
  }
}
