//
//  ViewController.swift
//  Login v2
//
//  Created by Игорь Солодянкин on 04.03.2022.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = User.getUserData()

    @IBAction func logInButtonAction() {
        guard
            userNameTextField.text == user.login,
            passwordTextField.text == user.password
        else {
            showAlert(title: "Не верный логин или пароль",
                      message: "Пожалуйста проверьте данные")
            
            return
        }
        clearTextField()
    }
    
    @IBAction func forgotUserNamePressed() {
        showAlert(title: "Напоминание",
                  message: "Ваш логин: \(user.login)")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(title: "Напоминание",
                  message: "Ваш пароль: \(user.login)")
    }
    
    func clearTextField() {
        userNameTextField.text = nil
        passwordTextField.text = nil
    }
}



extension LogInViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

