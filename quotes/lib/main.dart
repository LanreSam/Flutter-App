import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      //Body of your code
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes.map((singleQuote) => QuoteCard(
          quote: singleQuote,
          delete: () {
            setState(() {
              quotes.remove(singleQuote);
            });
          }
        )).toList(),
      ),
    );
  }
}