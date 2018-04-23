/*:
 In this playground you will learn the basics for the sketching of a face.
 
 Once you have chosen the parameters to give to your face and you have tapped on `Run My Code`,
 the playground will help you make your drawing through *guidelines*.
 Remember that the key to a good drawing is to free your creativity: guidelines are only a help to your sketch.
 
 * Callout(Note):
     Use `drawCircle()` and `drawDirection()` functions and then start sketching, even with your finger!
 
 **1**. Make a **circle**
 
 ![Circle indications](sketch_circle.png)
 
 **2**. Choose the **direction** in which the face should look
 
 ![Direction indications](directions.jpg)
 
 **3**. Sketch the **outline** of the face
 
 ![Outline indications](outline.jpg)

 Tap on the bin icon to delete everything you have drawn so far.
 
 [**Next Page**](@next)
*/

//#-hidden-code
import UIKit
import PlaygroundSupport

let page = PlaygroundPage.current
let proxy = page.liveView as? PlaygroundRemoteLiveViewProxy


func drawCircle() {
    proxy?.send(.boolean(true))
}

func drawDirection(_ type: DirectionShape) {
    switch type {
    case .frontal:
        proxy?.send(.string("frontal"))
    case .profile:
        proxy?.send(.string("profile"))
    case .threeQuarters:
        proxy?.send(.string("threeQuarters"))
    default:
        break
    }
}
//#-end-hidden-code
drawCircle()
drawDirection(/*#-editable-code*/.frontal/*#-end-editable-code*/)
