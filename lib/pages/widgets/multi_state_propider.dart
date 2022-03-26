import 'package:flutter/material.dart';
import 'package:myapp/pages/widgets/class/cart.dart';
import 'package:myapp/pages/widgets/class/money.dart';
import 'package:provider/provider.dart';

class MultiStatePropider extends StatelessWidget {
  const MultiStatePropider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Money()),
          ChangeNotifierProvider(create: (context) => Cart()),
        ],
        child: Scaffold(
          floatingActionButton: Consumer<Money>(
            builder: (context, valMoney, _) => Consumer<Cart>(
              builder: (context, valCart, _) => FloatingActionButton(
                backgroundColor: Colors.purple,
                onPressed: () {
                  if (valMoney.balance >= 500) {
                    valCart.qunatitiy += 1;
                    valMoney.balance -= 500;
                  }
                },
                child: const Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Balance"),
                    Container(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          children: [
                            Consumer<Money>(
                              builder: (context, valMoney, _) => Text(
                                valMoney.balance.toString(),
                                style: const TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      height: 30,
                      width: 200,
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        border: Border.all(color: Colors.purple, width: 2),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<Cart>(
                      builder: (context, valCart, _) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Apple (500) x" + valCart.qunatitiy.toString(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            (500 * valCart.qunatitiy).toString(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  height: 30,
                  width: 400,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
