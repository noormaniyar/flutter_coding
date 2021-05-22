import 'package:flutter_application_1/models/catalog.dart';

class CartModel{

  CatalogModel _catalog;


//collection of IDs   store ids of each items
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog){
    assert(newCatalog != null);
    _catalog = newCatalog;

  }
  



  // get items in the cart

  List<Item> get items => _itemIds.map((id)=> _catalog.getById(id)).toList();

  //get total price
  num get totalPrice => items.fold(0, (total, current) => total + current.price);

  //add items
  void add(Item item){
    _itemIds.add(item.id);
  }

  //remove items
  void remove(Item item){
    _itemIds.remove(item.id);
  }

}