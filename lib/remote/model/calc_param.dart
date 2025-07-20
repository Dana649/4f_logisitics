class CalcParam {
  String? symbol;
  String? currencyBase;
  String? currencyProfit;
  num? calcMode;
  num? tickSize;
  num? tickValue;
  num? contractSize;
  int? digits;
  String? symbolProfit;
  String? description;
  String? exchange;
  String? fullName;
  num?swapLong;
  num?swapShort;
  num?stopLevel;
  num? minVolume;
  num? maxVolume;
  num? volumeStep;
  num?marginBuy;
  num?marginSell;
  num?marginInitial;



  CalcParam({
    this.symbol,
    this.currencyBase,
    this.currencyProfit,
    this.calcMode,
    this.tickSize,
    this.tickValue,
    this.contractSize,
    required this.digits,
    this.symbolProfit,
    this.description,
    this.exchange,
    this.fullName,
    this.swapLong,
    this.swapShort,
    this.stopLevel,
    this.minVolume,
    this.maxVolume,
    this.volumeStep,
    this.marginBuy,
    this.marginSell,
    this.marginInitial,

  });

  CalcParam.fromJson(Map<String, dynamic> json) {
    symbol = json['symbol'];
    currencyBase = json['currencyBase'];
    currencyProfit = json['currencyProfit'];
    calcMode = json['calcMode'];
    tickSize = json['tickSize'];
    tickValue = json['tickValue'];
    contractSize = json['contractSize'];
    digits = json['digits'];
    symbolProfit = json['symbolProfit'];
    description = json['description'];
    exchange = json['exchange'];
    fullName = json['full_name'];
    swapLong = json['swapLong'];
    swapShort = json['swapShort'];
    stopLevel = json['stopLevel'];
    minVolume = json['minVolume'];
    maxVolume = json['maxVolume'];
    volumeStep = json['volumeStep'];
    marginBuy = json['marginBuy'];
    marginSell = json['marginSell'];
    marginInitial = json['marginInitial'];

  }

  Map<String, dynamic>toJson(){
    return {
      'symbol': symbol,
      'currencyBase': currencyBase,
      'currencyProfit': currencyProfit,
      'calcMode': calcMode,
      'tickSize': tickSize,
      'tickValue': tickValue,
      'contractSize': contractSize,
      'digits': digits,
      'symbolProfit': symbolProfit,
      'description': description,
      'exchange': exchange,
      'full_name': fullName,
      'swapLong': swapLong,
      'swapShort': swapShort,
      'stopLevel': stopLevel,
      'minVolume': minVolume,
      'maxVolume': maxVolume,
      'volumeStep': volumeStep,
      'marginBuy': marginBuy,
      'marginSell': marginSell,
      'marginInitial': marginInitial,
    };
  }

}
