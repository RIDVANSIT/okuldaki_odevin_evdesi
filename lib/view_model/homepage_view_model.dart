import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:okuldaki_odevin_evdesi/model/character.dart';
class HomepageView with ChangeNotifier {
List<Character> _characters=[];
List<Character> get character=>_characters;
HomepageView(){
  _getChars();
}
void _getChars()async {
const String apiUrl = "https://rickandmortyapi.com/api/character";
    Uri uri = Uri.parse(apiUrl);
var response = await http.get(uri);
var allchars =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
        
        for (Map<String, dynamic> element in allchars["results"]) {
          Character character= Character.fromMap(element);
          _characters.add(character);
        }
        notifyListeners();

}


 

}