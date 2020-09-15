import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/models/item.dart';

class AddItem extends StatefulWidget {
  final Function onAddedItem;
  AddItem({@required this.onAddedItem});
  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  IconData selectedIcon = optionIcons[0];
  String itemName;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Adicionar novo Item",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.lightGreen.shade500
              ),
              ),
            ),
            DropdownButton(
              value: selectedIcon,
              items: optionIcons.map<DropdownMenuItem<IconData>>((IconData icon) {
                return DropdownMenuItem(
                  child: Icon(icon),
                  value: icon
                );
              }).toList(),
              onChanged: (IconData newIcon) {
                setState(() {
                  selectedIcon = newIcon;
                });
              },
            ),
            TextField(
              onChanged: (String newItemName) {
                itemName = newItemName;
              },
            ),
            FlatButton(
              child: Text('Adicionar'),
              onPressed: () {
                print('chamando');
                widget.onAddedItem(itemName, selectedIcon);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}


