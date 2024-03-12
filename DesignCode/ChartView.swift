//
//  ChartView.swift
//  DesignCode
//
//  Created by Polina Poznyak on 11.03.24.
//

import SwiftUI
import Charts

struct ChartView: View {
    var body: some View {
        Chart {
            ForEach(data) { item in
                LineMark(x: .value("Day", item.day), y: .value("Value", item.value), series: .value("Year", "2023"))
                    .cornerRadius(10)
                    .interpolationMethod(.catmullRom)
                    .foregroundStyle(by: .value("Year", "2023"))
                    .symbol(by: .value("Year", "2023"))
            }
            ForEach(data2) { item in
                LineMark(x: .value("Day", item.day), y: .value("Value", item.value), series: .value("Year", "2024"))
                    .cornerRadius(10)
                    .interpolationMethod(.catmullRom)
                    .foregroundStyle(by: .value("Year", "2024"))
                    .symbol(by: .value("Year", "2024"))
            }
        }
        .frame(height: 300)
        .padding(20)
    }
}

#Preview {
    ChartView()
}

struct Value: Identifiable {
    var id = UUID()
    var day: String
    var value: Double
}

let data = [
    Value(day: "Jun 1", value: 200),
    Value(day: "Jun 2", value: 96),
    Value(day: "Jun 3", value: 312),
    Value(day: "Jun 4", value: 256),
    Value(day: "Jun 5", value: 505),
]

let data2 = [
    Value(day: "Jun 1", value: 151),
    Value(day: "Jun 2", value: 192),
    Value(day: "Jun 3", value: 176),
    Value(day: "Jun 4", value: 158),
    Value(day: "Jun 5", value: 401),
]
