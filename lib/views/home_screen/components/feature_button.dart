import 'package:mirfa_store/consts/consts.dart';


Widget FeatureButtons({String? title,icon}){

  return Row(
    children: [
      Image.asset(icon,width: 60,fit: BoxFit.fill,),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.white.padding(EdgeInsets.all(4)).margin(EdgeInsets.symmetric(horizontal: 4)).width(200).roundedSM.outerShadowSm.make();
}