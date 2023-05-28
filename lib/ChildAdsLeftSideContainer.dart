import 'package:flutter/material.dart';
import 'ListItemDatePickerLocation/ListOfItemPopupContainer.dart';
import 'ListItemDatePickerLocation/ActiveAdsDatePicker.dart';
import 'ListItemDatePickerLocation/EndAdsDatePicker.dart';
import 'ListItemDatePickerLocation/TotalAds.dart';
import 'ListItemDatePickerLocation/LocationofAds.dart';

class ChildAdsLeftSideContianer extends StatelessWidget {
  var nameofchildleft;

  ChildAdsLeftSideContianer({super.key, required this.nameofchildleft});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25, right: 15),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 15,left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    nameofchildleft,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                if (nameofchildleft == 'Category')
                  ...[
                       ListOfItemPopupContainer(),
                  ]
                else if (nameofchildleft == 'Active Ad')
                  ...[
                     ActiveAdsDatePicker(),
                  ]
                else if (nameofchildleft == 'End Date')
                  ...[
                      const EndAdsDatePicker(),
                  ]
                else if (nameofchildleft == 'Total')
                  ...[
                    const TotalAds(),
                  ]
                else if (nameofchildleft == 'Location')
                  ...[
                     LocationOfAds(),
                  ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
