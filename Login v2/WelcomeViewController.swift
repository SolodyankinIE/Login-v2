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
    
    private let primaryColor = UIColor(
        red: 109/255,
        green: 191/255,
        blue: 156/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 203/255,
        green: 253/255,
        blue: 243/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        welcomeLabel.text = "Welcome, \n \(user.firstname) \(user.secondname)!"
    }
    
    @IBAction func logOutButtonAction() {
        // возврат на предыдущий экран
        self.dismiss(animated: true, completion: nil)
        
    }
}

extension WelcomeViewController {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        view.layer.insertSublayer(gradient, at: 0)
    }
}

