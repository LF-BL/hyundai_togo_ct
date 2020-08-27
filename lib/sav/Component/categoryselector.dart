import 'package:hyundai_togo_ct/sav/pages/carevolution.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Home page', 'My account', 'Chat','Car evolution'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,

      color: Colors.indigo,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex= index;
                });
              },
              child: Padding(padding: EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 19.0,
              ),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color: index == selectedIndex ? Colors.white : Colors.white10,
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,),
                ),
              ),
            );
          }),
    );
  }
}
