import 'package:flutter/material.dart';


class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  List<FavoriteItem> favoriteItems = [
    FavoriteItem('Mouse', Icons.mouse),
    FavoriteItem('Laptop', Icons.laptop),
    FavoriteItem('Monitor', Icons.monitor),
    FavoriteItem('Smartphone', Icons.smartphone),
    FavoriteItem('Headphones', Icons.headphones),
    FavoriteItem('Camera', Icons.camera),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      backgroundColor: Colors.black, // Set background color to black
      body: ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          return _buildFavoriteItem(
            favoriteItems[index].itemName,
            favoriteItems[index].iconData,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddFavoriteDialog();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildFavoriteItem(String itemName, IconData iconData) {
    return Card(
      color: Colors.grey[900], // Set card color to dark grey
      child: ListTile(
        title: Text(
          itemName,
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }

  void _showAddFavoriteDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController _itemNameController = TextEditingController();
        return AlertDialog(
          title: Text('Add Favorite Item'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _itemNameController,
                decoration: InputDecoration(labelText: 'Item Name'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (_itemNameController.text.isNotEmpty) {
                    _addFavoriteItem(_itemNameController.text, Icons.star);
                    Navigator.pop(context);
                  }
                },
                child: Text('Add'),
              ),
            ],
          ),
        );
      },
    );
  }

  void _addFavoriteItem(String itemName, IconData iconData) {
    setState(() {
      favoriteItems.add(FavoriteItem(itemName, iconData));
    });
  }
}

class FavoriteItem {
  final String itemName;
  final IconData iconData;

  FavoriteItem(this.itemName, this.iconData);
}