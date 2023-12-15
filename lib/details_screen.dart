import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_flutter_vol01/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SvgPicture.asset(
                    "assets/icons/backward.svg",
                    height: 11,
                  ),
                  SvgPicture.asset(
                    "assets/icons/menu.svg",
                    height: 11,
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  padding: const EdgeInsets.all(6),
                  height: 305,
                  width: 305,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kSecondaryColor
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/image_1_big.png"),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Vegan salad bowl\n",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        TextSpan(
                          text: "With red tomato",
                          style: TextStyle(
                            color: kTextColor.withOpacity(0.5)
                          ),
                        ),
                      ]
                    ),
                  ),
                  Text(
                    "\Php 20",
                    style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(
                      color: kPrimaryColor
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 20 years old. ",
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 27),
                      decoration: BoxDecoration(
                        color: kPrimaryColor.withOpacity(0.19),
                        borderRadius: BorderRadius.circular(27),
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Add to bag",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(width: 30),
                          SvgPicture.asset(
                            "assets/icons/forward.svg",
                            height: 11,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryColor.withOpacity(0.26),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(15),
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimaryColor,
                            ),
                            child: SvgPicture.asset("assets/icons/bag.svg"),
                          ),
                          Positioned(
                            right: 15,
                            bottom: 10,
                            child: Container(
                              alignment: Alignment.center,
                              height: 28,
                              width: 28,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: kWhiteColor,
                              ),
                              child: Text(
                                "0",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(color: kPrimaryColor, fontSize: 16),
                              ),
                            ),
                          )
                        ], 
                      ),
                    )
                  ],
                ),
              )
            ]
          ),
        )
      );
  }
}