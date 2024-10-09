import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                hintText: 'Type customer name',
                title: 'Customer Name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                hintText: 'Type customer email',
                title: 'Customer Email',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                hintText: 'Type customer name',
                title: 'Item Name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                hintText: 'USD',
                title: 'Item mount',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
