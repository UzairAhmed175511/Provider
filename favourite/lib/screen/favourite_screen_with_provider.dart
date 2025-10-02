import 'package:favourite/provider/favourite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteScreenWithProvider extends StatefulWidget {
  const FavouriteScreenWithProvider({super.key});

  @override
  State<FavouriteScreenWithProvider> createState() =>
      _FavouriteScreenWithProviderState();
}

class _FavouriteScreenWithProviderState
    extends State<FavouriteScreenWithProvider> {
  @override
  Widget build(BuildContext context) {
    print("welcome");

    return Scaffold(
      appBar: AppBar(title: const Text('Favourite Screen With Provider')),
      body: Consumer<FavouriteProvider>(
        builder: (context, value, child) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  if (value.favouriteItem.contains(index)) {
                    value.removeFavourite(index);
                  } else {
                    value.addFavourite(index);
                  }
                },

                title: Text("item" + index.toString()),
                trailing: value.favouriteItem.contains(index)
                    ? Icon(Icons.favorite_rounded)
                    : Icon(Icons.favorite_outline_outlined),
              );
            },
            itemCount: 5000,
          );
        },
      ),
    );
  }
}
