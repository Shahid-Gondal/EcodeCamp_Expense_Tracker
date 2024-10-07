import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> transactionData = [
  {
    "icon": FaIcon(FontAwesomeIcons.burger,color: Colors.white,),
    "color": Colors.yellow[700],
    "name": "Food",
    "TotalAmount": "-\$45.00",
    "date": "Today",
  },
  {
    "icon": FaIcon(FontAwesomeIcons.bagShopping,color: Colors.white,),
    "color": Colors.purple,
    "name": "Shopping",
    "TotalAmount": "-\$230.00",
    "date": "Today",
  },
  {
    "icon": FaIcon(FontAwesomeIcons.heartCircleCheck,color: Colors.white,),
    "color": Colors.green,
    "name": "Health",
    "TotalAmount": "-\$79.00",
    "date": "Yesterday",
  },
  {
    "icon": FaIcon(FontAwesomeIcons.plane,color: Colors.white,),
    "color": Colors.blue,
    "name": "Travel",
    "TotalAmount": "-\$350.00",
    "date": "Yesterday",
  },
];
