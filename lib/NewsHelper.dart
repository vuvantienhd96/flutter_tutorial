import 'package:app_flutter_card_scroll/NewArticle.dart';

class NewsHelper {
  static var articleCount = 4;

  static var products = ['Luxury', 'Mini', 'Audi', 'Flacy'];
  static var states = ['true', 'false', 'false', 'true'];
  static var categoryTitles = ["SPACE", "FROM YOUR NETWORK", "BASED ON YOUR READING HISTORY", "DATA SCIENCE"];
  static var titles = ["My life, my colors", "Car is delecious", "Oto fun, funny :))", "Data test for example"];
  static var authorNames = ["Ethan Siegal", "Adnan Rahic", "Avi Ashkenazi", "Abhishek Parkbhakar"];
  static var date = ["15 Jun", "15 hours ago", "27 Apr", "14 Jun"];
  static var readTimes = ["7 min read", "14 min read", "8 min read", "8 min read"];
  static var imageAssetName = ["1.jpg","2.jpg","3.jpg","4.jpg"];
  static var prices = ["€12","€45", "€78", "€90"];

  static getArticle(int position) {
    return NewsArticle(
      categoryTitles[position], 
      titles[position], 
      authorNames[position], 
      date[position], 
      readTimes[position], 
      imageAssetName[position], 
      products[position],
      states[position],
      prices[position]);
  }
}