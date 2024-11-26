import 'package:flutter/material.dart';

class BusSeatBookingScreen extends StatefulWidget {
  const BusSeatBookingScreen({super.key});

  @override
  BusSeatBookingScreenState createState() => BusSeatBookingScreenState();
}

class BusSeatBookingScreenState extends State<BusSeatBookingScreen> {
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
                        width: 50,
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
                          IconData seatIcon = Icons.event_seat;

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
                            child: Container(
                              width: 40,
                              height: 40,
                              margin: const EdgeInsets.symmetric(horizontal: 8),
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
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
            // Confirm Booking Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: selectedSeats.isNotEmpty
                    ? () {
                        // Handle booking logic
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text("Booking Confirmation"),
                            content: Text(
                                "You have selected: ${selectedSeats.join(", ")}"),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("OK"),
                              ),
                            ],
                          ),
                        );
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
                child: const Text('Confirm Booking'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
