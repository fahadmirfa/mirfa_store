import 'package:mirfa_store/consts/consts.dart';
import 'package:mirfa_store/consts/list.dart';
import 'package:mirfa_store/views/account/component/detail_card.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BgContainerWidget(
        child: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.edit,
                    color: whiteColor,
                  )).onTap(() {}),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Image.asset(
                    imgProfile2,
                    width: 90,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.widthBox,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Dummy User".text.fontFamily(semibold).white.make(),
                        "Customer@gmail.com".text.white.make(),
                      ],
                    ),
                  ),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: whiteColor,
                        ),
                      ),
                      onPressed: () {},
                      child: logout.text.fontFamily(semibold).white.make())
                ],
              ),
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DetailCards(
                    count: "00",
                    title: "In your cart",
                    width: context.screenWidth / 3.4),
                DetailCards(
                    count: "34",
                    title: "In your wishlist",
                    width: context.screenWidth / 3.4),
                DetailCards(
                    count: "675",
                    title: "Your Oders",
                    width: context.screenWidth / 3.4),
              ],
            ),

            ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Image.asset(
                          profileButtonsIcon[index],
                          width: 22,
                        ),
                        title: profileButtonsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: lightGrey,
                      );
                    },
                    itemCount: profileButtonsList.length)
                .box
                .white
                .rounded
                .shadowSm
            .margin(EdgeInsets.all(12),)
                .padding(EdgeInsets.symmetric(horizontal: 16))
                .make().box.color(redColor).make(),
          ],
        ),
      ),
    ));
  }
}
