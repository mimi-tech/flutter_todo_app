import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/commons/colors.dart';
import 'package:flutter_todo_app/home/logic/todo_provider.dart';
import 'package:flutter_todo_app/home/page/home_page.dart';
import 'package:flutter_todo_app/routes/app_router.gr.dart';
import 'package:flutter_todo_app/utils/appbar_action.dart';

@RoutePage()
class BottomNavBarPage extends ConsumerStatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  _BottomNavBarPageState createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends ConsumerState<BottomNavBarPage> {
  int _selectedIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    final todoNotifier = ref.read(todoProvider.notifier);
    Future.microtask(
            () {
          todoNotifier.fetchTodosForToday();
        }
    );

  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController?.jumpToPage(index); // Navigate to the selected page
  }
List<String> appbarTitle = ["Homepage", "Calender", "Chat", "Profile"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: offWhiteColor,
      appBar: AppBar(
        backgroundColor: offWhiteColor,
        leading:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppbarAction(icon: Icons.square_outlined,onPressed: (){
            context.router.push( const PhotoRoute());
          },),
        ),
        title:  Text(appbarTitle[_selectedIndex],),
        actions:  [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppbarAction(
              icon: Icons.notifications_none,
              stackWidget:  Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                  color: redColor,
                  shape: BoxShape.circle,

                ),
              ),
            ),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: const <Widget>[
          HomePage(),
          Center(child: Text('Calender Screen', style: TextStyle(fontSize: 24))),
          Center(child: Text('Chat Screen', style: TextStyle(fontSize: 24))),
          Center(child: Text('Profile Screen', style: TextStyle(fontSize: 24))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push( CreateTaskRoute());
        },
        child: const Icon(Icons.add,color: whiteColor,size: 30,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 5.0,
        color: Colors.white,
        height: 50,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){_onItemTapped(0);},
                icon:  Icon(Icons.home, size: 25, color:_selectedIndex == 0 ? blueColor:darkGrayColor)),
            IconButton(onPressed: (){_onItemTapped(1);},
                icon:  Icon(Icons.calendar_month, size: 25,color:_selectedIndex == 1 ? blueColor:darkGrayColor)),
            IconButton(onPressed: (){_onItemTapped(2);},
                icon:  Icon(Icons.chat_bubble_outline,size: 25, color:_selectedIndex == 2 ? blueColor:darkGrayColor)),
            IconButton(onPressed: (){_onItemTapped(3);},
                icon:  Icon(Icons.person,size: 25, color:_selectedIndex == 3 ? blueColor:darkGrayColor,)),
          ],
        ),

      ),
    );
  }
}
