import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var circle1: CircleView!
    @IBOutlet private weak var circle2: CircleView!
    @IBOutlet private weak var circle3: CircleView!
    @IBOutlet private weak var circle4: CircleView!
    @IBOutlet private weak var circle5: CircleView!
    @IBOutlet private weak var circle6: CircleView!
    @IBOutlet private weak var circle7: CircleView!
    @IBOutlet private var circles: [CircleView]!
    
    var activeCircles = [CircleView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activeCircles = circles
//        roundCorners(for: activeCircles)
    }
    
    @IBAction func panCircle1Action(_ gesture: UIPanGestureRecognizer) {
        move(circle1, with: gesture)
    }
    
    @IBAction func panCircle2Action(_ gesture: UIPanGestureRecognizer) {
        move(circle2, with: gesture)
    }
    
    @IBAction func panCircle3Action(_ gesture: UIPanGestureRecognizer) {
        move(circle3, with: gesture)
    }
    
    @IBAction func panCircle4Action(_ gesture: UIPanGestureRecognizer) {
        move(circle4, with: gesture)
    }
    
    @IBAction func panCircle5Action(_ gesture: UIPanGestureRecognizer) {
        move(circle5, with: gesture)
    }
    
    @IBAction func panCircle6Action(_ gesture: UIPanGestureRecognizer) {
        move(circle6, with: gesture)
    }
    
    @IBAction func panCircle7Action(_ gesture: UIPanGestureRecognizer) {
        move(circle7, with: gesture)
    }
    
    private func roundCorners(for circles: [CircleView]) {
        for circle in circles {
            circle.layer.cornerRadius = circle.frame.size.width / 2
        }
    }
    
    private func move(_ justMovedView: CircleView, with gesture: UIPanGestureRecognizer) {
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        
        gestureView.center = CGPoint(
            x: gestureView.center.x + gestureTranslation.x,
            y: gestureView.center.y + gestureTranslation.y
        )
        
        gesture.setTranslation(.zero, in: view)
        guard gesture.state == .ended else { return }
    }
    
    @IBAction func panCircle7Action(_ sender: UIPanGestureRecognizer) {
    }
    
}
