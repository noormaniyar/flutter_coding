import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text("Catalog App"),
            // Text("Trending Products"),
            "Catalog App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
            "Trending Products".text.xl2.make(),
          ],
        ),
      );
    }
  }
