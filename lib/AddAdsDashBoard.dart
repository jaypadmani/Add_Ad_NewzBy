import 'package:add_ads_newzby/BannerAds/BannerAdsScreen.dart';
import 'package:add_ads_newzby/FullAds/FullAdsScreen.dart';
import 'package:add_ads_newzby/HalfAds/HalfAdsScreen.dart';
import 'package:flutter/material.dart';
import 'RegularAds/RegularAdsScreen.dart';

class AddAdsDashBoard extends StatelessWidget {
  var nameofcontainer;

  AddAdsDashBoard({super.key,
    required this.nameofcontainer,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: GestureDetector(
          onTap: () {
            if (nameofcontainer == 'Regular Ads') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegularAdsScreen()));
            } else if (nameofcontainer == 'Banner Ads') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BannerAdsScreen()));
            } else if (nameofcontainer == 'Full Ads') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FullAdsScreen()));
            } else if (nameofcontainer == 'Half Ads') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HalfAdsScreen()));
            }
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 15.0,
                  spreadRadius: 5.0,
                ),
              ],
              color: Colors.white,
            ),
            child: Center(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  nameofcontainer,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 55,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
