//
//  ViewController.swift
//  Typography
//
//  Created by Gökhan on 19.10.2018.
//  Copyright © 2018 Gökhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var contentSizeInfo: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		contentSizeInfo.text = UIApplication.shared.preferredContentSizeCategory.rawValue
		NotificationCenter.default.addObserver(self, selector: #selector(contentSizeDidChanged), name: UIContentSizeCategory.didChangeNotification, object: nil)
	}
	
	@objc func contentSizeDidChanged() {
		contentSizeInfo.text = UIApplication.shared.preferredContentSizeCategory.rawValue
	}
	
}

