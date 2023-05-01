import 'package:flutter/material.dart';
class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 0, 20, 0,),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width*0.6,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(
              color: Colors.white10,
              spreadRadius: 1,
              blurRadius: 0.6,
              offset: Offset(1, 1)
            )]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                
              )
            ],
          ),
        ),
      ),
    );
  }
}