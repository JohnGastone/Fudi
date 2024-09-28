import 'package:flutter/material.dart';
import 'package:fudi/models/fav_dishes_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FavdishesPage extends StatelessWidget {
  const FavdishesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = Provider.of<FavoritesModel>(context).favoriteFoods;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Text(
              "Favorite Dishes",
              style: GoogleFonts.poppins(),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Swipe item to the left to mark it unfavorite",
              style: GoogleFonts.poppins(fontSize: 16),
            )
          ],
        ),
      ),
      body: Scaffold(
        backgroundColor: const Color.fromARGB(255, 221, 206, 206),
        body: favorites.isEmpty
            ? Center(
                child: Text(
                  "No favorite dishes added",
                  style: GoogleFonts.poppins(),
                ),
              )
            : ListView.builder(
                itemCount: favorites.length,
                itemBuilder: (context, index) {
                  return _buildFavItem(context, index);
                },
              ),
      ),
    );
  }

  Widget _buildFavItem(BuildContext context, int index) {
    final favorites = Provider.of<FavoritesModel>(context).favoriteFoods;

    return Dismissible(
      key: Key(favorites[index].foodCoverImage!), // Unique key for each item
      direction: DismissDirection.endToStart, // Swipe from right to left
      onDismissed: (direction) {
        Provider.of<FavoritesModel>(context, listen: false)
            .removeFromFavorites(favorites[index]);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${favorites[index].foodName} dismissed')),
        );
      },
      background: Container(
        color: const Color(0xFF979797).withOpacity(0.1),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            width: 350,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white54,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    favorites[index].foodCoverImage!,
                    height: 70,
                    width: 70,
                  ),
                  const SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          favorites[index].foodName!,
                          style: GoogleFonts.poppins(fontSize: 20),
                          maxLines: 2,
                          overflow: TextOverflow
                              .ellipsis, // Add ellipsis for overflow
                          softWrap: true, // Enable wrapping
                        ),
                        const SizedBox(height: 6),
                        const SizedBox(height: 6),
                        Text.rich(TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: "Tsh ",
                              style: GoogleFonts.poppins(
                                  fontSize: 25, color: Colors.green)),
                          TextSpan(
                            text: " ${favorites[index].foodPrice}",
                            style: GoogleFonts.poppins(
                                fontSize: 20, color: Colors.green),
                          )
                        ])),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
