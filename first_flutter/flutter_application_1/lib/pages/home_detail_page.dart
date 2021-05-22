import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class homeDetailPage extends StatelessWidget {

  final Item catalog;

  const homeDetailPage({Key key, @required this.catalog}) 
  : assert(catalog !=null),
  super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red700.make(),
              ElevatedButton(
                onPressed: (){},
                style: ButtonStyle(
                  backgroundColor:
                    MaterialStateProperty.all(MyTheme.darkBluishColor),
                  shape: MaterialStateProperty.all(StadiumBorder(),), 
                ),
                child: "Buy".text.make(),
              ).wh(100, 50)
            ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)
            ),
            Expanded(
              child: VxArc(
                height: 30,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4.color(MyTheme.darkBluishColor).bold.make(),
                      catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    ],
                  ).py64(),
                ),
              ),
            ),
          ],
        ).p16(),
      ),     
    );
  }
}