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
        
        hideIfNeeded(movedCircle: justMovedView)
    }
    
    private func hideIfNeeded(movedCircle: CircleView) {
        for circle in activeCircles {
            if circle == movedCircle {
                continue
            }
            let deltaX = circle.center.x - movedCircle.center.x
            let deltaY = circle.center.y - movedCircle.center.y
            let distanceBetweenCenters = (pow(deltaX, 2) + pow(deltaY, 2)).squareRoot()
            
            if distanceBetweenCenters < circle.frame.size.width / 4 {
                movedCircle.isHidden = true
                removeFromCircles(view: movedCircle)
                increaseSize(for: circle)
                changeColor(for: circle)
                break
            }
        }
    }
    
    private func removeFromCircles(view: CircleView) {
        for (index, circle) in activeCircles.enumerated() {
            if circle == view {
                activeCircles.remove(at: index)
                break
            }
        }
    }
    
    private func increaseSize(for circle: CircleView) {
        let newSize = circle.frame.size.width * 1.2
        circle.frame.size.width = newSize
        circle.frame.size.height = newSize
        circle.layer.cornerRadius = newSize / 2
    }
    
    private func changeColor(for circle: CircleView) {
        circle.setBackGroundColor(with: .blue)
    }
}
