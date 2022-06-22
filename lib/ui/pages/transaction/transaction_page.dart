import 'package:airplane/cubit/transaction_cubit.dart';
import 'package:airplane/theme/theme.dart';
import 'package:airplane/ui/widgets/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {

  @override
  void initState() {
    context.read<TransactionCubit>().fetchTransactions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {

        if (state is TransactionLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        else if (state is TransactionSuccess) {
          if(state.transaction.length == 0) {
            return Center(
              child: Text('No transactions'),
            );
          } else {
            return ListView.builder(
              itemCount: state.transaction.length,
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin
              ),
              itemBuilder: (context, index) {
                return TransactionCard(
                  state.transaction[index],
                );
              },
            );
          }
        }

        return Center(
          child: Text('TransactionPage'),
        );
      },
    );
  }
}
