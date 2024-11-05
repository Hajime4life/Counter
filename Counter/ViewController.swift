import UIKit

class ViewController: UIViewController {

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
    
}

