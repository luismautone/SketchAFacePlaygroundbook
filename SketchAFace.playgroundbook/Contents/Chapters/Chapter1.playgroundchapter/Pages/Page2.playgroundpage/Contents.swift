/*:
 You have the basis for the face: it's time to add some details, draw a big nose or some cool hair!
 
 ![hair details](hair.jpg)
 ![eyes indications](eyes.jpg)
 ![noses indications](noses.jpg)
 
 * Callout(Note):
     Similarly to the previous page, use the three functions `drawNose()`, `drawEyes()` and `drawMouth()` to have a guide on where to draw them.
 
 If you want more space, put your iPad in full screen landscape mode.
 */

//#-hidden-code
import UIKit
import PlaygroundSupport

let page = PlaygroundPage.current
let proxy = page.liveView as? PlaygroundRemoteLiveViewProxy


func drawNose() {
    proxy?.send(.string("nose"))
}

func drawEyes() {
    proxy?.send(.string("eyes"))
}

func drawMouth() {
    proxy?.send(.string("mouth"))
}
//#-end-hidden-code
//#-code-completion(everything, hide)
//#-code-completion(identifier, show, drawNose(), drawEyes(), drawMouth())
//#-editable-code Tap to enter code
//#-end-editable-code
