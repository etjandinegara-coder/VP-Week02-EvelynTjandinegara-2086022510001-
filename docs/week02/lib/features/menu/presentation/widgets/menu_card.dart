import 'package:flutter/material.dart';
import '../../domain/menu_item.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({super.key, required this.item, required this.quantity, required this.onAdd, required this.onRemove});

  final MenuItem item;
  final int quantity;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
        child: Padding(
          padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              item.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          if (item.promo) const SizedBox(width: 6),
                          if (item.promo)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .tertiaryContainer,
                                borderRadius:
                                    BorderRadius.circular(4),
                              ),
                              child: Text(
                                'PROMO',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onTertiaryContainer,
                                ),
                              ),
                            ),
                          ],
                         ),
                        const SizedBox(height: 6),
                        // The price chip, written out here...
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .surfaceContainerHighest,
                          borderRadius:
                              BorderRadius.circular(6),
                        ),
                        child: Text(
                          'Rp ${item.price}',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: quantity == 0
                      ? null : onRemove,
                  icon: const Icon(Icons.remove_circle_outline),
                ),
                SizedBox(
                width: 28,
                child: Text(
                  '$quantity',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: quantity >= 99
                      ? null: onAdd,
                  icon: const Icon(Icons.add_circle_outline),
                ),
              ],
            ),
          ),
        );
      }
    }