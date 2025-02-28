import 'package:flutter/material.dart';
import 'package:test_project_korea/modules/home/home_responses.dart';
import 'package:test_project_korea/modules/utils/resize_all.dart';

class ProductCard extends StatelessWidget {
  final Function(int index) onTap;
  final TypeItem item;
  final int index;
  const ProductCard(
      {super.key,
      required this.onTap,
      required this.item,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ResponsiveUtil.resizeHeightOrWidth(context, 130),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 0.5, color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Image.asset(
                      item.image,
                      fit: BoxFit.cover,
                      height: ResponsiveUtil.resizeHeightOrWidth(context, 80),
                      width: ResponsiveUtil.resizeHeightOrWidth(context, 80),
                    ),
                  )),
              Positioned(
                  top: 4,
                  left: 4,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/crown.png',
                        color: const Color(0XFFFFD233),
                        height: 18,
                      ),
                      Positioned(
                        top: 4,
                        left: 9,
                        child: Text(
                          "$index",
                          style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ))
            ],
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  maxLines: 1,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text(
                  item.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 14,
                      color: const Color(0XFFFFD233),
                    ),
                    Text(
                      item.rating.start,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: const Color(0XFFFFD233),
                      ),
                    ),
                    Text(
                      "(${item.rating.count})",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Container(
                      height: ResponsiveUtil.resizeHeightOrWidth(context, 24),
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromARGB(61, 158, 158, 158)),
                      child: Text(
                        item.brand.name,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w100,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: ResponsiveUtil.resizeHeightOrWidth(context, 24),
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromARGB(61, 158, 158, 158)),
                      child: Text(
                        item.brand.name,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w100,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
