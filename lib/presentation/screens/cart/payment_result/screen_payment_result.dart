import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../homepage/screen_homepage.dart';

class PaymentResultScreen extends StatefulWidget {
  const PaymentResultScreen({super.key});

  @override
  State<PaymentResultScreen> createState() => _PaymentResultScreenState();
}

class _PaymentResultScreenState extends State<PaymentResultScreen> {
  @override
  void initState() {
   
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => const HomePageScreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Image.network('https://img.freepik.com/free-vector/tiny-people-standing-near-big-checkmark-team-male-female-characters-finishing-work-with-list-good-job-sign-flat-vector-illustration-done-job-checklist-time-management-concept_74855-21019.jpg?w=740&t=st=1690206055~exp=1690206655~hmac=e267dd511c60c683324ab64637ec3ed568b651350dbaf2f674b6fff07f17c23b'
      ),),
    );
  }
}