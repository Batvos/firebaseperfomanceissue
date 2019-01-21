//
//  ViewController.swift
//  textfieldbug
//
//  Created by Denis Batvinkin on 17/01/2019.
//  Copyright © 2019 func. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
	var textf1: UITextField = {
		let textf = UITextField()
		textf.textContentType = .emailAddress
		textf.placeholder = "email"
		
		return textf
	}()
	
	var textf2: UITextField = {
		let textf = UITextField()
		textf.isSecureTextEntry = true
		textf.placeholder = "pass"
		
		return textf
	}()
	
	var textf3: UITextField = {
		let textf = UITextField()
		textf.isSecureTextEntry = true
		textf.placeholder = "repeat pass"
		
		return textf
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.addSubview(textf1)
		view.addSubview(textf2)
		view.addSubview(textf3)
		
		setupLayout()
	}
	
	func setupLayout() {
		textf1.snp.makeConstraints { (make) in
			make.centerX.equalToSuperview()
			make.centerY.equalToSuperview()
		}
		textf2.snp.makeConstraints { (make) in
			make.centerX.equalToSuperview()
			make.top.equalTo(textf1.snp.bottom)
		}
		textf3.snp.makeConstraints { (make) in
			make.centerX.equalToSuperview()
			make.top.equalTo(textf2.snp.bottom)
		}
	}
}

