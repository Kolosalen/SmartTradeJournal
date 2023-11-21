import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_trade_journal/theme/theme.dart';

class AddNoteForm extends StatelessWidget{
  final theme = darkTheme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            height: 1,
            color: Colors.grey,
          ),
        ),
        leadingWidth: 106,
        leading: Row(
          children:[
            IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Color.fromRGBO(10, 132, 255, 1),),
                onPressed: () {Navigator.of(context).pushNamed('/');},
            ),
            Text("Archive", style: theme.textTheme.labelSmall,)
          ]
        ),
        centerTitle: true,
        backgroundColor: theme.scaffoldBackgroundColor,
        title: Text("Add Note", textAlign: TextAlign.center, style: theme.textTheme.titleMedium),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Strategy', style: theme.textTheme.bodySmall,),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 24),
              child: SizedBox(
                height: 48,
                child: TextField(
                  style: theme.textTheme.bodyMedium,
                  decoration: InputDecoration(
                    fillColor: const Color.fromRGBO(55, 60, 76, 1),
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(vertical:10 ,horizontal: 16),
                    hintStyle: theme.textTheme.bodyMedium,
                    border: const OutlineInputBorder(),
                    hintText: 'Enter a search term',
                  ),
                ),
              ),
            ),
            Text('Data and time', style: theme.textTheme.bodySmall,),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 24),
              child: Row(
                children: [
                  Flexible(
                    flex: 16,
                    child: SizedBox(
                      height: 48,
                      child: TextField(
                        style: theme.textTheme.bodyMedium,
                        decoration: InputDecoration(
                          fillColor: const Color.fromRGBO(55, 60, 76, 1),
                          filled: true,
                          contentPadding: const EdgeInsets.symmetric(vertical:10 ,horizontal: 16),
                          hintStyle: theme.textTheme.bodyMedium,
                          border: const OutlineInputBorder(),
                          hintText: 'Data',
                        ),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Flexible(
                    flex: 7,
                    child: SizedBox(
                      height: 48,
                      child: TextField(
                        style: theme.textTheme.bodyMedium,
                        decoration: InputDecoration(
                          fillColor: const Color.fromRGBO(55, 60, 76, 1),
                          filled: true,
                          contentPadding: const EdgeInsets.symmetric(vertical:10 ,horizontal: 16),
                          hintStyle: theme.textTheme.bodyMedium,
                          border: const OutlineInputBorder(),
                          hintText: 'Time',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }

}