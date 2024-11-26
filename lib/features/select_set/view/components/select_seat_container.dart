import 'package:flutter/material.dart';

class BusSeatBookingScreen extends StatefulWidget {
  const BusSeatBookingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BusSeatBookingScreenState createState() => _BusSeatBookingScreenState();
}

class _BusSeatBookingScreenState extends State<BusSeatBookingScreen> {
  // Mock seat data
  final int rows = 9;
  final List<String> columns = ['A', 'B', 'D', 'E'];
  final List<List<String>> seatStatus = List.generate(
    9,
    (row) => List.generate(4, (col) => "available"),
  );

  List<String> selectedSeats = [];

  void toggleSeatSelection(int row, int col) {
    final seatId = '${columns[col]}${row + 1}';
    setState(() {
      if (seatStatus[row][col] == "available") {
        if (selectedSeats.contains(seatId)) {
          selectedSeats.remove(seatId);
        } else {
          selectedSeats.add(seatId);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            // Column Labels
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: columns
                  .map((label) => SizedBox(
                        width: 0.12 * MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            label,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ))
                  .toList(),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: rows,
                itemBuilder: (context, rowIndex) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Row Label
                      SizedBox(
                        width: 50,
                        child: Center(
                          child: Text(
                            '${rowIndex + 1}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      // Seat Icons
                      ...List.generate(
                        columns.length,
                        (colIndex) {
                          final seatId = '${columns[colIndex]}${rowIndex + 1}';
                          final status = seatStatus[rowIndex][colIndex];
                          Color seatColor;
                          IconData seatIcon = Icons.chair;

                          if (status == "booked") {
                            seatColor = Colors.orange;
                          } else if (selectedSeats.contains(seatId)) {
                            seatColor = Colors.blue;
                          } else {
                            seatColor = Colors.grey;
                          }

                          return GestureDetector(
                            onTap: () =>
                                toggleSeatSelection(rowIndex, colIndex),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 40,
                                height: 40,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                  color: seatColor,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Icon(
                                  seatIcon,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// // }
// import 'package:flutter/material.dart';

// // class DynamicSeatSelectionScreen extends StatefulWidget {
// //   final int totalSeats; // Total number of seats
// //   final int seatsPerRow; // Maximum number of seats per row

// //   const DynamicSeatSelectionScreen({
// //     Key? key,
// //     required this.totalSeats,
// //     this.seatsPerRow = 10, // Default to 5 seats per row
// //   }) : super(key: key);

// //   @override
// //   _DynamicSeatSelectionScreenState createState() =>
// //       _DynamicSeatSelectionScreenState();
// // }

// // class _DynamicSeatSelectionScreenState
// //     extends State<DynamicSeatSelectionScreen> {
// //   late List<SeatState> seatStates;

// //   @override
// //   void initState() {
// //     super.initState();
// //     // Initialize the seat states to 'available' for all seats
// //     seatStates = List.generate(widget.totalSeats, (_) => SeatState.available);
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     int rows = (widget.totalSeats / widget.seatsPerRow).ceil();

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('اختيار المقاعد'),
// //       ),
// //       body: Column(
// //         children: [
// //           GridView.builder(
// //             shrinkWrap: true,
// //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //               crossAxisCount: widget.seatsPerRow,
// //               mainAxisSpacing: 8,
// //               crossAxisSpacing: 8,
// //             ),
// //             itemCount: widget.totalSeats,
// //             itemBuilder: (context, index) {
// //               SeatState state = seatStates[index];

// //               return GestureDetector(
// //                 onTap: () {
// //                   setState(() {
// //                     // Toggle seat state
// //                     if (state == SeatState.available) {
// //                       seatStates[index] = SeatState.selected;
// //                     } else if (state == SeatState.selected) {
// //                       seatStates[index] = SeatState.available;
// //                     }
// //                   });
// //                 },
// //                 child: Container(
// //                   decoration: BoxDecoration(
// //                     color: _getSeatColor(state),
// //                     borderRadius: BorderRadius.circular(8),
// //                     border: Border.all(color: Colors.grey),
// //                   ),
// //                   alignment: Alignment.center,
// //                   child: Text(
// //                     '${_getSeatLabel(index, rows)}',
// //                     style: TextStyle(color: Colors.white),
// //                   ),
// //                 ),
// //               );
// //             },
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: ElevatedButton(
// //               onPressed: () {
// //                 // Process selected seats
// //                 List<int> selectedSeats = [];
// //                 for (int i = 0; i < seatStates.length; i++) {
// //                   if (seatStates[i] == SeatState.selected) {
// //                     selectedSeats.add(i + 1); // 1-based indexing
// //                   }
// //                 }
// //                 print('Selected seats: $selectedSeats');
// //               },
// //               child: Text('إرسال الطلب'),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Color _getSeatColor(SeatState state) {
// //     switch (state) {
// //       case SeatState.available:
// //         return Colors.blue;
// //       case SeatState.selected:
// //         return Colors.orange;
// //       case SeatState.reserved:
// //         return Colors.grey;
// //       default:
// //         return Colors.white;
// //     }
// //   }

// //   String _getSeatLabel(int index, int rows) {
// //     // Create labels like A1, A2, etc.
// //     String rowLabel = String.fromCharCode(65 + (index ~/ widget.seatsPerRow));
// //     int column = (index % widget.seatsPerRow) + 1;
// //     return '$rowLabel$column';
// //   }
// // }

// // enum SeatState {
// //   available,
// //   selected,
// //   reserved,
// // }
