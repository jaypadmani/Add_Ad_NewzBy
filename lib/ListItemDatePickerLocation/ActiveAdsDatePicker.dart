import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ActiveAdsDatePicker extends StatefulWidget {
  @override
  State<ActiveAdsDatePicker> createState() => _ActiveAdsDatePickerState();
}

class _ActiveAdsDatePickerState extends State<ActiveAdsDatePicker> {
  DateTime? _SelectedDateActive;

  Future<void> _openDatePickerActive() async {
    final DateTime? ActiveDate = await showDatePicker(
      context: this.context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (ActiveDate != null && ActiveDate != _SelectedDateActive) {
      setState(() {
        _SelectedDateActive = ActiveDate;
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
                child: _SelectedDateActive == null
                    ? Text(
                        dateFormatter.format(current_date),
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      )
                    : Text(
                        dateFormatter.format(_SelectedDateActive!),
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
