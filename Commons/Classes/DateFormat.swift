//
//  DateFormat.swift
//  Commons
//
//  Created by Lucas Abdel Leitao on 28/01/21.
//

import Foundation

public let date = Date()
public let formate = date.getFormattedDate(format: "dd mmm yyyy") // Set output formate

public extension Date {
   public func getFormattedDate(format: String) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
}
