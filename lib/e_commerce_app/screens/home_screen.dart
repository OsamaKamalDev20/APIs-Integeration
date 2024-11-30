import 'package:apis_demo/e_commerce_app/models/product_get_model.dart';
import 'package:apis_demo/e_commerce_app/screens/product_detail.dart';
import 'package:apis_demo/e_commerce_app/services/product_get_services.dart';
import 'package:flutter/material.dart';

class ECommerceHomeScreen extends StatefulWidget {
  const ECommerceHomeScreen({super.key});

  @override
  State<ECommerceHomeScreen> createState() => _ECommerceHomeScreenState();
}

class _ECommerceHomeScreenState extends State<ECommerceHomeScreen> {
  List<Product> productModel = [];
  bool isLoaded = false;
  getMyProduct() {
    isLoaded = true;
    getProducts().then((value) {
      setState(() {
        productModel = value;
        isLoaded = false;
      });
    });
  }

  @override
  void initState() {
    getMyProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E Commerce APP"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: isLoaded
          ? Center(
              child: CircularProgressIndicator(
                color: Colors.teal,
              ),
            )
          : ListView.builder(
              shrinkWrap: true,
              itemCount: productModel.length,
              itemBuilder: ((context, index) {
                final apiProduct = productModel[index];
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetails(
                            product: apiProduct,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Hero(
                              tag: apiProduct.thumbnail,
                              child: Image.network(
                                apiProduct.thumbnail,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    apiProduct.title,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text(
                                        "\$${apiProduct.price.toString()}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star_rounded,
                                        size: 30,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        apiProduct.rating.toStringAsFixed(2),
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "${apiProduct.stock} stocks available",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
    );
  }
}
