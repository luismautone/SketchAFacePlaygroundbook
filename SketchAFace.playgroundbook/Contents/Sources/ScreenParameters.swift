import Foundation
import UIKit

/* * *  Current device screen  * * */

let screen = UIScreen.main


/* * *  Current device screen parameters  * * */

public class ScreenParameters {
    
    static public let shared = ScreenParameters()
    
    public let screenWidth = screen.bounds.width
    public let screenHeight = screen.bounds.height
    public let screenCenter = CGPoint(x: screen.bounds.width / 2, y: screen.bounds.height / 2)

}
