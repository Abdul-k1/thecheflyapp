import 'dart:convert';
import 'package:http/http.dart' as http;
import 'recipe.dart';

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https("yummly2.p.rapidapi.com", "/feeds/list", {
      "limit": "24",
      "start": "0",
      'tag': 'list.recipe.popular',
    });
    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "yummly2.p.rapidapi.com",
      "X-RapidAPI-Key": "1d15554fcdmshd708301c0d97420p13d754jsnaf22fb7f8346",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }
    return Recipe.recipesFromSnapshot(_temp);
  }
}
