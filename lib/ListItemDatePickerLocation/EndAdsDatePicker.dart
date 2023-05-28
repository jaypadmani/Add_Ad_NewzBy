import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EndAdsDatePicker extends StatefulWidget {
  const EndAdsDatePicker({Key? key}) : super(key: key);

  @override
  State<EndAdsDatePicker> createState() => _EndAdsDatePickerState();
}

class _EndAdsDatePickerState extends State<EndAdsDatePicker> {
  DateTime? _SelectedDateEnd;

  Future<void> _openDatePickerActive() async {
    final DateTime? EndDate = await showDatePicker(
      context: this.context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (EndDate != null && EndDate != _SelectedDateEnd) {
      setState(() {
        _SelectedDateEnd = EndDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormatter = DateFormat('MM/dd/yy');
    DateTime current_date = DateTime.now();

    return Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: 25,
          width: 90,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: TextButton(
                onPressed: _openDatePickerActive,
                child: _SelectedDateEnd == null
                    ? Text(
                        dateFormatter.format(current_date),
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      )
                    : Text(
                        dateFormatter.format(_SelectedDateEnd!),
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
