import UIKit

// All the types of shape paths

public enum ShapePathType {
    case circle
    case chin
    case nose
    case mouth
    case eyes
}

public let circle = UIBezierPath(ovalIn: CGRect(x: 203.5, y: 85.5, width: 282, height: 296))

public enum DirectionShape {
    case frontal
    case profile
    case threeQuarters
}

