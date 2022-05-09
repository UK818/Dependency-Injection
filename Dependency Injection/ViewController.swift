//
//  ViewController.swift
//  Dependency Injection
//
//  Created by mac on 09/05/2022.
//

import UIKit
import MyAppUIKit
import APIKit

extension NetworkRequest: DataFetchable {}

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// https://iosacademy.io/v1/courses/index.php
		
		let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
		view.addSubview(button)
		button.backgroundColor = .systemBlue
		button.setTitle("Tap me", for: .normal)
		button.center = view.center
		button.setTitleColor(.white, for: .normal)
		button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
	}
	
	@objc private func didTapButton() {
		let vc = CoursesViewController(dataFetchable: NetworkRequest.shared)
		present(vc, animated: true)
	}

}

