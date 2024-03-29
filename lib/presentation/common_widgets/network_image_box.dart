import 'package:flutter/material.dart';

class NetworkImageBox extends StatelessWidget {
  const NetworkImageBox( 
      {super.key,
      required this.height,
      required this.width,
      required this.image,
      required this.borderradius});

  final dynamic height;
  final dynamic width;
  final String image;
  final double borderradius;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(borderradius)),
    );
  }
}

class NetworkImageBoxWithoutHeight extends StatelessWidget {
  const NetworkImageBoxWithoutHeight( 
      {super.key,
  
      required this.image,
      required this.borderradius});


  final String image;
  final double borderradius;
  
  @override
  Widget build(BuildContext context) {
    return Container(
    
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(borderradius)),
    );
  }
}