import 'package:flutter/material.dart';

class OrderTotalBar extends StatelessWidget {
  const OrderTotalBar({super.key, required this.total, required this.lineCount, required this.onSave});

  final int total;
  final int lineCount;
  final VoidCallback onSave;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      decoration: BoxDecoration(
        color: Theme
            .of(context)
            .colorScheme
            .surfaceContainerHigh,
        border: Border(
          top: BorderSide(
            color: Theme
                .of(context)
                .colorScheme
                .outlineVariant,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lineCount == 0
                      ? 'Belum ada pesanan'
                      : '$lineCount menu dipilih',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 4),
// ...and written out again here. Identical. Notice that.
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    color: Theme
                        .of(context)
                        .colorScheme
                        .surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    'Rp $total',
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          FilledButton(
            onPressed: total == 0
                ? null : onSave,
            child: Text('Simpan'),
          ),
        ],
      ),
    );
  }
}