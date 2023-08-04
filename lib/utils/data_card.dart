import 'package:flutter/material.dart';
class ProductsMain extends StatefulWidget {
  const ProductsMain({
    Key? key,
    required this.image, required this.name,
  }) : super(key: key);

  final String image; final String name;

  @override
  State<ProductsMain> createState() => _ProductsMainState();
}

class _ProductsMainState extends State<ProductsMain> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25,10,20,10),
      child: Row(
        children: [
        Container(
        width: 230, height: 230,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [
                Colors.white12,
                Colors.purple.withOpacity(0.60),
              ]
          ),),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.centerLeft,
                colors: [
                  Colors.white12,
                  Colors.pinkAccent.withOpacity(0.50),
                ]
            ),),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 3,
                  blurRadius: 5,
                )
              ],
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(widget.image,),
            ),
          ),
        ),
      ),
          const SizedBox(
            width: 20,
          ),
          Flexible(child: Text(widget.name, maxLines: 2, overflow: TextOverflow.ellipsis,style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.pinkAccent, fontSize: 20),)),
        ],
      ),
    );
  }
}