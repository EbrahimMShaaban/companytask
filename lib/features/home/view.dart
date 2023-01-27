import 'dart:ffi';

import 'package:companytask/helpers/constraints.dart';
import 'package:companytask/helpers/text_styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQueryHelper.sizeFromHeight(context, 6),
         //   child: Container(color: Colors.blueAccent),
          ),
          Column(
            children: [
              Container(
                // height: MediaQueryHelper.sizeFromHeight(context, 1),
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: ExpansionTile(
                  title: Text('Product', style: AppTextStyles.boldtitles),
                  textColor: Colors.black,
                  iconColor: Colors.black,
                  initiallyExpanded: true,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Higher rating", style: AppTextStyles.smTitles),
                      ],
                    ),
                    Container(
                      height: MediaQueryHelper.sizeFromHeight(context, 5),
                      //color: Colors.red,
                      child: ListView.builder(
                          itemCount: 20,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height:
                                  MediaQueryHelper.sizeFromHeight(context, 5),
                              width: MediaQueryHelper.sizeFromWidth(context, 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(
                                      'assets/images/1.png',
                                      height: MediaQueryHelper.sizeFromHeight(
                                          context, 7),
                                    ),
                                  ),
                                  Text('Ahmed'),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        color: Colors.blueGrey,
                                        size: 15,
                                      ),
                                      Text('4,5'),
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("More completed projects",
                            style: AppTextStyles.smTitles),
                      ],
                    ),
                    Container(
                      height: MediaQueryHelper.sizeFromHeight(context, 5),
                      child: ListView.builder(
                          itemCount: 20,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height:
                                  MediaQueryHelper.sizeFromHeight(context, 5),
                              width: MediaQueryHelper.sizeFromWidth(context, 5),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(
                                      'assets/images/2.png',
                                      height: MediaQueryHelper.sizeFromHeight(
                                          context, 7),
                                    ),
                                  ),
                                  Text('Omar'),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.playlist_add_check,
                                        //Icon material-playlist-add-check
                                        color: Colors.blueGrey,
                                        size: 15,
                                      ),
                                      Text('80'),
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Category", style: AppTextStyles.smTitles),
                      ],
                    ),
                    Container(
                      height: MediaQueryHelper.sizeFromHeight(context, 5),
                      child: ListView.builder(
                          itemCount: 20,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height:
                                  MediaQueryHelper.sizeFromHeight(context, 5),
                              width: MediaQueryHelper.sizeFromWidth(context, 5),
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                      'assets/images/product.png',
                                    ),
                                  ),
                                  Text('Ahmed'),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        color: Colors.blueGrey,
                                        size: 15,
                                      ),
                                      Text('4,5'),
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                    Container(
                      // height: MediaQueryHelper.sizeFromHeight(context, 1),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          )),
                      child: ExpansionTile(
                        title: Text('Product', style: AppTextStyles.boldtitles),
                        textColor: Colors.black,
                        iconColor: Colors.black,
                        //  initiallyExpanded: true,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Higher rating",
                                  style: AppTextStyles.smTitles),
                            ],
                          ),
                          Container(
                            height: MediaQueryHelper.sizeFromHeight(context, 5),
                            //color: Colors.red,
                            child: ListView.builder(
                                itemCount: 20,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    height: MediaQueryHelper.sizeFromHeight(
                                        context, 5),
                                    width: MediaQueryHelper.sizeFromWidth(
                                        context, 5),
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Image.asset(
                                            'assets/images/1.png',
                                            height:
                                                MediaQueryHelper.sizeFromHeight(
                                                    context, 7),
                                          ),
                                        ),
                                        Text('Ahmed'),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: Colors.blueGrey,
                                              size: 15,
                                            ),
                                            Text('4,5'),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("More completed projects",
                                  style: AppTextStyles.smTitles),
                            ],
                          ),
                          Container(
                            height: MediaQueryHelper.sizeFromHeight(context, 5),
                            child: ListView.builder(
                                itemCount: 20,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    height: MediaQueryHelper.sizeFromHeight(
                                        context, 5),
                                    width: MediaQueryHelper.sizeFromWidth(
                                        context, 5),
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Image.asset(
                                            'assets/images/2.png',
                                            height:
                                                MediaQueryHelper.sizeFromHeight(
                                                    context, 7),
                                          ),
                                        ),
                                        Text('Omar'),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.playlist_add_check,
                                              //Icon material-playlist-add-check
                                              color: Colors.blueGrey,
                                              size: 15,
                                            ),
                                            Text('80'),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Category", style: AppTextStyles.smTitles),
                            ],
                          ),
                          Container(
                            height: MediaQueryHelper.sizeFromHeight(context, 5),
                            child: ListView.builder(
                                itemCount: 20,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    height: MediaQueryHelper.sizeFromHeight(
                                        context, 5),
                                    width: MediaQueryHelper.sizeFromWidth(
                                        context, 5),
                                    child: Column(
                                      children: [
                                        const CircleAvatar(
                                          radius: 30,
                                          backgroundImage: AssetImage(
                                            'assets/images/product.png',
                                          ),
                                        ),
                                        Text('Ahmed'),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: Colors.blueGrey,
                                              size: 15,
                                            ),
                                            Text('4,5'),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          ExpansionTile(
                            title: Text('Product',
                                style: AppTextStyles.boldtitles),
                            textColor: Colors.black,
                            iconColor: Colors.black,
                            // initiallyExpanded: true,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Higher rating",
                                      style: AppTextStyles.smTitles),
                                ],
                              ),
                              Container(
                                height:
                                    MediaQueryHelper.sizeFromHeight(context, 5),
                                //color: Colors.red,
                                child: ListView.builder(
                                    itemCount: 20,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return SizedBox(
                                        height: MediaQueryHelper.sizeFromHeight(
                                            context, 5),
                                        width: MediaQueryHelper.sizeFromWidth(
                                            context, 5),
                                        child: Column(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Image.asset(
                                                'assets/images/1.png',
                                                height: MediaQueryHelper
                                                    .sizeFromHeight(context, 7),
                                              ),
                                            ),
                                            Text('Ahmed'),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.blueGrey,
                                                  size: 15,
                                                ),
                                                Text('4,5'),
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    }),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("More completed projects",
                                      style: AppTextStyles.smTitles),
                                ],
                              ),
                              Container(
                                height:
                                    MediaQueryHelper.sizeFromHeight(context, 5),
                                child: ListView.builder(
                                    itemCount: 20,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return SizedBox(
                                        height: MediaQueryHelper.sizeFromHeight(
                                            context, 5),
                                        width: MediaQueryHelper.sizeFromWidth(
                                            context, 5),
                                        child: Column(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Image.asset(
                                                'assets/images/2.png',
                                                height: MediaQueryHelper
                                                    .sizeFromHeight(context, 7),
                                              ),
                                            ),
                                            Text('Omar'),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Icon(
                                                  Icons.playlist_add_check,
                                                  //Icon material-playlist-add-check
                                                  color: Colors.blueGrey,
                                                  size: 15,
                                                ),
                                                Text('80'),
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    }),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Category",
                                      style: AppTextStyles.smTitles),
                                ],
                              ),
                              Container(
                                height:
                                    MediaQueryHelper.sizeFromHeight(context, 5),
                                child: ListView.builder(
                                    itemCount: 20,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return SizedBox(
                                        height: MediaQueryHelper.sizeFromHeight(
                                            context, 5),
                                        width: MediaQueryHelper.sizeFromWidth(
                                            context, 5),
                                        child: Column(
                                          children: [
                                            const CircleAvatar(
                                              radius: 30,
                                              backgroundImage: AssetImage(
                                                'assets/images/product.png',
                                              ),
                                            ),
                                            Text('Ahmed'),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.blueGrey,
                                                  size: 15,
                                                ),
                                                Text('4,5'),
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    }),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
