import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!

    @IBOutlet weak var plusButton: UIButton!
    private var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onPlusClicked() {
        counter += 1
        counterLabel.text = "Значение счетчика: \(counter)"
    }
    
    @IBAction func onMinusClicked() {
        if counter > 0 {
            counter -= 1
            counterLabel.text = "Значение счетчика: \(counter)"
        }
    }
    
}

