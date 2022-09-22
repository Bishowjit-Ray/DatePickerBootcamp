//
//  ContentView.swift
//  DatePickerBootcamp
//
//  Created by Bishowjit Ray on 17/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var selecteDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    var dateFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
        VStack{
            Text("Selected Date is:")
            Text(dateFormatter.string(from: selecteDate))
            
    //       DatePicker("Select a Date", selection: $selecteDate)
    //        DatePicker(
    //                  "Select a date",
    //                  selection: $selecteDate, displayedComponents:
    //                    [.date, .hourAndMinute])
            
            DatePicker("Select a date", selection: $selecteDate, in: startingDate...endingDate)
            
                .datePickerStyle(
                    CompactDatePickerStyle()
                    //GraphicalDatePickerStyle()
                  // WheelDatePickerStyle()
                )
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
