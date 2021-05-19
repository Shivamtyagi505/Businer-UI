import 'package:businer/screens/googlemaps.dart';
import 'package:businer/utils/category.dart';
import 'package:businer/utils/details.dart';
import 'package:businer/utils/searchbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.near_me_outlined),
          color: Colors.grey,
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: RichText(
          text: TextSpan(
            style: Theme.of(context)
                .textTheme
                .title
                .copyWith(fontWeight: FontWeight.w400),
            children: [
              TextSpan(
                text: "London",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Hi, Samanta',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(left: 100, right: 20),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(25)),
                    child: Image.asset('assets/images/user-male.png'),
                  ),
                ],
              ),
              SearchBar(),
              Container(
                height: 200,
                width: 600,
                child: Image.asset("assets/images/banner.png",
                    height: 100, width: 350),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      'Popular',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.tune_rounded,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () {})
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.count(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  crossAxisCount: 2,
                  childAspectRatio: .85,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: <Widget>[
                    CategoryCard(
                      title: "Covishield",
                      svgSrc: "assets/images/medicinefour.png",
                      press: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>GoogleMaps()));
                      },
                    ),
                    CategoryCard(
                      title: "Covaxin",
                      svgSrc: "assets/images/medicinethi.png",
                      press: () {},
                    ),
                    CategoryCard(
                      title: "Pfizer",
                      svgSrc: "assets/images/medicinefive.png",
                      press: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) {
                        //     return DetailsScreen();
                        //   }),
                        // );
                      },
                    ),
                    CategoryCard(
                      title: "Sputnik",
                      svgSrc: "assets/images/medicine.png",
                      press: () {},
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
