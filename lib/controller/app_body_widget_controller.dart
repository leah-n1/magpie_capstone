
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../models/ewallet_model.dart';
import '../models/transaction_model.dart';


class AppBodyController {
 List<Transaction> listTransaction = [];
 dynamic walletBalance= '--,--';
 dynamic walletNumber= 0;
 dynamic walletName='';

Future <EWallet?> getEwalletData() async {
  var url = Uri.parse(
    "https://demo9021501.mockable.io/account_details");
  EWallet? eWallet;
  try {
    var response = await http.get(url);
    print('Response ${response.body}');

  if (response.statusCode == 200) {

    Map<String, dynamic> jsonResponse = convert.jsonDecode(response.body);

    Map <String, dynamic> eWalletMap =jsonResponse['eWallet'];
      eWallet = EWallet.fromMap(eWalletMap);
      return eWallet;
      } else {
      print ('Request failed with status: ${response.statusCode}.');
    }
      } catch (e) {
        throw Exception(e);
      } finally {
        return eWallet;
    }
  }
}
