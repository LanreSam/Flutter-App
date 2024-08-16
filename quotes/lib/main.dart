import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'The only limit to our realization of tomorrow is our doubts of today.', author: '— Franklin D. Roosevelt'),
    Quote(text: 'Success is not final, failure is not fatal: It is the courage to continue that counts.', author: '— Winston Churchill'),
    Quote(text: 'In the end, we will remember not the words of our enemies, but the silence of our friends.', author: '— Martin Luther King Jr.'),
  ];

  Widget quoteTemplate(quote){
    return QuoteCard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes.map((singleQuote) => quoteTemplate(singleQuote)).toList(),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 8.0,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}