import 'package:flutter/material.dart';
import 'package:test_project_korea/modules/home/home_responses.dart';

import '../utils/resize_all.dart';

class DetailScreen extends StatefulWidget {
  final TypeItem item;
  const DetailScreen({super.key, required this.item});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<String> features = [
    '“가격 저렴해요”',
    '“CPU온도 고온”',
    '“서멀작업 가능해요”',
    '“게임 잘 돌아가요”',
    '“발열이 적어요”'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          navBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  profile(context),
                  product(context),
                  productDetail(context)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding productDetail(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                widget.item.image,
                height: ResponsiveUtil.resizeHeightOrWidth(context, 50),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.item.title,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 14,
                        color: const Color(0XFFFFD233),
                      ),
                      Icon(
                        Icons.star,
                        size: 14,
                        color: const Color(0XFFFFD233),
                      ),
                      Icon(
                        Icons.star,
                        size: 14,
                        color: const Color(0XFFFFD233),
                      ),
                      Icon(
                        Icons.star,
                        size: 14,
                        color: const Color(0XFFFFD233),
                      ),
                      Icon(
                        Icons.star,
                        size: 14,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '2022.12.09',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.bookmark_border_outlined)
            ],
          ),
          SizedBox(
            height: ResponsiveUtil.resizeHeightOrWidth(context, 20),
          ),
          SizedBox(
            height: ResponsiveUtil.resizeHeightOrWidth(context, 40),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: features.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(features[index]),
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.bolt,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Text(
                        '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.bolt,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Text(
                        '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: ResponsiveUtil.resizeHeightOrWidth(context, 20),
                ),
                SizedBox(
                  height: ResponsiveUtil.resizeHeightOrWidth(context, 100),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child:
                              Image.asset('assets/images/live${index + 1}.png'),
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 0.5,
                  width: double.infinity,
                  color: const Color.fromARGB(101, 158, 158, 158),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/chat.png',
                      height: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '댓글 달기..',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Column product(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  "작성한 리뷰",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "총 35개",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(8),
                  height: ResponsiveUtil.resizeHeightOrWidth(context, 40),
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.black),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Text('최신순'),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.arrow_drop_down_outlined)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 0.5,
          width: double.infinity,
          color: const Color.fromARGB(101, 158, 158, 158),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 0.5, color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Image.asset(
                      'assets/images/product4.png',
                      fit: BoxFit.cover,
                      height: ResponsiveUtil.resizeHeightOrWidth(context, 80),
                      width: ResponsiveUtil.resizeHeightOrWidth(context, 80),
                    ),
                  )),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'AMD 라이젠 5 5600X 버미어정품 멀티팩',
                      maxLines: 1,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 18,
                          color: const Color(0XFFFFD233),
                        ),
                        Icon(
                          Icons.star,
                          size: 18,
                          color: const Color(0XFFFFD233),
                        ),
                        Icon(
                          Icons.star,
                          size: 18,
                          color: const Color(0XFFFFD233),
                        ),
                        Icon(
                          Icons.star,
                          size: 18,
                          color: const Color(0XFFFFD233),
                        ),
                        Icon(
                          Icons.star,
                          size: 18,
                          color: Colors.grey,
                        ),
                        Text(
                          '4.07',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: const Color(0XFFFFD233),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height: 0.5,
          width: double.infinity,
          color: const Color.fromARGB(101, 158, 158, 158),
        ),
      ],
    );
  }

  Column profile(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: ResponsiveUtil.resizeHeightOrWidth(context, 30),
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              widget.item.image,
              height: ResponsiveUtil.resizeHeightOrWidth(context, 120),
            )),
        SizedBox(
          height: ResponsiveUtil.resizeHeightOrWidth(context, 20),
        ),
        Text(
          widget.item.title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/crown.png',
              height: ResponsiveUtil.resizeHeightOrWidth(context, 20),
            ),
            Text(
              '골드',
              style: TextStyle(fontSize: 20, color: const Color(0XFFFFD233)),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: ResponsiveUtil.resizeHeightOrWidth(context, 36),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: const Color.fromARGB(61, 158, 158, 158)),
          child: Text(
            '조립컴 업체를 운영하며 리뷰를 작성합니다.',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w100,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          color: const Color.fromARGB(29, 158, 158, 158),
          height: 16,
        ),
      ],
    );
  }

  SafeArea navBar() {
    return SafeArea(
      bottom: false,
      child: Container(
        height: ResponsiveUtil.resizeHeightOrWidth(context, 80),
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 0.5, color: Colors.black))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SizedBox(
                height: 40,
                width: 40,
                child: Icon(Icons.arrow_back_ios_new_outlined,
                    size: ResponsiveUtil.resizeHeightOrWidth(context, 24)),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "랭킹 1위",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
                Text(
                  "베스트 리뷰어",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox()
          ],
        ),
      ),
    );
  }
}
