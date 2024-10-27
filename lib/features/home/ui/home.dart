import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tutorial/features/home/bloc/home_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeBloc homeBloc = HomeBloc();
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      // listenWhen: (previous, current){},
      // buildWhen:(previous, current){} ,
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Sujal Grocery App'),
            actions: [
              IconButton(onPressed: (){
                homeBloc.add(HomeProductWishlistButtonClickedEvent());
              }, icon: Icon(Icons.favorite)),
              IconButton(onPressed: (){
                homeBloc.add(HomeProductCartButtonClickedEvent());
              }, icon: Icon(Icons.shopping_bag)),
            ],
          ),
        );
      },
    );
  }
}
