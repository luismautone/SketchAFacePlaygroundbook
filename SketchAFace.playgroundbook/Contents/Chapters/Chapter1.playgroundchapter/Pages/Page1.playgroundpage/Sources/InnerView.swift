import UIKit
import PlaygroundSupport

public var shapeContainer = [Shape]()
public var typeContainer = [ShapePathType]()


public class InnerView: UIView {
    
    public var shape: Shape!
    
    public func addLayer(shapePath: UIBezierPath, shapePathType: ShapePathType, durationPath: Double) {
        
        let frame = CGRect(x: self.bounds.minX, y: self.bounds.minY, width: self.bounds.width, height: self.bounds.height)
        
        let path = shapePath
        let pathType = shapePathType
        
        shape = Shape(frame: frame, path: path, pathType: pathType, duration: durationPath)
        shapeContainer.append(shape)
        typeContainer.append(pathType)
        
        self.addSubview(shape)
        
        // Drawing the shape
        shape.draw(frame)
    }
    
    public func circle() {
        let circlePath = UIBezierPath(ovalIn: CGRect(x: 201.5, y: 66.5, width: 295, height: 285))
        
        self.addLayer(shapePath: circlePath, shapePathType: .circle, durationPath: 2.0)
    }
    
    public func frontal() {
        let frontalChinPath = UIBezierPath()
        
        frontalChinPath.move(to: CGPoint(x: 212.5, y: 263.5))
        frontalChinPath.addLine(to: CGPoint(x: 228.5, y: 412.5))
        frontalChinPath.addCurve(to: CGPoint(x: 316.5, y: 511.5), controlPoint1: CGPoint(x: 228.5, y: 412.5), controlPoint2: CGPoint(x: 287.5, y: 511.5))
        frontalChinPath.addCurve(to: CGPoint(x: 349.5, y: 511.5), controlPoint1: CGPoint(x: 345.5, y: 511.5), controlPoint2: CGPoint(x: 349.5, y: 511.5))
        
        frontalChinPath.move(to: CGPoint(x: 486.5, y: 263.5))
        frontalChinPath.addLine(to: CGPoint(x: 470.5, y: 412.5))
        frontalChinPath.addCurve(to: CGPoint(x: 382.5, y: 511.5), controlPoint1: CGPoint(x: 470.5, y: 412.5), controlPoint2: CGPoint(x: 411.5, y: 511.5))
        frontalChinPath.addCurve(to: CGPoint(x: 349.5, y: 511.5), controlPoint1: CGPoint(x: 353.5, y: 511.5), controlPoint2: CGPoint(x: 349.5, y: 511.5))
        
        frontalChinPath.move(to: CGPoint(x: 243.5, y: 436.5))
        frontalChinPath.addCurve(to: CGPoint(x: 222.5, y: 546.5), controlPoint1: CGPoint(x: 244.19, y: 472.81), controlPoint2: CGPoint(x: 234.7, y: 521.7))
        frontalChinPath.addCurve(to: CGPoint(x: 164.5, y: 601.5), controlPoint1: CGPoint(x: 199.08, y: 594.1), controlPoint2: CGPoint(x: 164.5, y: 601.5))
        
        frontalChinPath.move(to: CGPoint(x: 454.5, y: 436.5))
        frontalChinPath.addCurve(to: CGPoint(x: 475.5, y: 546.5), controlPoint1: CGPoint(x: 453.81, y: 472.81), controlPoint2: CGPoint(x: 463.3, y: 521.7))
        frontalChinPath.addCurve(to: CGPoint(x: 533.5, y: 601.5), controlPoint1: CGPoint(x: 498.92, y: 594.1), controlPoint2: CGPoint(x: 533.5, y: 601.5))
        
        frontalChinPath.move(to: CGPoint(x: 213.5, y: 262.5))
        frontalChinPath.addCurve(to: CGPoint(x: 178.5, y: 262.5), controlPoint1: CGPoint(x: 180.5, y: 244.5), controlPoint2: CGPoint(x: 178.5, y: 262.5))
        frontalChinPath.addCurve(to: CGPoint(x: 178.5, y: 307.5), controlPoint1: CGPoint(x: 178.5, y: 262.5), controlPoint2: CGPoint(x: 167.5, y: 294.5))
        frontalChinPath.addCurve(to: CGPoint(x: 223.5, y: 356.5), controlPoint1: CGPoint(x: 189.5, y: 320.5), controlPoint2: CGPoint(x: 223.5, y: 356.5))
        
        frontalChinPath.move(to: CGPoint(x: 486.5, y: 262.5))
        frontalChinPath.addCurve(to: CGPoint(x: 521.5, y: 262.5), controlPoint1: CGPoint(x: 519.5, y: 244.5), controlPoint2: CGPoint(x: 521.5, y: 262.5))
        frontalChinPath.addCurve(to: CGPoint(x: 521.5, y: 307.5), controlPoint1: CGPoint(x: 521.5, y: 262.5), controlPoint2: CGPoint(x: 532.5, y: 294.5))
        frontalChinPath.addCurve(to: CGPoint(x: 476.5, y: 356.5), controlPoint1: CGPoint(x: 510.5, y: 320.5), controlPoint2: CGPoint(x: 476.5, y: 356.5))
        
        
        self.addLayer(shapePath: frontalChinPath, shapePathType: .chin, durationPath: 3.0)
    }
    
