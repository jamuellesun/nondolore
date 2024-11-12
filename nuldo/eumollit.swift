import UIKit

func applyBlendMode(context: CGContext, blendMode: CGBlendMode) {
    switch blendMode {
    case .destinationOut:
        // Set the blend mode to destinationOut
        context.setBlendMode(.destinationOut)
        
        // Perform some drawing operations here
        // For example, fill a rectangle to demonstrate the effect
        context.setFillColor(UIColor.red.cgColor)
        context.fill(CGRect(x: 50, y: 50, width: 100, height: 100))
        
    // Handle other blend modes if necessary
    default:
        // Default behavior or another blend mode
        context.setBlendMode(.normal)
    }
}

// Usage within a UIView's draw(_:) method
class MyCustomView: UIView {
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        // Apply the destinationOut blend mode
        applyBlendMode(context: context, blendMode: .destinationOut)
    }
}
