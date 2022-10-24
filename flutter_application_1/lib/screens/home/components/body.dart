import 'package:flutter/material.dart';
import 'package:flutter_application_1/model.dart/responsive.dart';

import '../../../constant.dart';
import '../../../model.dart/product_model.dart';
import 'email_banner.dart';
import 'product.dart';
import 'services_card.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final Size _size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(kPadding),
      constraints: const BoxConstraints(maxWidth: kMaxWidth),
      child: Column(
        children: [
          const ServicesCard(),
          //now we create model of our product images
          Responsive(
              mobile: ProductCard(
                crossAxiscount: _size.width < 690 ? 2 : 3,
                aspectRatio: _size.width < 630 ? 0.85 : 1.1,
              ),
              tablet: ProductCard(
                crossAxiscount: _size.width < 970 ? 2 : 3,
                aspectRatio: _size.width < 970 ? 0.85 : 1.1,
              ),
              desktop: ProductCard(
                crossAxiscount: _size.width < 650 ? 2 : 3,
                aspectRatio: _size.width < 650 ? 0.85 : 1.1,
              )),
          const SizedBox(
            height: 20,
          ),
          const EmailBanner(),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.crossAxiscount = 3,
    this.aspectRatio = 1.1,
  }) : super(key: key);
  final int crossAxiscount;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxiscount, childAspectRatio: aspectRatio),
      itemBuilder: (context, index) => Products(
        press: () {},
        product: products[index],
      ),
      itemCount: products.length,
    );
  }
}
