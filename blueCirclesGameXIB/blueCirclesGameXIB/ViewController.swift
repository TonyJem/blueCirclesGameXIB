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
    
    var activeCircles = [UIView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activeCircles = circles
        roundCorners(for: activeCircles)
    }
    
    @IBAction func panCircle1Action(_ gesture: UIPanGestureRecognizer) {
    }
    
    @IBAction func panCircle2Action(_ gesture: UIPanGestureRecognizer) {
    }
    
    @IBAction func panCircle3Action(_ gesture: UIPanGestureRecognizer) {
    }
    
    @IBAction func panCircle4Action(_ gesture: UIPanGestureRecognizer) {
    }
    
    @IBAction func panCircle5Action(_ gesture: UIPanGestureRecognizer) {
    }
    
    @IBAction func panCircle6Action(_ gesture: UIPanGestureRecognizer) {
    }
    
    @IBAction func panCircle7Action(_ gesture: UIPanGestureRecognizer) {
    }
    
    private func roundCorners(for circles: [UIView]) {
        for circle in circles {
            circle.layer.cornerRadius = circle.frame.size.width / 2
        }
    }
    
    @IBAction func panCircle6Action(_ sender: UIPanGestureRecognizer) {
    }
    
    @IBAction func panCircle7Action(_ sender: UIPanGestureRecognizer) {
    }
    
}
