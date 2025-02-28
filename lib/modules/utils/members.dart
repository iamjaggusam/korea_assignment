import 'package:flutter/material.dart';
import 'package:test_project_korea/modules/home/home_responses.dart';
import 'package:test_project_korea/modules/utils/resize_all.dart';

class Members extends StatelessWidget {
  final Function() onTap;
  final TypeItem item;
  final bool isTop;
  const Members(
      {super.key, required this.onTap, required this.item, this.isTop = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 16),
            height: ResponsiveUtil.resizeHeightOrWidth(context, 140),
            width: ResponsiveUtil.resizeHeightOrWidth(context, 90),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: ResponsiveUtil.resizeHeightOrWidth(context, 80),
                  width: ResponsiveUtil.resizeHeightOrWidth(context, 80),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 3,
                        color: isTop
                            ? const Color(0XFFFFD233)
                            : Colors.transparent,
                      )),
                  child: Image.asset(
                    item.image,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  item.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          isTop
              ? Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    'assets/images/crown.png',
                    color: const Color(0XFFFFD233),
                    height: 14,
                  ))
              : SizedBox()
        ],
      ),
    );
  }
}
