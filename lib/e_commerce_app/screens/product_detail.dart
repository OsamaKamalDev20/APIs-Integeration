import 'package:apis_demo/e_commerce_app/models/product_get_model.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  const ProductDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: product.thumbnail,
                child: Image.network(product.thumbnail),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      product.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Text(
                    "${product.discountPercentage.toString()}% Discount",
                    maxLines: 1,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                product.description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  height: 1.8,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Tags and Brands:-",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.teal.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 1.5,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        product.tags.first.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.teal.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 1.5,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        product.brand.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                "Reviews and Availability",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        size: 30,
                        color: Colors.amber,
                      ),
                      Text(
                        product.rating.toStringAsFixed(2),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "In Stock:- \$${product.stock.toString()}",
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "\$${product.price}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.teal,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 240,
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        color: Colors.teal,
                      ),
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
