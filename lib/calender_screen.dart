import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  _CalenderScreenState createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  DateTime? _selectedDate;
  DateRangePickerController _dateRangePickerController =
  DateRangePickerController();
  DateFormat format = DateFormat('yyyy-MM-dd');
  String dateFormat = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('カレンダーデモ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_selectedDate == null
                ? '日付が選択されていません'
                : '選択した日付: ${dateFormat}'),
            OutlinedButton.icon(
              icon: Icon(Icons.calendar_month),
              label: Text('カレンダー'),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return SfDateRangePicker(
                      initialSelectedDate: _selectedDate,
                      view: DateRangePickerView.year,
                      showActionButtons: true,
                      controller: _dateRangePickerController,
                      onSubmit: (date) {
                        setState(() {
                          _selectedDate = date as DateTime?;
                          dateFormat = format.format(date as DateTime);
                        });
                        Navigator.of(context).pop(); // DatePickerを閉じる
                      },
                      onCancel: () {
                        _dateRangePickerController.selectedRange = null;
                        Navigator.of(context).pop(); // DatePickerを閉じる
                      },
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
