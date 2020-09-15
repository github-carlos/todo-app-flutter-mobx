import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo_app/components/listItem.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/models/item.dart';
import 'package:todo_app/pages/add_item.dart';
import 'package:todo_app/store/items.dart';

class HomePage extends StatelessWidget {
  var items = Items();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 120.0,
              floating: true,
              snap: true,
              elevation: 50,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text('To-do App'),
                  background: Image.network(
                    'https://images.pexels.com/photos/443356/pexels-photo-443356.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    fit: BoxFit.cover,
                  )),
            ),
            SliverToBoxAdapter(
              child: Observer(
                builder: (_) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Quantidade Tarefas: ${items.length}',
                        style: kStatusStyleText,
                      ),
                      SizedBox(height: 20,),
                      Text(
                        'Concluídas: ${items.numberOfFinished.toString()}',
                        style: kStatusStyleText,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Observer(
              builder: (_) => SliverList(
                //delegate: SliverChildListDelegate(
                //items.items.map((item) => ListItem(text: item.text, icon: item.icon, checked: item.checked,)).toList()
                //),
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Observer(
                    builder: (_) => ListItem(
                      text: items.items[index].text,
                      icon: items.items[index].icon,
                      checked: items.items[index].checked,
                      callback: (checked) {
                        items.setChecked(checked, index);
                      },
                    ),
                  );
                }, childCount: items.items.length),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  child: AddItem(
                    onAddedItem: (itemName, icon) {
                      items.addItem(Item(text: itemName, icon: icon));
                    },
                  ),
                );
              });
        },
      ),
    );
  }
}
