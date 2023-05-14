import 'package:mirfa_store/consts/consts.dart';
import 'package:mirfa_store/widget_common/home_buttons.dart';

import '../../consts/list.dart';
import 'components/feature_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      padding: EdgeInsets.all(12),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              alignment: Alignment.center,
              color: lightGrey,
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: whiteColor,
                    hintText: searchAny,
                    hintStyle: TextStyle(color: textfieldGrey)),
              ),
            ),
            20.heightBox,
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    // Swiper for deals showing
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        height: 150,
                        itemCount: brandSlidersLists.length,
                        itemBuilder: (context, index) {
                          return Container(
                              child: Image.asset(
                            brandSlidersLists[index],
                            fit: BoxFit.fill,
                          )
                                  .box
                                  .rounded
                                  .clip(Clip.antiAlias)
                                  .margin(EdgeInsets.symmetric(horizontal: 8))
                                  .make());
                        }),

                    20.heightBox,
                    //buttons for deals
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                          (index) => HomeButtons(
                                height: context.screenHeight * 0.15,
                                width: context.screenWidth / 2.5,
                                icon: index == 0 ? icTodaysDeal : icFlashDeal,
                                title: index == 0 ? todayDeal : flashSale,
                              )),
                    ),
                    20.heightBox,
                    //second sliders for deals showing
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        height: 150,
                        itemCount: secondBrandSlidersLists.length,
                        itemBuilder: (context, index) {
                          return Container(
                              child: Image.asset(
                            secondBrandSlidersLists[index],
                            fit: BoxFit.fill,
                          )
                                  .box
                                  .rounded
                                  .clip(Clip.antiAlias)
                                  .margin(EdgeInsets.symmetric(horizontal: 8))
                                  .make());
                        }),

                    20.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          3,
                          (index) => HomeButtons(
                                height: context.screenHeight * 0.13,
                                width: context.screenWidth / 3.5,
                                icon: index == 0
                                    ? icTopCategories
                                    : index == 1
                                        ? icBrands
                                        : icTopSeller,
                                title: index == 0
                                    ? topCategory
                                    : index == 1
                                        ? brand
                                        : topSeller,
                              )),
                    ),

                    //feature category
                    20.heightBox,
                    Align(
                        alignment: Alignment.centerLeft,
                        child: featureCategory.text
                            .color(darkFontGrey)
                            .fontFamily(semibold)
                            .size(18)
                            .make()),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            3,
                            (index) => Column(
                                  children: [
                                    FeatureButtons(
                                        icon: FeatureImagesLists1[index],
                                        title: FeatureTitleLists1[index]),
                                    10.heightBox,
                                    FeatureButtons(
                                        icon: FeatureImagesLists2[index],
                                        title: FeatureTitleLists2[index]),
                                  ],
                                )).toList(),
                      ),
                    ),

                    //feature products
                    20.heightBox,
                    Container(
                      padding: EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: BoxDecoration(color: redColor),
                      child: Column(
                        children: [
                          featureProduct.text
                              .fontFamily(bold)
                              .size(18)
                              .white
                              .make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                6,
                                (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      imgP1,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    ),
                                    10.heightBox,
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
                                    .padding(EdgeInsets.all(8))
                                    .margin(EdgeInsets.symmetric(horizontal: 4))
                                    .make(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //third swiper

                    20.heightBox,

                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        height: 150,
                        itemCount: secondBrandSlidersLists.length,
                        itemBuilder: (context, index) {
                          return Container(
                              child: Image.asset(
                            secondBrandSlidersLists[index],
                            fit: BoxFit.fill,
                          )
                                  .box
                                  .rounded
                                  .clip(Clip.antiAlias)
                                  .margin(EdgeInsets.symmetric(horizontal: 8))
                                  .make());
                        }),

                    20.heightBox,

                    //All product

                    GridView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 300,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                        ),
                        itemBuilder: (context, index) {
                          return  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                imgP1,
                                width: 200,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                              Spacer(),
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
                              .padding(EdgeInsets.all(12))
                              .margin(EdgeInsets.symmetric(horizontal: 4))
                              .make();
                        })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
