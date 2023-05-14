import 'package:mirfa_store/consts/consts.dart';


Widget TheButton ({onpress,color,textColor,String? title}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: color,
      padding: EdgeInsets.all(12),
    ),
    onPressed: onpress
    , child: title!.text.color(textColor).fontFamily(bold).make(),
  
  );
}