    public func right() {
        let rightChinPath = UIBezierPath()
        
        rightChinPath.move(to: CGPoint(x: 497.5, y: 198.5))
        rightChinPath.addCurve(to: CGPoint(x: 506.5, y: 304.5), controlPoint1: CGPoint(x: 501.61, y: 248.32), controlPoint2: CGPoint(x: 504.52, y: 273.35))
        rightChinPath.addCurve(to: CGPoint(x: 510.5, y: 429.5), controlPoint1: CGPoint(x: 512.22, y: 394.63), controlPoint2: CGPoint(x: 510.5, y: 429.5))
        
        rightChinPath.move(to: CGPoint(x: 510.27, y: 429.5))
        rightChinPath.addCurve(to: CGPoint(x: 501.39, y: 485.69), controlPoint1: CGPoint(x: 509.97, y: 449.75), controlPoint2: CGPoint(x: 513.37, y: 475.95))
        rightChinPath.addCurve(to: CGPoint(x: 418.5, y: 495.55), controlPoint1: CGPoint(x: 474.3, y: 507.71), controlPoint2: CGPoint(x: 418.5, y: 495.55))
        
        rightChinPath.move(to: CGPoint(x: 321.5, y: 255.5))
        rightChinPath.addCurve(to: CGPoint(x: 327.5, y: 400.5), controlPoint1: CGPoint(x: 324.19, y: 330.04), controlPoint2: CGPoint(x: 321.35, y: 374.54))
        rightChinPath.addCurve(to: CGPoint(x: 351.5, y: 436.5), controlPoint1: CGPoint(x: 335.05, y: 432.35), controlPoint2: CGPoint(x: 351.5, y: 436.5))
        
        rightChinPath.move(to: CGPoint(x: 351.5, y: 436.5))
        rightChinPath.addCurve(to: CGPoint(x: 474.5, y: 486.5), controlPoint1: CGPoint(x: 466.16, y: 480.05), controlPoint2: CGPoint(x: 474.5, y: 486.5))
        
        rightChinPath.move(to: CGPoint(x: 419.5, y: 497.5))
        rightChinPath.addCurve(to: CGPoint(x: 316.5, y: 630.5), controlPoint1: CGPoint(x: 359.5, y: 604.5), controlPoint2: CGPoint(x: 316.5, y: 630.5))
        rightChinPath.addLine(to: CGPoint(x: 316.5, y: 654.5))
        
        rightChinPath.move(to: CGPoint(x: 321.5, y: 255.5))
        rightChinPath.addCurve(to: CGPoint(x: 293.5, y: 235.5), controlPoint1: CGPoint(x: 315.04, y: 254.44), controlPoint2: CGPoint(x: 298.67, y: 236.35))
        rightChinPath.addCurve(to: CGPoint(x: 249.5, y: 275.5), controlPoint1: CGPoint(x: 249.91, y: 228.35), controlPoint2: CGPoint(x: 249.5, y: 275.5))
        
        rightChinPath.move(to: CGPoint(x: 249.5, y: 275.5))
        rightChinPath.addCurve(to: CGPoint(x: 269.78, y: 332.5), controlPoint1: CGPoint(x: 269.78, y: 332.5), controlPoint2: CGPoint(x: 269.78, y: 332.5))
        rightChinPath.addLine(to: CGPoint(x: 322.5, y: 358.5))
        
        rightChinPath.move(to: CGPoint(x: 165.5, y: 498.5))
        rightChinPath.addCurve(to: CGPoint(x: 209.5, y: 426.5), controlPoint1: CGPoint(x: 192.11, y: 453.51), controlPoint2: CGPoint(x: 201.13, y: 443.73))
        rightChinPath.addCurve(to: CGPoint(x: 219.5, y: 378.5), controlPoint1: CGPoint(x: 222.52, y: 399.69), controlPoint2: CGPoint(x: 219.5, y: 378.5))
        
        rightChinPath.move(to: CGPoint(x: 219.5, y: 378.5))
        rightChinPath.addCurve(to: CGPoint(x: 163.5, y: 273.5), controlPoint1: CGPoint(x: 216.42, y: 365.72), controlPoint2: CGPoint(x: 165.92, y: 283.88))
        rightChinPath.addCurve(to: CGPoint(x: 219.5, y: 109.5), controlPoint1: CGPoint(x: 141.58, y: 179.54), controlPoint2: CGPoint(x: 219.5, y: 109.5))
        
        rightChinPath.move(to: CGPoint(x: 219.5, y: 109.5))
        rightChinPath.addCurve(to: CGPoint(x: 333.5, y: 66.5), controlPoint1: CGPoint(x: 259.85, y: 76.74), controlPoint2: CGPoint(x: 333.5, y: 66.5))

        
        self.addLayer(shapePath: rightChinPath, shapePathType: .chin, durationPath: 3.0)
    }
    
