import 'package:flutter/material.dart';

class TabelLarge extends StatelessWidget {
  final List<String> columns;
  final List<List<dynamic>> data;

  TabelLarge({required this.columns, required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        columns: _buildColumns(),
        rows: _buildRows(),
      ),
    );
  }

  List<DataColumn> _buildColumns() {
    return columns.map((column) => DataColumn(label: Text(column))).toList();
  }

  List<DataRow> _buildRows() {
    return data.map((rowData) {
      return DataRow(
        cells: rowData.map((cellData) {
          return DataCell(Text('$cellData'));
        }).toList(),
      );
    }).toList();
  }
}
