import 'package:flutter/material.dart';

class ItemCounter extends StatefulWidget {
  final int initialCount;
  final Function(int) onItemCountChanged;

  const ItemCounter({
    super.key,
    required this.initialCount,
    required this.onItemCountChanged,
  });

  @override
  State<ItemCounter> createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  late int _itemCount = 1; // Initial item count

  @override
  void initState() {
    super.initState();
    _itemCount = widget.initialCount;
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _itemCount > 0,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                _itemCount--;
                widget.onItemCountChanged(_itemCount);
              });
            },
            icon: Icon(
              _itemCount == 1 ? Icons.delete : Icons.remove,
              color: Colors.black,
            ),
          ),
          Text(
            '$_itemCount',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _itemCount++;
                widget.onItemCountChanged(_itemCount);
              });
            },
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
