import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scrollable_table_view/scrollable_table_view.dart';

// Assuming you have a model class for your complaint data (e.g., Pengaduan)
class Pengaduan {
  final int number;
  final String title;
  final String location;
  final String goal;
  final String evidence; // Assuming evidence is a path to an image
  final DateTime date;
  final String description;

  Pengaduan({
    required this.number,
    required this.title,
    required this.location,
    required this.goal,
    required this.evidence,
    required this.date,
    required this.description,
  });
}

class TablePengaduan extends StatelessWidget {
  final List<Pengaduan> data;

  const TablePengaduan({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rowsPerPage = 11;
    final totalRows = data.length;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade400, width: 1),
      ),
      child: ScrollableTableView(
        columnHeaderHeight: 50,
        rowHeaderWidth: 100,
        cellWidth: 150,
        cellHeight: 50,
        columnHeaderBuilder: (index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            alignment: Alignment.center,
            color: Colors.grey.shade300,
            child: Text(
              index == 0
                  ? 'No'
                  : index == 1
                      ? 'Judul'
                      : index == 2
                          ? 'Lokasi'
                          : index == 3
                              ? 'Tujuan'
                              : index == 4
                                  ? 'Bukti'
                                  : index == 5
                                      ? 'Tanggal'
                                      : index == 6
                                          ? 'Keterangan'
                                          : 'Aksi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          );
        },
        rowHeaderBuilder: (index) {
          if (index == 0) return null;
          final pengaduan = data[index - 1];
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            alignment: Alignment.center,
            color: index.isOdd ? Colors.grey.shade300 : Colors.transparent,
            child: Text(pengaduan.number.toString()),
          );
        },
        cellBuilder: (rowIndex, columnIndex) {
          if (rowIndex == 0) return null;
          final pengaduan = data[rowIndex - 1];
          switch (columnIndex) {
            case 1:
              return Text(pengaduan.title);
            case 2:
              return Text(pengaduan.location);
            case 3:
              return Text(pengaduan.goal);
            case 4:
              return pengaduan.evidence.isNotEmpty
                  ? Image.asset(
                      pengaduan.evidence,
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    )
                  : Text('-');
            case 5:
              return Text(DateFormat('dd-MM-yyyy').format(pengaduan.date));
            case 6:
              return SizedBox(
                width: 200,
                child: Text(
                  pengaduan.description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              );
            case 7:
              return ElevatedButton(
                onPressed: () {
                  // Implement action on button press
                },
                child: Text(
                  MediaQuery.of(context).size.width >= 768
                      ? 'Lihat Detail'
                      : 'Detail',
                  style: TextStyle(color: Colors.white),
                ),
              );
            default:
              return null;
          }
        },
        rowCount: totalRows + 1,
        columnCount: 8,
        rowsPerPage: rowsPerPage,
        onPageChanged: (pageIndex) {
          // Handle page change
        },
      ),
    );
  }
}
