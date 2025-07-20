import 'package:flutter/material.dart';
import '../../util/themes.dart';
import 'calc_param.dart';

class PriceArguments {
  double? bid;
  double? ask;
  int? time;
  String? symbol;
  double? high;
  double? low;
  Color? color = AppTheme.bpBorderLight;
  double? spread;
  // for code
  num? digit;
  CalcParam ?calc;
  String? originalSymbol;


  PriceArguments(
      {this.bid,
        this.ask,
        this.time,
        this.symbol,
        this.high,
        this.low,
        this.color,
        this.spread,
        this.calc
      });

  PriceArguments.fromJson(Map<String, dynamic> json) {
    bid = json['bid']?.toDouble();
    ask = json['ask']?.toDouble();
    time = json['time'] as int?;
    symbol = json['symbol'] as String?;
    high = json['high']?.toDouble();
    low = json['low']?.toDouble();
    spread= json['spread']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    return
      {
        'bid': bid,
        'ask': ask,
        'time': time,
        'symbol': symbol,
        'high': high,
        'low': low,
        'spread': spread,
        'digit': digit,
        'originalSymbol': originalSymbol,
        'color': color?.value,
        'calc': calc?.toJson(),
      };
  }
}
