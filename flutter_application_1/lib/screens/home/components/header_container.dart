import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../model.dart/responsive.dart';
import 'banner_section.dart';
import 'header.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: kPrimaryColor,
      height: 621,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(kPadding),
            constraints: const BoxConstraints(maxWidth: kMaxWidth),
            child: Column(
              children: [
                const Header(),
                const SizedBox(
                  height: 50,
                ),
                Responsive.isDesktop(context) ? const BannerSection() : const MobBanner(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
