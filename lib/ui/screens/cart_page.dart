import 'package:flutter/material.dart';
import 'package:flutter_onboarding/ui/screens/widgets/pet_widget.dart';

import '../../constants.dart';
import '../../models/Pets.dart';


class CartPage extends StatefulWidget {
  final List<Pet> addedToCartPets;
  const CartPage({Key? key, required this.addedToCartPets}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff06100b),
      body: widget.addedToCartPets.isEmpty
          ? Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              child: Image.asset('assets/images/add-cart.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Your Cart is Empty',
              style: TextStyle(
                color: Color(0xff85e3b1),
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            ),
          ],
        ),
      )
          : Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
        height: size.height,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: widget.addedToCartPets.length,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return PetWidget(
                        index: index, petList: widget.addedToCartPets);
                  }),
            ),
            Column(
              children: [
                const Divider(thickness: 1.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Total Amount',style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff85e3b1),
                    ),
                    ),
                      Text(r'₹XYZ', style: TextStyle(
                        fontSize: 24.0,
                        color: Constants.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