    public func left() {
        let leftChinPath = UIBezierPath()
        
        leftChinPath.move(to: CGPoint(x: 368.5, y: 67.5))
        leftChinPath.addCurve(to: CGPoint(x: 495.5, y: 117.5), controlPoint1: CGPoint(x: 402.29, y: 70.1), controlPoint2: CGPoint(x: 468.26, y: 83.47))
        leftChinPath.addCurve(to: CGPoint(x: 528.5, y: 227.5), controlPoint1: CGPoint(x: 531.13, y: 162.01), controlPoint2: CGPoint(x: 528.5, y: 227.5))
        
        leftChinPath.move(to: CGPoint(x: 202.5, y: 232.5))
        leftChinPath.addCurve(to: CGPoint(x: 210.5, y: 366.5), controlPoint1: CGPoint(x: 202.5, y: 278.58), controlPoint2: CGPoint(x: 199.39, y: 325.4))
        leftChinPath.addCurve(to: CGPoint(x: 266.5, y: 488.5), controlPoint1: CGPoint(x: 229.28, y: 436.01), controlPoint2: CGPoint(x: 266.5, y: 488.5))
        leftChinPath.addLine(to: CGPoint(x: 330.5, y: 495.5))
        leftChinPath.addLine(to: CGPoint(x: 461.5, y: 413.5))
        leftChinPath.addLine(to: CGPoint(x: 479.5, y: 341.5))
        
        leftChinPath.move(to: CGPoint(x: 294.5, y: 492.5))
        leftChinPath.addCurve(to: CGPoint(x: 323.5, y: 628.5), controlPoint1: CGPoint(x: 297.5, y: 535.5), controlPoint2: CGPoint(x: 323.5, y: 628.5))
        
        leftChinPath.move(to: CGPoint(x: 479.5, y: 341.5))
        leftChinPath.addCurve(to: CGPoint(x: 488.5, y: 265.5), controlPoint1: CGPoint(x: 483.23, y: 313.9), controlPoint2: CGPoint(x: 480.41, y: 284.55))
        leftChinPath.addCurve(to: CGPoint(x: 528.5, y: 227.5), controlPoint1: CGPoint(x: 502.11, y: 233.47), controlPoint2: CGPoint(x: 528.5, y: 227.5))
        
        leftChinPath.move(to: CGPoint(x: 529.5, y: 227.5))
        leftChinPath.addCurve(to: CGPoint(x: 543.5, y: 240.5), controlPoint1: CGPoint(x: 547.5, y: 233.5), controlPoint2: CGPoint(x: 543.5, y: 240.5))
        leftChinPath.addLine(to: CGPoint(x: 543.5, y: 266.5))
        leftChinPath.addLine(to: CGPoint(x: 543.5, y: 292.5))
        
        leftChinPath.move(to: CGPoint(x: 480.5, y: 341.5))
        leftChinPath.addCurve(to: CGPoint(x: 524.5, y: 314.5), controlPoint1: CGPoint(x: 495.89, y: 331), controlPoint2: CGPoint(x: 514.97, y: 321.96))
        leftChinPath.addCurve(to: CGPoint(x: 543.5, y: 292.5), controlPoint1: CGPoint(x: 542.21, y: 300.64), controlPoint2: CGPoint(x: 543.5, y: 292.5))
        
        leftChinPath.move(to: CGPoint(x: 475.5, y: 360.5))
        leftChinPath.addCurve(to: CGPoint(x: 522.5, y: 509.5), controlPoint1: CGPoint(x: 491.37, y: 425.63), controlPoint2: CGPoint(x: 497.07, y: 475.6))
        leftChinPath.addCurve(to: CGPoint(x: 616.5, y: 574.5), controlPoint1: CGPoint(x: 559.54, y: 558.89), controlPoint2: CGPoint(x: 616.5, y: 574.5))
        
        leftChinPath.move(to: CGPoint(x: 295.5, y: 505.5))
        leftChinPath.addCurve(to: CGPoint(x: 182.5, y: 568.5), controlPoint1: CGPoint(x: 252.5, y: 541.5), controlPoint2: CGPoint(x: 182.5, y: 568.5))

        
        self.addLayer(shapePath: leftChinPath, shapePathType: .chin, durationPath: 3.0)
    }
    
    func reset() {
        setNeedsDisplay()
    }
    
    func rotate() {
        setNeedsDisplay()
    }
    
}
