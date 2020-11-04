import 'package:flutter/material.dart';
import 'package:food_delivery_ui_flutter/data/data.dart';
import 'package:food_delivery_ui_flutter/widgets/rating_stars.dart';

class NearbyRestaurants extends StatelessWidget {
  _buildRestaurants() {
    List<Widget> restaurantList = [];
    restaurants.forEach((restaurant) {
      restaurantList.add(
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              width: 1.0,
              color: Colors.grey[200],
            ),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  height: 100.0,
                  width: 100.0,
                  image: AssetImage(restaurant.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4.0),
                    RatingStars(restaurant.rating),
                    SizedBox(height: 4.0),
                    Text(
                      restaurant.address,
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      '0.5 km away',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
    return Column(children: restaurantList);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.0),
          child: Text(
            'Nearby Restaurants',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
          ),
        ),
        _buildRestaurants(),
      ],
    );
  }
}
