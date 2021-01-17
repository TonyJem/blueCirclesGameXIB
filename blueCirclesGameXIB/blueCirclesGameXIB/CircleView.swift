import UIKit

class CircleView: UIView {
    
    @IBOutlet weak var xibCircleBody: UIView!
    
    private var workingView: UIView!
    private var xibName: String = "CircleView"
    
    var circleColor: UIColor = .clear {
        didSet {
            xibCircleBody.backgroundColor = circleColor
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setCustomView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setCustomView()
    }
    
    private func getFromXib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let xib = UINib(nibName: xibName, bundle: bundle)
        let view = xib.instantiate(withOwner: self, options: nil).first as! UIView
        view.layer.cornerRadius = view.frame.size.width / 2
        return view
    }
    
    private func setCustomView() {
        workingView = getFromXib()
        workingView.frame = bounds
        workingView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        addSubview(workingView)
    }
    
    func setBackGroundColor(with newColor: UIColor) {
        circleColor = newColor
    }
}
