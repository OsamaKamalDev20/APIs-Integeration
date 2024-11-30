import 'package:apis_demo/Dio_package/dio_model.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioHomeScreen extends StatefulWidget {
  const DioHomeScreen({super.key});

  @override
  State<DioHomeScreen> createState() => _DioHomeScreenState();
}

class _DioHomeScreenState extends State<DioHomeScreen> {
  Cart? cart;
  Future<void> getData() async {
    String apiUrl = "https://dummyjson.com/carts";
    try {
      Response response = await Dio().get(apiUrl);
      if (response.data != null) {
        setState(() {
          cart = Cart.fromJson(response.data);
        });
      } else {
        throw Exception("API response is null or in an unexpected format");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF7F7F7),
      appBar: AppBar(
        title: Text("Fetch Data From API Using Dio"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: cart == null
          ? Center(
              child: CircularProgressIndicator(
                color: Colors.cyan,
              ),
            )
          : GridView.builder(
              itemCount: cart!.carts!.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 22,
                childAspectRatio: 1 / 1.75,
              ),
              itemBuilder: ((context, index) {
                return Material(
                  borderRadius: BorderRadius.circular(15),
                  elevation: 5,
                  child: Column(
                    children: [
                      Image.network(
                        cart!.carts![index].products![0].thumbnail ?? "",
                        width: 200,
                        height: 140,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        cart!.carts![index].products![0].title ?? "",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "\$${cart!.carts![index].products![0].discountPercentage.toString()} Discount",
                        maxLines: 1,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "\$${cart!.carts![index].products![0].price.toString()}",
                        maxLines: 1,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Total Price:- \$${cart!.carts![index].products![0].discountedTotal.toString()}",
                        maxLines: 1,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "${cart!.carts![index].products![0].quantity.toString()} quantity left",
                        maxLines: 1,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
    );
  }
}
