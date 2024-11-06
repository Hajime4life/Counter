import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var historyText: UITextView!
    
    private var counter: Int = 0
    private var history: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyText.isEditable = false
    }

    @IBAction func onPlusClicked() {
        counter += 1
        counterLabel.text = "Значение счетчика: \(counter)"
        onSomethingChanged(message: "Значение изменено на +1")
    }
    
    @IBAction func onMinusClicked() {
        if counter > 0 {
            counter -= 1
            counterLabel.text = "Значение счетчика: \(counter)"
            onSomethingChanged(message: "Значение изменено на -1")
        }
        else {
            onSomethingChanged(message: "Попытка уменьшить значение счетчика ниже 0 ")
        }
    }
    
    @IBAction func onResetClicked() {
        counter = 0
        counterLabel.text = "Значение счетчика: \(counter)"
        onSomethingChanged(message: "Значение счетчика сброшено")
    }
    
    private func onSomethingChanged(message: String) {
        let date = DateFormatter()
        date.dateFormat = "dd/MM/yyyy HH:mm:ss"
        let currentDate = date.string(from: Date())
        history.append("[\(currentDate)]: \(message)")
        historyText.text = history.joined(separator: "\n")
    }
}

