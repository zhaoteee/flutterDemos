import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import './provide/counter.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: Column(
            children: <Widget>[
              Number(),
              MyButton()
            ],
          ),
        )
    );
  }
}

class Number extends StatefulWidget {
  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
  Counter counter1 = Counter(1);
  Counter counter2 = Counter(2);
  var scope1 = ProviderScope('1');
  var scope2 = ProviderScope('2');

  @override
  Widget build(BuildContext context) {

    return ProviderNode(
      providers: Providers()
        ..provide(Provider<Counter>.value(counter1), scope: scope1)
        ..provide(Provider<Counter>.value(counter2), scope: scope2),
      child: Column(
        children: <Widget>[
          Provide<Counter> (
            scope: scope1,
            builder: (context, child, counter) {
              return Text(
                '${counter.value}',
                style: Theme.of(context).textTheme.display1,
              );
            },
          ),
          Provide<Counter> (
            scope: scope2,
            builder: (context, child, counter) {
              return Text(
                '${counter.value}',
                style: Theme.of(context).textTheme.display1,
              );
            },
          ),
        ],
      )
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(onPressed: (){
//        Provide.value<Counter>(context).increment();
//        counter1.increment();
//        counter2.increment();
      }, child: Text('递增'),),
    );
  }
}