//
//  ViewController.swift
//  passing-data-between-Vcs
//
//  Created by Jeff Umandap on 4/12/21.
//

import UIKit

class FirstVC: UIViewController, CanReceiveData {
    
    
    @IBOutlet weak var messageLbl: UILabel!
    @IBOutlet weak var messageTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendBtn(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC" {
            let vc = segue.destination as! SecondVC
            
            vc.data = messageTF.text!
            vc.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        messageLbl.text = data
    }
    
    
    @IBAction func switchWasTapped(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = .systemBlue
        } else {
            view.backgroundColor = .systemGreen
        }
    }
    
    
    


}

