import UIKit

protocol daysofaweek {
   mutating func print()
}

enum days: daysofaweek {
   case sun, mon, tue, wed, thurs, fri, sat
   mutating func print() {
      switch self {
      case .sun:
        self = days.sun
        Swift.print("Sunday")
      case .mon:
        self = days.mon
        Swift.print("Monday")
      case .tue:
        self = days.tue
        Swift.print("Tuesday")
      case .wed:
        self = days.wed
        Swift.print("Wednesday")
      case .mon:
        self = days.thurs
        Swift.print("Thursday")
      case .tue:
        self = days.fri
        Swift.print("Friday")
      case .sat:
        self = days.sat
        Swift.print("Saturday")
         default:
            Swift.print("NO Such Day")
      }
   }
}

var res = days.wed
res.print()

