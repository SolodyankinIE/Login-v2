//
//  WelcomeViewController.swift
//  Login v2
//
//  Created by Игорь Солодянкин on 04.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    private let user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \n \(user.firstname) \(user.secondname)!"
    }
    
    @IBAction func logOutButtonAction() {
        // возврат на предыдущий экран
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
}
