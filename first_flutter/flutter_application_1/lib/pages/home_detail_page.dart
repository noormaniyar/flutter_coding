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
          appBar: AppBar(
              backgroundColor: Colors.transparent,
            ),
          backgroundColor: context.canvasColor,
          bottomNavigationBar: Container(
            color: context.cardColor,
            child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl4.red700.make(),
                  ElevatedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor:
                        MaterialStateProperty.all(context.theme.buttonColor),
                      shape: MaterialStateProperty.all(StadiumBorder(),), 
                    ),
                    child: "Add to Cart".text.make(),
                  ).wh(150, 50)
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
                      color: context.cardColor,
                      width: context.screenWidth,
                      child: Column(
                        children: [
                          catalog.name.text.xl4.color(context.accentColor).bold.make(),
                          catalog.desc.text.textStyle(context.captionStyle).xl.make(),10.heightBox,
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In cursus ipsum a eros pulvinar feugiat. Aliquam mollis tincidunt magna ut molestie. Nam iaculis rutrum diam, et fringilla risus vulputate quis. Curabitur lacinia nisl tortor. Donec aliquet risus vel orci convallis aliquet. Curabitur interdum auctor nunc, non euismod lectus faucibus sed. Duis ac ullamcorper felis. Praesent feugiat elementum tortor, vitae tristique quam elementum ut. Donec nisi nisl, sagittis pellentesque porttitor laoreet, pulvinar vel tellus."
                          .text.textStyle(context.captionStyle).make().p16(),
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