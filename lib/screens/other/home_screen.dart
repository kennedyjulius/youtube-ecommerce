import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:youtube_ecommerce/firebase_helper/firebase_firestore/firebase_firestore.dart';
import 'package:youtube_ecommerce/models/product_model.dart';
import 'package:youtube_ecommerce/widgets/my_textwidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> categoriesList = [];
  List<ProductModel> productModelList = [];

  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    getCategoryList();
  }

  void getCategoryList() async {
    setState(() {
      isLoading = true;
    });
    categoriesList = await FirebaseFirestoreHelper.instance.getCategories();
    ProductModelList = await FirebaseFirestoreHelper.instance.getCategories();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextWidget(
                text: "E-Commerce",
                size: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              SizedBox(
                height: 12,
              ),
              SearchBar(
                leading: Icon(Icons.search),
                hintText: "Search Here ...",
              ),
              SizedBox(
                height: 10,
              ),
              MyTextWidget(
                text: "Categories",
                size: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              SizedBox(
                height: 12,
              ),

              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Center(
                child: Row(
                  children: categoriesList.map((e) => Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Card(
                      color: Colors.white,
                      elevation: 13.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.network(
                          e!.image,
                          fit: BoxFit.cover, // Adjust the fit based on your preference
                        ),
                      ),
                    ),
                  )).toList(),
                ),
              ),
            ),

              SizedBox(
                height: 12,
              ),
              MyTextWidget(
                text: "Top selling",
                size: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              SizedBox(
                height: 12,
              ),
              productModelList.isEmpty ? Center(
                child: Text("Best Product is empty"),
              ) :
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: bestProducts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 8,
                  ),
                  itemBuilder: (context, index) {
                    ProductModel singleProduct = bestProducts[index];
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.redAccent.withOpacity(0.3),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                              height: 130,
                              width: 150,
                              child: Image.network(singleProduct.image)),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            singleProduct.name,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Price: \$${singleProduct.price}"),
                          SizedBox(
                            height: 6,
                          ),
                          OutlinedButton(
                            onPressed: () {
                              Get.bottomSheet(AboutDialog(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: Text("No"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: Text("Yes"),
                                  ),
                                ],
                              ));
                            },
                            child: Text(
                              "Buy",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<ProductModel> bestProducts = [
    ProductModel(
        id: "1",
        name: "Bread",
        image:
            "https://images.unsplash.com/photo-1598373182133-52452f7691ef?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        price: "Kshs 80",
        description:
            "This is a 400 grams white bread baked by Mafuko bakeries and distributors",
        status: "Fresh",
        isFavorite: false),

    ProductModel(
      id: "2",
      name: "Laptop",
      image:
          "https://media.istockphoto.com/id/1182241805/photo/modern-laptop-with-empty-screen-on-white-background-mockup-design-copy-space-text.jpg?s=1024x1024&w=is&k=20&c=Ps23IIOwZJAmqCeMbTdyEbH9xqPd5qUj4ZNQTBJZCYE=",
      price: "Kshs 33500",
      description:
          "This is a ASUS laptop with, 1080 HD Screen Resolution, 8GB RAM, 256GB ROM SSD Santa, 2.6 Ghz core base + 3.6 Ghz on Turbo Boost ",
      status: "New",
      isFavorite: true,
    ),
//item 2
    ProductModel(
      id: "3",
      name: "Office Chair",
      image:
          "https://media.istockphoto.com/id/887684850/photo/office-chair-isolated-on-white-background.jpg?s=1024x1024&w=is&k=20&c=Z2M5TXj6Gq-aBuFz_1SGpPnLSadyZ1WspRXxgaPosyY=",
      price: "Kshs 33500",
      description:
          "This is an office chair for your home office or another office",
      status: "New",
      isFavorite: true,
    ),
    //item 3
    ProductModel(
      id: "4",
      name: "Microphone",
      image:
          "https://media.istockphoto.com/id/121702134/photo/vintage-microphone-isolated-on-white-background.jpg?s=1024x1024&w=is&k=20&c=eo5qEd8hCXcgHvQDSARgCJOv9nrbPcd0Vkl4_Y8i1i0=",
      price: "Kshs 25500",
      description:
          "This is a a Gold coated Microphone with up to latest technological advancement",
      status: "New",
      isFavorite: false,
    ),

    ProductModel(
      id: "5",
      name: "Bicycle",
      image:
          "https://media.istockphoto.com/id/1488526843/photo/woman-locking-her-bicycle-at-railroad-station.jpg?s=1024x1024&w=is&k=20&c=3PhryW-15i244YT3M6jENGOEU1o5YDyBsvpLfhySTAw=",
      price: "Kshs 15500",
      description:
          "This is a bicycle with a 18 inch tire size for bikers and Mountain climbing",
      status: "New",
      isFavorite: false,
    ),

    ProductModel(
      id: "6",
      name: "Banana",
      image:
          "https://media.istockphoto.com/id/173242750/photo/banana-bunch.jpg?s=1024x1024&w=is&k=20&c=mzktjTrLz_ZdKClKR5btvo5cBY-BJ4h4QOT8LVflB2M=",
      price: "Kshs 50",
      description:
          "This is a banana variant from Uganda with sweet and succulent appearance and taste",
      status: "New",
      isFavorite: false,
    ),
  ];
}
