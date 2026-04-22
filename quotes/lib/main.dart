import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
    Quote(
      author: 'Steve Jobs',
      text: 'The only way to do great work is to love what you do.',
    ),
    Quote(
      author: 'Albert Einstein',
      text: 'In the middle of every difficulty lies opportunity.',
    ),
    Quote(
      author: 'Winston S. Churchill',
      text: 'Success is not final, failure is not fatal: it is the courage to continue that counts.',
    ),
  ];

  Widget quoteTemplate(Quote quote) {
    return QuoteCard(quote: quote,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),
      ),
    );
  }
}

