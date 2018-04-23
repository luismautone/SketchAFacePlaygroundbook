import UIKit
import PlaygroundSupport

public class MyLiveView : UIView, PlaygroundLiveViewSafeAreaContainer {}

public class BackgroundViewController: UIViewController {
    
    var backgroundView: MyLiveView!
    var innerView: InnerView!
    var drawingView: DrawingView!
    
    override public func viewDidLoad() {
        
        // Set the backgroundView
        self.backgroundView = MyLiveView()
        self.view = self.backgroundView
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.jpeg")!)
        
        // Set the innerView, for the shape drawing layers
        self.innerView = InnerView(frame: CGRect(x: 0, y: 0, width: 900, height: 700))
        self.innerView.backgroundColor = .clear
        self.innerView.clipsToBounds = true
        self.innerView.translatesAutoresizingMaskIntoConstraints = false
    
        self.view.addSubview(innerView)
        
        // Add costraints to the innerView
        NSLayoutConstraint.activate([
            self.innerView.widthAnchor.constraint(equalToConstant: 700.0),
            self.innerView.heightAnchor.constraint(equalToConstant: 700.0),
            self.innerView.centerXAnchor.constraint(equalTo: self.backgroundView.centerXAnchor),
            self.innerView.centerYAnchor.constraint(equalTo: self.backgroundView.centerYAnchor)
        ])
        
        // Set the drawingView
        self.drawingView = DrawingView()
        self.drawingView.backgroundColor = .clear
        self.drawingView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(drawingView)
        
        
        NSLayoutConstraint.activate([
            self.drawingView.widthAnchor.constraint(equalToConstant: ScreenParameters.shared.screenWidth),
            self.drawingView.heightAnchor.constraint(equalToConstant: ScreenParameters.shared.screenHeight),
            self.drawingView.centerXAnchor.constraint(equalTo: self.backgroundView.centerXAnchor),
            self.drawingView.centerYAnchor.constraint(equalTo: self.backgroundView.centerYAnchor)
            ])
        
        
        // Set the delete button
        let deleteFrame = CGRect(x: 50, y: 50, width: 100, height: 100)
        let delete = UIButton(frame: deleteFrame)
        delete.imageView?.contentMode = .scaleAspectFit
        delete.setBackgroundImage(UIImage(named: "trash@256x.png"), for: .normal)
        delete.addTarget(drawingView, action: #selector(self.drawingView.erase), for: .touchUpInside)
        delete.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(delete)
        
        NSLayoutConstraint.activate([
            delete.widthAnchor.constraint(equalToConstant: 150),
            delete.heightAnchor.constraint(equalToConstant: 150),
            delete.leadingAnchor.constraint(equalTo: self.backgroundView.liveViewSafeAreaGuide.leadingAnchor, constant: 25),
            delete.topAnchor.constraint(equalTo: self.backgroundView.liveViewSafeAreaGuide.topAnchor, constant: 10)
            ])
    
    }
    
    override public func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.innerView.reset()
    }
    
    
    private var oldBounds = CGRect()
    private let padding: CGFloat = 20.0
    
    override public func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
        
        if oldBounds != self.backgroundView.liveViewSafeAreaGuide.layoutFrame {
            
            oldBounds = self.backgroundView.liveViewSafeAreaGuide.layoutFrame
            
            var scale: CGFloat = 1.0
            
            if self.backgroundView.liveViewSafeAreaGuide.layoutFrame.width < self.backgroundView.liveViewSafeAreaGuide.layoutFrame.height {
                scale = (self.backgroundView.liveViewSafeAreaGuide.layoutFrame.width - padding)/(self.backgroundView.frame.width)
            } else {
                scale = (self.backgroundView.liveViewSafeAreaGuide.layoutFrame.width - padding)/(self.backgroundView.frame.height)
            }
            
            self.innerView.transform = (self.backgroundView.transform.scaledBy(x: scale, y: scale))
            self.drawingView.transform = (self.backgroundView.transform.scaledBy(x: scale, y: scale))
            
        } else {
            self.innerView.rotate()
        }
        
    }
    
}


extension BackgroundViewController: PlaygroundLiveViewMessageHandler {
    
    // function that deletes a shape already present
    
    public func delete(_ type: ShapePathType) {
            for each in shapeContainer {
                if each.shapePathType == type {
                    each.removeFromSuperview()
                }
            }
    }
    
    
    
    public func receive(_ message: PlaygroundValue) {
        
        switch message {
            
            
            // Case: drawing of a circle
            
        case .boolean(let value):
            
            if typeContainer.contains(.circle) {
                delete(.circle)
                self.innerView.circle()
            } else {
                self.innerView.circle()
            }
            
            break
            
            
            // Case: drawing of face direction
            
        case .string(let value):
            
            switch value {
                
            case "frontal":
                
                
                if typeContainer.contains(.chin) {
                    delete(.chin)
                    self.innerView.frontal()
                } else {
                    self.innerView.frontal()
                }
                
                
                break
                
                
            case "profile":
                
                
                if typeContainer.contains(.chin) {
                    delete(.chin)
                    self.innerView.right()
                } else {
                    self.innerView.right()
                }
                
                
                break
                
            case "threeQuarters":
                
                
                if typeContainer.contains(.chin) {
                    delete(.chin)
                    self.innerView.left()
                } else {
                    self.innerView.left()
                }
                
                
                break
                
            default:
                break
            }
            
        default:
            return
        }
    }
}
