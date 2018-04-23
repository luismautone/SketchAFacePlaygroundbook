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
    
    public func nose() {
                
        let nosePath = UIBezierPath()
                
        nosePath.move(to: CGPoint(x: 337.5, y: 405.5))
        nosePath.addLine(to: CGPoint(x: 354.5, y: 411.5))
        nosePath.addLine(to: CGPoint(x: 378.5, y: 405.5))
                
        self.addLayer(shapePath: nosePath, shapePathType: .nose, durationPath: 2.0)
        
    }
    
    public func eyes() {
        
        let eyesPath1 = UIBezierPath(ovalIn: CGRect(x: 228, y: 291, width: 93, height: 50))
        let eyesPath2 = UIBezierPath(ovalIn: CGRect(x: 398, y: 291, width: 93, height: 50))
                
        self.addLayer(shapePath: eyesPath1, shapePathType: .eyes, durationPath: 2.0)
        self.addLayer(shapePath: eyesPath2, shapePathType: .eyes, durationPath: 2.0)
                
    }
    
    public func mouth() {
        
        let mouthPath = UIBezierPath()
        mouthPath.move(to: CGPoint(x: 329.5, y: 453.5))
        mouthPath.addCurve(to: CGPoint(x: 356.5, y: 458.5), controlPoint1: CGPoint(x: 329.5, y: 455.47), controlPoint2: CGPoint(x: 342.73, y: 458.98))
        mouthPath.addCurve(to: CGPoint(x: 385.5, y: 453.5), controlPoint1: CGPoint(x: 370.72, y: 458.01), controlPoint2: CGPoint(x: 385.5, y: 453.5))
                
        self.addLayer(shapePath: mouthPath, shapePathType: .mouth, durationPath: 2.0)
    }
    
    func reset() {
        setNeedsDisplay()
    }
    
    func rotate() {
        setNeedsDisplay()
    }
    
}
