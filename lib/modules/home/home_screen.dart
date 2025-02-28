import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project_korea/modules/detail/detail_screen.dart';
import 'package:test_project_korea/modules/home/home_bloc.dart';
import 'package:test_project_korea/modules/home/home_responses.dart';
import 'package:test_project_korea/modules/utils/constants.dart';
import 'package:test_project_korea/modules/utils/members.dart';
import 'package:test_project_korea/modules/utils/product_card.dart';
import '../utils/carasoul_comp.dart';
import '../utils/components.dart';
import '../utils/resize_all.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: BlocProvider(
          create: (context) {
            var homeBloc = HomeBloc();
            homeBloc.add(HomeDataEvent());
            return homeBloc;
          },
          child: BlocConsumer<HomeBloc, HomeState>(
            listener: (blocContext, blocState) {},
            builder: (blocContext, blocState) {
              if (blocState.status == HomeStatus.initial) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (blocState.status == HomeStatus.success) {
                return Column(
                  children: [
                    customNav(context),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            gradientSearch(),
                            ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: blocState.homeData.data.length,
                                itemBuilder: (context, index) {
                                  DataResponseModel data =
                                      blocState.homeData.data[index];
                                  if (data.viewType.toLowerCase() ==
                                      ViewTypes.slider.name.toLowerCase()) {
                                    return carasoulData(data.items);
                                  } else if (data.viewType.toLowerCase() ==
                                      ViewTypes.products.name.toLowerCase()) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 30.0),
                                      child: topProducts(data),
                                    );
                                  } else if (data.viewType.toLowerCase() ==
                                      ViewTypes.members.name.toLowerCase()) {
                                    return topMembers(data);
                                  } else {
                                    return SizedBox();
                                  }
                                }),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return SizedBox();
              }
            },
          ),
        ));
  }

  Column topProducts(DataResponseModel data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    data.subTitle,
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    data.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Icon(Icons.chevron_right_outlined)
            ],
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: data.items.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProductCard(
                onTap: (int index) {},
                item: data.items[index],
                index: index + 1,
              ),
            );
          },
        ),
      ],
    );
  }

  Column topMembers(DataResponseModel data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.subTitle,
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    data.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: ResponsiveUtil.resizeHeightOrWidth(context, 150),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: data.items.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Members(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(
                                  item: data.items[index],
                                )));
                  },
                  item: data.items[index],
                  isTop: index == 0 ? true : false,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Container gradientSearch() {
    return Container(
      margin: EdgeInsets.all(ResponsiveUtil.resizeHeightOrWidth(context, 16)),
      padding: EdgeInsets.all(ResponsiveUtil.resizeHeightOrWidth(context, 2)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            ResponsiveUtil.resizeHeightOrWidth(context, 10)),
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.purple,
          ], // Gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Container(
        height: ResponsiveUtil.resizeHeightOrWidth(context, 40),
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.transparent,
                child: TextField(
                  style: const TextStyle(fontSize: 14),
                  decoration: const InputDecoration(
                    hintText: "검색어를 입력하세요",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Icon(Icons.search_outlined)
          ],
        ),
      ),
    );
  }

  SizedBox carasoulData(List<TypeItem> items) {
    return SizedBox(
        height: ResponsiveUtil.resizeHeightOrWidth(context, 260),
        child: CarouselComponent(
          images: items,
        ));
  }
}
