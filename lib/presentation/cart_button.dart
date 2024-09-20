import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          child: Container(
            width: 80.0,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 138, 141, 221),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                topLeft: Radius.circular(48),
                bottomLeft: Radius.circular(48),
                bottomRight: Radius.circular(8),
              ),
            ),
          ),
        ),
        const Positioned(
          right: 16,
          child: Icon(Icons.shopping_cart_outlined, size: 32),
        ),
      ],
    );
  }
}
