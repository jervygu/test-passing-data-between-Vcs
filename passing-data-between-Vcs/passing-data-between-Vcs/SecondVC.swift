//
//  SecondVC.swift
//  passing-data-between-Vcs
//
//  Created by Jeff Umandap on 4/12/21.
//

import UIKit

protocol CanReceiveData {
    func dataReceived(data: String)
}

class SecondVC: UIViewController {
     
    var data = ""
    var delegate : CanReceiveData?
    
    @IBOutlet weak var messageLbl: UILabel!
    @IBOutlet weak var messageTF: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        messageLbl.text = data

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendBtn(_ sender: Any) {
        delegate?.dataReceived(data: messageTF.text!)
        dismiss(animated: true, completion: nil)
    }
    
}
