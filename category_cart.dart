import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomeSreen extends StatelessWidget {
  const HomeSreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        height: 80,
        color: Colors.black,
        child: Row(
          children: [
            SvgPicture.asset("assets/icons/home.svg",color: Colors.white,),
            Spacer(),
            SvgPicture.asset("assets/icons/chat.svg",color: Colors.white,),
            Spacer(),
            SvgPicture.asset("assets/icons/stats.svg",color: Colors.white,),
            Spacer(),
            SvgPicture.asset("assets/icons/profile.svg",color: Colors.white,),
          ],
        ),
      ),
      body: Stack(
      children: [
        Container(
          height: size.height*.45,
          decoration: BoxDecoration(
            color: Color(0xFFF9D76C1),
            
            ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Color(0xffE5CFF7),
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.menu_rounded),
                  
                  ),
                ),
                Text("Good Morning \nUser",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w900),

                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29.5)
                    ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      icon: Icon(Icons.search_rounded),
                      border: InputBorder.none
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      CategoryCard(
                        title: "Diet Recommendation",
                        svgSrc: "assets/icons/Hamburger.svg",
                        press: (){},
                      ),
                       CategoryCard(
                        title: "Exercises",
                        svgSrc: "assets/icons/Excrecises.svg",
                         press: (){},
                      ), 
                      CategoryCard(
                        title: "Yoga",
                        svgSrc: "assets/icons/yoga.svg",
                         press: (){},
                      ),
                      CategoryCard(
                        title: "Meditation",
                        svgSrc: "assets/icons/Meditation_women_small.svg",
                         press: (){},
                      ),
                     
                    ],
                    ),
                )
              ],
            ),
          ),
        )
      ],
      ));
  }
}

class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  
  const CategoryCard({
    super.key, 
    required this.svgSrc, 
    required this.title, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
       borderRadius: BorderRadius.circular(15),
      child: Container(
        //padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset(svgSrc),
                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 15),
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}