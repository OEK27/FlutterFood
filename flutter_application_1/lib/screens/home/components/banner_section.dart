// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 3,
          child: AboutSection(),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Image.asset("assets/images/banner.png"),
            ],
          ),
        )
      ],
    );
  }
}

class MobBanner extends StatefulWidget {
  const MobBanner({Key? key}) : super(key: key);

  @override
  State<MobBanner> createState() => _MobBannerState();
}

class _MobBannerState extends State<MobBanner> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(children: [
          Image.asset(
            "assets/images/banner.png",
            height: 111,
            width: 150,
          ),
        ]),
        const SizedBox(
          height: 10,
        ),
        const AboutSection(),
      ],
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AutoSizeText(
          "Eat today",
          maxLines: 1,
          style: TextStyle(fontSize: 56, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        AutoSizeText(
          "Live another day",
          maxLines: 1,
          style: TextStyle(
            fontSize: 56,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        AutoSizeText(
          "Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed asdasdasdaw adsf zxcas asda asdas dasd as das dxzc xz cwer werg sd f  d ",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: 50,
            decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.grey.withOpacity(0.3))),
            child: TextFormField(
              decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.adjust_rounded,
                    color: kSecondaryColor,
                  ),
                  hintText: "Search your favorite food",
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none)),
            )),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
                child: MaterialButton(
                    height: 55,
                    color: kSecondaryColor,
                    onPressed: () {},
                    child: const Text("Delivery", style: TextStyle(color: Colors.white, fontSize: 16)))),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Or",
                style: TextStyle(color: kSecondaryColor, fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 50,
                child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(side: const BorderSide(color: kSecondaryColor)),
                    child: const Text(
                      "Pick Up",
                      style: TextStyle(color: kSecondaryColor, fontSize: 16, fontWeight: FontWeight.w600),
                    )),
              ),
            )
          ],
        )
      ],
    );
  }
}
