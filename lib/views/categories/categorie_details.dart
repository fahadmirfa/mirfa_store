import 'package:mirfa_store/consts/consts.dart';
import 'package:mirfa_store/consts/list.dart';

import 'items_details.dart';


class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BgContainerWidget(
        child: Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      6,
                      (index) => "Baby Cloth"
                          .text
                          .size(12)
                          .color(darkFontGrey)
                          .fontFamily(semibold)
                          .makeCentered()
                          .box
                          .white
                          .size(120, 60)
                          .roundedSM
                          .margin(EdgeInsets.symmetric(horizontal: 4))
                          .make())),
            ),

            //items Container
20.heightBox,
            Expanded(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,mainAxisExtent: 250,crossAxisSpacing: 8,mainAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP1,
                            width: 200,
                            height: 150,
                            fit: BoxFit.cover,
                          ),

                          "Laptop 8gb/256gb"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                          10.heightBox,
                          "\$600"
                              .text
                              .color(redColor)
                              .size(16)
                              .fontFamily(bold)
                              .make(),
                        ],
                      )
                          .box
                          .white
                          .roundedSM
                      .outerShadow
                          .padding(EdgeInsets.all(12))
                          .margin(EdgeInsets.symmetric(horizontal: 4))
                          .make().onTap(() { Get.to(()=>ItemsDetail(title:"Dummy Data"));});
                    }))
          ],
        ),
      ),
    ));
  }
}
