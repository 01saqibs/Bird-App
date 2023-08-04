import 'package:flutter/material.dart';
import 'package:untitled/pages/birds_info.dart';
import 'package:untitled/utils/data_card.dart';
import 'categories_container.dart';
import 'data_class.dart';


// Tab Bar

class CategoriesTabBar extends StatelessWidget {
  const CategoriesTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBar(
        unselectedLabelColor: Colors.white60,
        labelColor: Colors.white,
        isScrollable: true,
        labelPadding: EdgeInsets.fromLTRB(5, 5, 5, 6),
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              width: 3,
              color: Colors.white,
            ),
            insets: EdgeInsets.symmetric(horizontal: 25.0)),
        tabs: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: CustomTab(
              image: "assets/images/parrots/img_3.png",
              name: "Parrots",
            ),
          ),
          CustomTab(
            image: "assets/images/pigeons/img_10.png",
            name: "Pigeons",
          ),
          CustomTab(
            image: "assets/images/doves/img_4.png",
            name: "Doves",
          ),
          CustomTab(
            image: "assets/images/sparrows/img_1.png",
            name: "Sparrows",
          ),
          CustomTab(
            image: "assets/images/hens/img_2.png",
            name: "Hens",
          ),
          CustomTab(
            image: "assets/images/ducks/img_10.png",
            name: "Ducks",
          ),
          CustomTab(
            image: "assets/images/ducks/img_10.png",
            name: "Eagles",
          ),
          CustomTab(
            image: "assets/images/ducks/img_10.png",
            name: "Pheasents",
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CustomTab(
              image: "assets/images/eagles/img_3.png",
              name: "others",
            ),
          ),
        ]);
  }
}

//Tab Bar Data

class CategoriesData extends StatelessWidget {
  const CategoriesData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(children: [
        ListView.builder(
          itemCount: parrots.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => BirdsInfo(
                          data: parrots[index],
                          name: categories[0],
                        )));
              },
              child: ProductsMain(image: parrots[index].icon, name: parrots[index].name)),
        ),
        ListView.builder(
          itemCount: pigeons.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => BirdsInfo(
                          data: pigeons[index],
                          name: categories[1],
                        )));
              },
              child: ProductsMain(image: pigeons[index].icon, name: pigeons[index].name,)),
        ),
        ListView.builder(
          itemCount: doves.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => BirdsInfo(
                          data: doves[index],
                          name: categories[2],
                        )));
              },
              child: ProductsMain(image: doves[index].icon, name: doves[index].name,)),
        ),
        ListView.builder(
          itemCount: sparrows.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => BirdsInfo(
                          data: sparrows[index],
                          name: categories[3],
                        )));
              },
              child: ProductsMain(image: sparrows[index].icon, name: sparrows[index].name,)),
        ),
        ListView.builder(
          itemCount: hens.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => BirdsInfo(
                          data: hens[index],
                          name: categories[4],
                        )));
              },
              child: ProductsMain(image: hens[index].icon, name: hens[index].name,)),
        ),
        ListView.builder(
          itemCount: ducks.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => BirdsInfo(
                          data: ducks[index],
                          name: categories[5],
                        )));
              },
              child: ProductsMain(image: ducks[index].icon, name: ducks[index].name,)),
        ),
        ListView.builder(
          itemCount: eagles.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => BirdsInfo(
                          data: eagles[index],
                          name: categories[6],
                        )));
              },
              child: ProductsMain(image: eagles[index].icon, name: eagles[index].name,)),
        ),
        ListView.builder(
          itemCount: pheasent.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => BirdsInfo(
                          data: pheasent[index],
                          name: categories[7],
                        )));
              },
              child: ProductsMain(image: pheasent[index].icon, name: pheasent[index].name,)),
        ),
        ListView.builder(
          itemCount: others.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => BirdsInfo(
                          data: others[index],
                          name: categories[8],
                        )));
              },
              child: ProductsMain(image: others[index].icon, name: others[index].name,)),
        ),
      ]),
    );
  }
}


