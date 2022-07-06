import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

enum BT { x, y, z }

class HomePageController extends GetxController{
  int n = 0 ;

  BT r = BT.x;

  final _urlBuySell = "http://13.59.57.74:5000/api/buy-sell-price";
  final _urlPlans = "http://13.59.57.74:5000/api/plan/type/standard";

  bool callingBuySellAPI = false;
  bool callingPlansAPI = false;

  http.Response? _buySellResponse;
  http.Response? _plansResponse;

  List? _buySell;
  Map? _plans;

  bottomNav(int i){
    n = i;
    update();
  }

  radio(BT? val){
    r = val??BT.z;
    update();
  }

  buySellRequest() async {
    callingBuySellAPI = true;
    update();
    _buySellResponse = await http.get(
      Uri.parse(_urlBuySell),
    );
    _buySell = jsonDecode(_buySellResponse!.body);
    // debugPrint(_buySell.toString());
    callingBuySellAPI = false;
    update();
  }

  String get buySellData => _buySell.toString();
  String get plansData => _plans.toString();

  plansRequest() async {
    callingPlansAPI = true;
    update();
    _plansResponse = await http.get(
      Uri.parse(_urlPlans),
    );
    _plans = jsonDecode(_plansResponse!.body);
    // debugPrint(_plans.toString());
    callingPlansAPI = false;
    update();
  }

  int get buySellReqStatus => _buySellResponse!.statusCode;
  int get plansReqStatus => _plansResponse!.statusCode;
}