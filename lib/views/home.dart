import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/Paper_Listview_builder.dart';
import '../widgets/categoty_card_list_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News ',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  CategotyCardListView(),
                  SizedBox(
                    height: 20,
                  ),
                  //PaperListVeiw(),
                ],
              ),
            ),
            PaperListVeiwBuilder(category: 'general',),
          ],
        ),
        // child: Column(
        //   children: [
        //     CategotyListView(),
        //     SizedBox(
        //       height: 20,
        //     ),
        //     Expanded(child: PaperListVeiw()),
        //   ],
        // ),
      ),
    );
  }
}
