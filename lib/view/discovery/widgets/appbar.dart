// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inshortui/controllers/feed_controller.dart';
import 'package:inshortui/controllers/provider.dart';
import 'package:inshortui/global/global.dart';
import 'package:inshortui/style/colors.dart';
import 'package:inshortui/style/text_style.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget {

  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FeedProvider>(
      builder: (context, value, child) => SafeArea(
        child: Material(
          child: Container(
            height: 52,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.settings)
                    // Expanded(
                    //     child: Align(
                    //   alignment: Alignment.centerLeft,
                    //   child: index != 1
                    //       ? IconButton(
                    //           icon: const Icon(
                    //             Icons.settings,
                    //           ),
                    //           onPressed: () {
                    //             // Router.navigator
                    //             //     .pushNamed(Router.settingsScreen);
                    //           },
                    //         )
                    //       : Row(
                    //           mainAxisAlignment: MainAxisAlignment.start,
                    //           children: <Widget>[
                    //             IconButton(
                    //               icon:
                    //                   const Icon(Icons.arrow_back_ios_outlined),
                    //               onPressed: () {
                    //                 FeedController.addCurrentPage(0);
                    //               },
                    //             ),
                    //             Text(
                    //               "discover",
                    //               // style: T,
                    //             )
                    //           ],
                    //         ),
                    // )),
                    // Expanded(
                    //   child: Text(
                    //     index == 1
                    //         ? value.getAppBarTitle ?? "My Feed"
                    //         : "Discover",
                    //     style: AppTextStyle.appBarTitle.copyWith(
                    //       fontWeight: FontWeight.w600,
                    //       fontSize: 16,
                    //     ),
                    //     textAlign: TextAlign.center,
                    //   ),
                    // ),
                    // Expanded(
                    //   child: Align(
                    //     alignment: Alignment.centerRight,
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.end,
                    //       children: <Widget>[
                    //         index != 1
                    //             ? Text(
                    //                 value.getAppBarTitle ?? "my_feed",
                    //                 style: AppTextStyle.appBarTitle,
                    //                 overflow: TextOverflow.ellipsis,
                    //                 textDirection: TextDirection.rtl,
                    //               )
                    //             : Container(),
                    //         getIcon(context)
                    //       ],
                    //     ),
                    //   ),
                    // )
                  ],
                ),
                Container(
                  width: Global.width(context) * 0.1,
                  height: 3,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }






}
