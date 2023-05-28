import 'package:flutter/material.dart';
import 'package:kumi_popup_window/kumi_popup_window.dart';

class ListOfItemPopupContainer extends StatefulWidget {
  @override
  State<ListOfItemPopupContainer> createState() =>
      _ListOfItemPopupContainerState();
}

class _ListOfItemPopupContainerState extends State<ListOfItemPopupContainer> {

  final List<String> itemList = [
    'Restaurants',
    'Cafes',
    'Catering companies',
    'Online retailers',
    'Fashion brands',
    'Electronics stores',
    'Law firms',
    'Travel booking platforms',
    'Tech startups',
    'Accounting firms',
    'Consulting agencies',
    'Hospitals',
    'Clinics',
    'Doctors',

  ];
  final List<String> itemListNumber = [
    '2',
    '5',
    '67',
    '35',
    '6',
    '8',
    '9',
    '17',
    '23',
    '22',
    '45',
    '5',
    '98',
    '7',

  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: 25,
          width: 90,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: TextButton(
              onPressed: () {
                showPopupWindow(
                    context,
                    gravity: KumiPopupGravity.center,
                    bgColor: Colors.black.withOpacity(0.3),
                    childFun: (pop) {
                      return Container(
                        key: GlobalKey(),
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.height * 0.8 / 2,
                        color: Colors.white,
                        child: ListView.builder(
                          itemCount: itemList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Text(itemList[index]),
                              trailing: Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                  width: 85,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child:  Center(
                                    child: Text(itemListNumber[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),),
                                  ),
                                ),
                              ),
                              onTap: () {
                                // Handle item tap
                                Navigator.of(context).pop();
                              },
                            );
                          },
                        ),
                      );
                });
              },
              child: const Row(children: [
                Text(
                  'Food',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  size: 18,
                  color: Colors.white,
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
