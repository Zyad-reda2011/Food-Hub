// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FeaturedRestrauntCard extends StatelessWidget 
{
  final String backgroundUrl;
  final String restrauntName;
  final String rating;
  final List<String> foodTags;
  final String time;
  
  FeaturedRestrauntCard
  (
    {
      super.key, 
      required this.backgroundUrl,
      required this.restrauntName,
      required this.rating,
      required this.foodTags,
      required this.time
    }
  );

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration
      (
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow:  
        [
          BoxShadow
          (
            color: Colors.grey.withOpacity(0.1) ,
            blurRadius: 6 ,
            offset: const Offset(0,2) 
          )
        ],
      ),
      child: Column
      (
        mainAxisSize: MainAxisSize.min,
        children: 
        [
          ClipRRect
          (
            borderRadius: BorderRadius.circular(12),
            child: 
            Image.asset
            (
              backgroundUrl,
              width: 266,
              height: 136,
              fit: BoxFit.fill,
            ) ,
          ),
          const SizedBox(width: 12),
          Flexible
          (
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
                Text
                (
                  restrauntName,
                  style: const TextStyle
                  (
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Sofia Pro",
                    fontSize: 13
                  ),
                ),
                Row
                (
                  children: 
                  [
                    const Icon(Icons.star , color: Colors.yellowAccent, size: 15,),
                    const SizedBox(width: 4,),
                    Text
                    (
                      rating,
                      style: const TextStyle
                      (
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Sofia Pro",
                        fontSize: 14
                      ),
                    )
                  ],
                ),
                Text
                (
                  time,
                  style: const TextStyle
                  (
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Sofia Pro",
                    fontSize: 12
                  ),
                ),
                Wrap
                (
                  children: foodTags.map
                  (
                    (tag) => Padding
                    (
                      padding: const EdgeInsets.only(right: 8),
                      child: Chip
                      (
                        label: Text
                        (
                          tag, style: const TextStyle(fontSize: 12)
                        )
                      ),
                    )
                  ).toList(),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}