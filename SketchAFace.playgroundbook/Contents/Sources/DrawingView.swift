import UIKit

public class DrawingView: UIView {
    
    var isDrawing = false
    var lastPoint: CGPoint!
    var strokeColor: CGColor = UIColor(red: 0.582, green: 0.582, blue: 0.582, alpha: 0.326).cgColor
    public var strokes = [Stroke]()
    
    
    public init() {
        super.init(frame: CGRect(x: 0, y: 0, width: ScreenParameters.shared.screenWidth, height: ScreenParameters.shared.screenHeight))
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !isDrawing else { return }
        isDrawing = true
        guard let touch = touches.first else { return }
        let currentPoint = touch.location(in: self)
        lastPoint = currentPoint
    }
    
    public override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isDrawing else { return }
        guard let touch = touches.first else { return }
        let currentPoint = touch.location(in: self)
        let stroke = Stroke(startPoint: lastPoint, endPoint: currentPoint, color: strokeColor)
        strokes.append(stroke)
        lastPoint = currentPoint
        setNeedsDisplay()
    }
    
    public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isDrawing else { return }
        isDrawing = false
        guard let touch = touches.first else { return }
        let currentPoint = touch.location(in: self)
        let stroke = Stroke(startPoint: lastPoint, endPoint: currentPoint, color: strokeColor)
        strokes.append(stroke)
        lastPoint = nil
        setNeedsDisplay()
    }
    
    public override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(3)
        context?.setLineCap(.round)
        for stroke in strokes {
            context?.beginPath()
            context?.move(to: stroke.startPoint)
            context?.addLine(to: stroke.endPoint)
            context?.setStrokeColor(stroke.color)
            context?.strokePath()
        }
    }
    

    
    @objc public func erase() {
        strokes = []
        setNeedsDisplay()
    }
}
