import 'dart:convert';
import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = '37BFC07A-AAF3-4DE2-8C46-2FFE8B0CA30F';

class CoinData {
  Future<Map<String, String>> getCoinData(String currency) async {
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      String url = '$coinAPIURL/$crypto/$currency/?apikey=$apiKey';
      http.Response response = await http.get(url);

      if (response.statusCode == 200) {
        var decodeData = jsonDecode(response.body);
        double rate = decodeData['rate'];
        cryptoPrices[crypto] = rate.toStringAsFixed(0);
      } else {
        print(response.statusCode);
        throw 'Failed to get coin data: ${response.statusCode}';
      }
    }

    return cryptoPrices;
  }
}
