import 'package:flutter/material.dart';
import 'package:food_delivery_ui_flutter/data/data.dart';
import 'package:food_delivery_ui_flutter/widgets/nearby_restaurants.dart';
import 'package:food_delivery_ui_flutter/widgets/recent_orders.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Delivery'),
        leading: IconButton(
          icon: Icon(
            Icons.account_circle,
          ),
          iconSize: 30.0,
          onPressed: () {},
        ),
        actions: [
          FlatButton(
            onPressed: () {},
            child: Text(
              'Cart (${currentUser.cart.length})',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(width: 0.8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                    width: 0.8,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                hintText: 'Search Food or Restaurants',
                prefixIcon: Icon(
                  Icons.search,
                  size: 30.0,
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          RecentOrders(),
          NearbyRestaurants(),
        ],
      ),
    );
  }
}
