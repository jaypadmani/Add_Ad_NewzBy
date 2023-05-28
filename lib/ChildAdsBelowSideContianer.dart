import 'package:flutter/material.dart';
import 'PublishAd.dart';

class ChildAdsBelowSideContianer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PublishAd()));
          },
          child: Container(
            width: 373,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: Colors.black,
            ),
            child: Center(
                child: const Text(
                  'Preview Ad',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ),
        ),

    );
  }
}
