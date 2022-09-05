import 'package:another_flushbar/flushbar.dart';
import 'package:bwa_wallet/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void showCustomSnackbar(BuildContext context, String message) {
  Flushbar(
    message: message,
    backgroundColor: redColor,
    flushbarPosition: FlushbarPosition.TOP,
    duration: const Duration(seconds: 2),
  ).show(context);
}

String formatCurrency(num number, {symbol = 'Rp '}) {
  return NumberFormat.currency(
    locale: 'id',
    symbol: symbol,
    decimalDigits: 0,
  ).format(number);
}
