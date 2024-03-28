import 'package:flutter/material.dart';

class TabelSmall extends StatefulWidget {
  final List<String> columns;
  final List<List<dynamic>> data;

  TabelSmall({required this.columns, required this.data});

  @override
  _TabelSmallState createState() => _TabelSmallState();
}

class _TabelSmallState extends State<TabelSmall> {
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      controller: _controller,
      child: SingleChildScrollView(
        child: DataTable(
          columns: _buildColumns(),
          rows: _buildRows(),
        ),
      ),
    );
  }

  List<DataColumn> _buildColumns() {
    return widget.columns
        .map((column) => DataColumn(label: Text(column)))
        .toList();
  }

  List<DataRow> _buildRows() {
    return widget.data.map((rowData) {
      return DataRow(
        cells: rowData.map((cellData) {
          return DataCell(Text('$cellData'));
        }).toList(),
      );
    }).toList();
  }
}
