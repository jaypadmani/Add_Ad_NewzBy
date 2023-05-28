import 'package:add_ads_newzby/main.dart';
import 'package:flutter/material.dart';
import 'package:add_ads_newzby/ChildAdsLeftSideContainer.dart';
import 'package:add_ads_newzby/ChildAdsRightSideContianer.dart';
import 'package:add_ads_newzby/ChildAdsBelowSideContianer.dart';

class RegularAdsScreen extends StatelessWidget {
  const RegularAdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Add Ads',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35,right: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Regular Ads',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MyApp()));
                            },
                            child: Align(
                              alignment: Alignment.topRight,
                              child: const Icon(
                                Icons.close,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.only(left: 35,right: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            ChildAdsLeftSideContianer(
                              nameofchildleft: 'Category',
                            ),
                            ChildAdsLeftSideContianer(
                              nameofchildleft: 'Active Ad',
                            ),
                            ChildAdsLeftSideContianer(
                              nameofchildleft: 'End Date',
                            ),
                            ChildAdsLeftSideContianer(
                              nameofchildleft: 'Total',
                            ),
                            ChildAdsLeftSideContianer(
                              nameofchildleft: 'Location',
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Column(
                          children: [
                            ChildAdsRightSideContainer(nameOfChildRight: 'Image/Video URL',),
                            ChildAdsRightSideContainer(nameOfChildRight: 'Title',),
                            ChildAdsRightSideContainer(nameOfChildRight: 'Description',),
                            ChildAdsRightSideContainer(nameOfChildRight: 'Company Name',),
                            ChildAdsRightSideContainer(nameOfChildRight: 'Product URL',),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ChildAdsBelowSideContianer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
