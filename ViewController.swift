import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shacklabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func becomeFirstResponder() -> Bool {
        return true
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
                let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let main: SecondVC? = (mainStoryboard.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC)
              self.navigationController?.pushViewController(main!, animated: true)
           
            //shacklabel.text = "Shaken, not stirred"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

