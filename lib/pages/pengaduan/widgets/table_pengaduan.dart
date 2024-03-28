import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TablePengaduan extends StatefulWidget {
  const TablePengaduan({super.key});

  @override
  State<TablePengaduan> createState() => _TablePengaduanState();
}

class _TablePengaduanState extends State<TablePengaduan> {
  int _currentPage = 1;
  int _totalPages = 0;
  List<Pengaduan> _pengaduanList = [];

  @override
  void initState() {
    super.initState();
    _fetchPengaduanData();
  }

  Future<void> _fetchPengaduanData() async {
    // You can implement your data fetching logic here
    // For the sake of this example, let's assume we have a list of Pengaduan objects
    final List<Pengaduan> data = [
      Pengaduan(
        number: 1,
        title: 'Kerusakan Fasilitas Kampus',
        location: 'Gedung A, Lantai 3',
        goal: 'Perbaikan fasilitas yang rusak',
        evidence: 'assets/images/parkir_usm.png',
        date: DateTime.now(),
        description: 'Keran air di toilet bocor dan menyebabkan genangan air.',
      ),
      Pengaduan(
        number: 1,
        title: 'Kerusakan Fasilitas Kampus',
        location: 'Gedung A, Lantai 3',
        goal: 'Perbaikan fasilitas yang rusak',
        evidence: 'assets/images/parkir_usm.png',
        date: DateTime.now(),
        description: 'Keran air di toilet bocor dan menyebabkan genangan air.',
      ),
      Pengaduan(
        number: 1,
        title: 'Kerusakan Fasilitas Kampus',
        location: 'Gedung A, Lantai 3',
        goal: 'Perbaikan fasilitas yang rusak',
        evidence: 'assets/images/parkir_usm.png',
        date: DateTime.now(),
        description: 'Keran air di toilet bocor dan menyebabkan genangan air.',
      ),
      Pengaduan(
        number: 1,
        title: 'Kerusakan Fasilitas Kampus',
        location: 'Gedung A, Lantai 3',
        goal: 'Perbaikan fasilitas yang rusak',
        evidence: 'assets/images/parkir_usm.png',
        date: DateTime.now(),
        description: 'Keran air di toilet bocor dan menyebabkan genangan air.',
      ),
      Pengaduan(
        number: 1,
        title: 'Kerusakan Fasilitas Kampus',
        location: 'Gedung A, Lantai 3',
        goal: 'Perbaikan fasilitas yang rusak',
        evidence: 'assets/images/parkir_usm.png',
        date: DateTime.now(),
        description: 'Keran air di toilet bocor dan menyebabkan genangan air.',
      ),
      // Add more Pengaduan objects here
    ];

    setState(() {
      _pengaduanList = data;
      _totalPages = (data.length / 11).ceil();
    });
  }

  void _nextPage() {
    setState(() {
      _currentPage++;
    });
  }

  void _previousPage() {
    setState(() {
      _currentPage--;
    });
  }

  Widget _buildPengaduanTable() {
    // ignore: no_leading_underscores_for_local_identifiers
    final List<Pengaduan> _currentData =
        _pengaduanList.skip((_currentPage - 1) * 11).take(11).toList();

    return Expanded(
      child: Scrollbar(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columnSpacing: 12,
            horizontalMargin: 12,
            columns: const [
              DataColumn(
                label: Text('Nomor'),
              ),
              DataColumn(
                label: Text('Judul'),
              ),
              DataColumn(
                label: Text('Lokasi'),
              ),
              DataColumn(
                label: Text('Tujuan'),
              ),
              DataColumn(
                label: Text('Bukti'),
              ),
              DataColumn(
                label: Text('Tanggal'),
              ),
              DataColumn(
                label: Text('Keterangan'),
              ),
              DataColumn(
                label: Text('Aksi'),
              ),
            ],
            rows: _currentData.map((pengaduan) {
              return DataRow(
                cells: [
                  DataCell(Text(pengaduan.number.toString())),
                  DataCell(Text(pengaduan.title)),
                  DataCell(Text(pengaduan.location)),
                  DataCell(Text(pengaduan.goal)),
                  DataCell(SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(pengaduan.evidence),
                  )),
                  DataCell(
                      Text(DateFormat('dd/MM/yyyy').format(pengaduan.date))),
                  DataCell(Text(pengaduan.description)),
                  DataCell(Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove_red_eye),
                        onPressed: () {
                          // Handle view button press here
                        },
                      ),
                    ],
                  )),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildPageNavigation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (_currentPage > 1)
          TextButton(
            onPressed: _previousPage,
            child: const Text('Previous'),
          ),
        if (_currentPage < _totalPages)
          TextButton(
            onPressed: _nextPage,
            child: const Text('Next'),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: _pengaduanList.isNotEmpty
              ? _buildPengaduanTable()
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
        if (_totalPages > 1) _buildPageNavigation(),
      ],
    );
  }
}

class Pengaduan {
  final int number;
  final String title;
  final String location;
  final String goal;
  final String evidence;
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
