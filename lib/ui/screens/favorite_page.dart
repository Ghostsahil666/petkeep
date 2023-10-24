import 'package:flutter/material.dart';
import 'package:flutter_onboarding/ui/screens/widgets/pet_widget.dart';



import '../../models/Pets.dart';

class FavoritePage extends StatefulWidget {
  final List<Pet> favoritedPets;
  const FavoritePage({Key? key, required this.favoritedPets})
      : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff06100b),
      body: widget.favoritedPets.isEmpty
          ? const Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CircleAvatar(
                    radius: 60,
                    backgroundImage: ExactAssetImage('assets/images/favorited.png'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your favorited Pets',
                    style: TextStyle(
                      color:Color(0xffffffff),
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            )

          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 1),
              height: size.height ,
              child: ListView.builder(
                  itemCount: widget.favoritedPets.length,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return PetWidget(
                        index: index, petList: widget.favoritedPets);
                  }),
            ),
    );
  }
}
