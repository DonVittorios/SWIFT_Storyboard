//
//  LoginViewController.swift
//  VKDonV
//
//  Created by Виктор on 26.12.2021.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: - Keyboard Show & Hide
        // Подписываюсь на события NC
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidShow(_:)), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDidHide), name: UIResponder.keyboardWillHideNotification, object: nil)

        let recognizer = UITapGestureRecognizer.init(target: self, action: #selector(onTap))
        recognizer.cancelsTouchesInView = false
        self.view.addGestureRecognizer(recognizer)
    }
    // Активируем тап по экрану
    @objc func onTap() {
        self.view.endEditing(true)
    }
    // Задаю высоту Scroll View на размер клавиатуры
    @objc func keyboardDidShow(_ notification: Notification) {
        guard let keyboardHeight = ((notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue)?.height else {return}

        let insets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardHeight + 50, right: 0)
        scrollView.contentInset = insets
        scrollView.scrollIndicatorInsets = insets
    }
    // Убираю полосу прокрутки и увеличение Scroll View
    @objc func keyboardDidHide() {
        scrollView.contentInset = UIEdgeInsets.zero
        scrollView.scrollIndicatorInsets = UIEdgeInsets.zero
    }
    // Отписываюсь от событий NC
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    // MARK: - Action
    @IBAction func loginButtonAction(_ sender: Any) {
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        // Проверяю данные
        let checkResult = checkUserData()

        // Если данные не верны, покажет ошибку
        if !checkResult {
            showLoginError()
        }

        // Вернет результат
        return checkResult
    }
    func checkUserData() -> Bool {
        guard let login = loginTextField.text,
              let password = passwordTextField.text else { return false }

        if login == "admin" && password == "12345" {
            return true
        } else {
            return false
        }
    }
    // Всплывающее окно!
    func showLoginError() {
        // Создан контроллер
        let alert = UIAlertController(title: "Ошибка", message: "Введены не верные данные пользователя", preferredStyle: .alert)
        // Создаем кнопку для UIAlertController
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        // Добавляем кнопку на UIAlertController
        alert.addAction(action)
        // Показываем UIAlertController
        present(alert, animated: true, completion: nil)
    }

}

