import 'package:bankapppp/assest/assests-folder.dart';
import 'package:bankapppp/res/colors.dart';
import 'package:bankapppp/view/AddtoWallet.dart';
import 'package:bankapppp/view/Banktobank.dart';
import 'package:bankapppp/view/Contact.dart';
import 'package:bankapppp/view/Contatc2.dart';
import 'package:bankapppp/view/RequestMoney.dart';
import 'package:bankapppp/view/ToBank.dart';
import 'package:bankapppp/view/Transactionhistory.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'ToMarchant.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 70,
          leading: Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(ImageAssests.signequal)),
              color: lightIconColor,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          centerTitle: true,
          title: Text(
            "Home",
            textAlign: TextAlign.center,
            style: CustomTextStyle.nameOfTextStyle,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageAssests.Notification)),
                  color: lightIconColor,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(left: 16),
                height: 20,
                width: 200,
                child: Text(
                  "Transfer Money",
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: greenColor),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(Tocontact());
                    },
                    child: Container(
                      width: 97,
                      height: 101,
                      decoration: BoxDecoration(
                        color: Color(0xFFE8B500),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 27, right: 28, top: 26),
                            child: Image.asset(
                              'assests/personicon.png',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 6, top: 13, right: 8),
                            child: Container(
                              height: 33,
                              width: 101,
                              child: Text(
                                'Add Contact',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Tobank()),
                      );
                    },
                    child: Container(
                      width: 97,
                      height: 101,
                      decoration: BoxDecoration(
                        color: Color(0xFFE8B500),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 27, right: 28, top: 19),
                            child: Container(
                              height: 41,
                              width: 41,
                              child: Image.asset(
                                'assests/bank.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 27, right: 11),
                            child: Container(
                              height: 33,
                              width: 92,
                              child: Text(
                                'To Bank',
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(bankTobank());
                    },
                    child: Container(
                      width: 97,
                      height: 101,
                      decoration: BoxDecoration(
                        color: Color(0xFFE8B500),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 27, right: 28, top: 21),
                            child: Container(
                              height: 40,
                              width: 50,
                              child: Image.asset(
                                'assests/bannnk.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 3),
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Bank to Bank',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(const RequestMoney());
                    },
                    child: Container(
                      width: 97,
                      height: 101,
                      decoration: BoxDecoration(
                        color: Color(0xFFE8B500),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 27,
                              right: 26,
                            ),
                            child: Image.asset(
                              'assests/hmoney.png',
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14, right: 14),
                            child: Container(
                              height: 28,
                              width: 61,
                              child: Text(
                                'Request Money',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(ToMarchant());
                    },
                    child: Container(
                      width: 97,
                      height: 101,
                      decoration: BoxDecoration(
                        color: Color(0xFFE8B500),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 27, right: 28, top: 19),
                            child: Image.asset(
                              'assests/dollar.png',
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6, right: 4),
                            child: Container(
                              height: 33,
                              width: 101,
                              child: Text(
                                'To Merchant',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 97,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 16),
                height: 20,
                width: 200,
                child: Text(
                  "Add Money",
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: greenColor),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(TransactionHistory());
                    },
                    child: Container(
                      width: 97,
                      height: 101,
                      decoration: BoxDecoration(
                        color: Color(0xFFE8B500),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 12.9,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 33, right: 35),
                            child: Image.asset(
                              'assests/notes.png',
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              height: 46,
                              width: 101,
                              child: Text(
                                'Transaction History',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(AddToWallet());
                    },
                    child: Container(
                      width: 97,
                      height: 101,
                      decoration: BoxDecoration(
                        color: Color(0xFFE8B500),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 27, right: 28, top: 13),
                            child: Container(
                              height: 45,
                              width: 43,
                              child: Image.asset(
                                'assests/voielt.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            child: Text(
                              'Add to Wallet',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 97,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
