import 'package:mirfa_store/consts/consts.dart';

Widget BgContainerWidget ({Widget? child}){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image:AssetImage(imgBackground),fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}