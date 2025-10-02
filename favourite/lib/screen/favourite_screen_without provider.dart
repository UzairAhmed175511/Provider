import 'package:flutter/material.dart';

class FavouriteScreenWithoutProvider extends StatefulWidget {
  const FavouriteScreenWithoutProvider({super.key});

  @override
  State<FavouriteScreenWithoutProvider> createState() =>
      _FavouriteScreenWithoutProviderState();
}

class _FavouriteScreenWithoutProviderState
    extends State<FavouriteScreenWithoutProvider> {
  List<int> favouriteItem = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favourite Screen Without Provider')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              if (favouriteItem.contains(index)) {
                favouriteItem.remove(index);
                setState(() {});
              } else {
                favouriteItem.add(index);
                setState(() {});
              }
            },
            title: Text("item" + index.toString()),
            trailing: favouriteItem.contains(index)
                ? Icon(Icons.favorite_rounded)
                : Icon(Icons.favorite_outline_outlined),
          );
        },
        itemCount: 5000,
      ),
    );
  }
}
