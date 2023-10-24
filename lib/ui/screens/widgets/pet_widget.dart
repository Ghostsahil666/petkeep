
import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';

import '../../../constants.dart';
import '../../../models/Pets.dart';
import '../detail_page.dart';

class PetWidget extends StatelessWidget {
  const PetWidget({
    Key? key, required this.index, required this.petList,
  }) : super(key: key);

  final int index;
  final List<Pet> petList;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: DetailPage(
                  petId: petList[index].petId,
                ),
                type: PageTransitionType.bottomToTop));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Constants.primaryColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 80.0,
        padding: const EdgeInsets.only(left: 10, top: 10),
        margin: const EdgeInsets.only(bottom: 10, top: 10),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Constants.primaryColor.withOpacity(.8),
                    shape: BoxShape.circle,
                  ),
                ),
                Positioned(
                  top: 2,
                  bottom: 2,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    child:  CircleAvatar(
                    radius: 90,
                    backgroundImage: ExactAssetImage(petList[index].imageURL),
                  ),
                  ),
                ),

                Positioned(
                  bottom: 5,
                  left: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(petList[index].category,
                      style: TextStyle(
                        color: Color(0xff85e3b1),
                      )),
                      Text(
                        petList[index].petName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xff85e3b1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                r'₹' + petList[index].price.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Constants.primaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}