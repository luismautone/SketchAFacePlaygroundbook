import UIKit

// Shape class

public class Shape: UIView {
    
    public let shapeLayer = CAShapeLayer()
    private var shapePath = UIBezierPath()
    public var shapePathType: ShapePathType!
    private var animationDuration = Double()
    
    public init(frame: CGRect, path: UIBezierPath, pathType: ShapePathType, duration: Double) {
        self.shapePath = path
        self.shapePathType = pathType
        self.animationDuration = duration
        super.init(frame: frame)
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func draw(_ rect: CGRect) {
        
        self.backgroundColor = .clear
        
        let lineColor = UIColor(red: 0.222, green: 0.215, blue: 0.215, alpha: 0.323)
        
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = 1
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = kCALineCapRound
        shapeLayer.lineDashPattern = [10, 10]
        shapeLayer.lineDashPhase = 0
        
        shapeLayer.strokeEnd = 0
        
        shapeLayer.path = shapePath.cgPath
        
        animateLayer()
        
        self.layer.addSublayer(self.shapeLayer)
    }
    
    private func animateLayer() {
        
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        basicAnimation.toValue = 1
        
        basicAnimation.duration = animationDuration
        
        basicAnimation.fillMode = kCAFillModeForwards
        basicAnimation.isRemovedOnCompletion = false
        
        shapeLayer.add(basicAnimation, forKey: nil)
    }
    
}

