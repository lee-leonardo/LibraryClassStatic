//
//  ShelfTableViewController.swift
//  PublicLibrary
//
//  Created by Leonardo Lee on 6/18/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

protocol ShelfTableViewControllerDelegate {
	
}

class ShelfTableViewController: UITableViewController {
//, UITableViewDataSource, UITableViewDelegate {
	var libraryName = "This is the name"
//	@IBOutlet var shelvesTableView: UITableview
	
//	var shelves {
//	get {
//		
//	}
//	set {
//		
//	}
//	}
	
//UITableViewController, UITableViewDataSource, UITableViewDelegate {

//	init(style: UITableViewStyle) {
//		super.init(style: UITableViewStyle.Plain)
//	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.title = libraryName
		
		
	}
	
	
}