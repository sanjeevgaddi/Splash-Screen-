import 'package:flutter/material.dart';


class MyContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var arrName = ['Sanjeev','Vijay','Charger','Hemant','Sachin','Omkar','raghu','sangamesh','mahesh','asdf','qwery'];
    return Scaffold(
        appBar: AppBar(

          title: Text('Contacts View'),
        ),
        body: ListView.separated(itemBuilder: (context,index){
          return ListTile(
            leading: Text('$index'),
            title: Text(arrName[index]),
            subtitle: Text('Number'),
            trailing: Icon(Icons.add),
          );
        },
          itemCount: arrName.length,
          // scrollDirection: Axis.horizontal,
          separatorBuilder: (context,index){
            return Divider(height: 20,thickness: 4,);
          },


        )

    );
  }
}
