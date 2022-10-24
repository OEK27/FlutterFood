import 'package:flutter/material.dart';

import '../../../constant.dart';

class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderMenu(
          press: () {},
          title: "Menu",
        ),
        const SizedBox(width: kPadding),
        HeaderMenu(
          press: () {},
          title: "For Riders",
        ),
        const SizedBox(width: kPadding),
        HeaderMenu(
          press: () {},
          title: "About",
        ),
        const SizedBox(width: kPadding),
        HeaderMenu(
          press: () {},
          title: "Reviews",
        ),
        const SizedBox(width: kPadding),
        HeaderMenu(
          press: () {},
          title: "Restaurants",
        ),
      ],
    );
  }
}

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
          child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 13,
        ),
      )),
    );
  }
}

class MobMenu extends StatefulWidget {
  const MobMenu({Key? key}) : super(key: key);

  @override
  State<MobMenu> createState() => _MobMenuState();
}

class _MobMenuState extends State<MobMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderMenu(
            press: () {},
            title: "Menu",
          ),
          const SizedBox(width: kPadding),
          HeaderMenu(
            press: () {},
            title: "For Riders",
          ),
          const SizedBox(width: kPadding),
          HeaderMenu(
            press: () {},
            title: "About",
          ),
          const SizedBox(width: kPadding),
          HeaderMenu(
            press: () {},
            title: "Reviews",
          ),
          const SizedBox(width: kPadding),
          HeaderMenu(
            press: () {},
            title: "Restaurants",
          ),
        ],
      ),
    );
  }
}

class MoobFooterWebMenu extends StatelessWidget {
  const MoobFooterWebMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        HeaderMenu(
          press: () {},
          title: "Menu",
        ),
        const SizedBox(width: kPadding / 2),
        HeaderMenu(
          press: () {},
          title: "For Riders",
        ),
        const SizedBox(width: kPadding / 2),
        HeaderMenu(
          press: () {},
          title: "About",
        ),
        const SizedBox(width: kPadding / 2),
        HeaderMenu(
          press: () {},
          title: "Reviews",
        ),
        const SizedBox(width: kPadding / 2),
        HeaderMenu(
          press: () {},
          title: "Restaurants",
        ),
      ],
    );
  }
}
