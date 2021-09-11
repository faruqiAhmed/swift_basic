import UIKit

import Foundation

@objc protocol rectangle {
   var area: Double { get }
}
@objc class Circle: NSObject, rectangle {
   let pi = 3.1415927
   var radius: Double
   var area: Double { return pi * radius * radius }
   init(radius: Double) { self.radius = radius }
}
class result: rectangle {
   var area: Double
   init(area: Double) { self.area = area }
}
class sides {
   var rectsides: Int
   init(rectsides: Int) { self.rectsides = rectsides }
}
let objects: [AnyObject] = [Circle(radius: 2.0),result(area:198),sides(rectsides: 4)]

for object in objects {
   if let objectWithArea = object as? rectangle {
      print("Area is \(objectWithArea.area)")
   } else {
      print("Rectangle area is not defined")
   }
}
