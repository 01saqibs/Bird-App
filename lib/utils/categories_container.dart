import 'package:flutter/material.dart';
class CustomTab extends StatefulWidget {
  const CustomTab({
    required this.image,
    required this.name,
    Key? key,
  }) : super(key: key);
  final String image;
  final String name;
  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
            border: Border.all(
                width: 1,
                color: Colors.white),
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 15.3,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage(widget.image),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              widget.name,
              style: const TextStyle(
                  fontSize: 16,fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
