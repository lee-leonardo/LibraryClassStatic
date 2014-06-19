//
//  BookTableViewController.swift
//  PublicLibrary
//
//  Created by Leonardo Lee on 6/18/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class BookTableViewController: UITableViewController {
	
//	Put shelfName and books arrays into getters and setters. Then add code to allow them to
	var shelfName: String = "Shelf Name"

//	var books {
//	get {
//		
//	}
//	set {
//		
//	}
//	willSet {
//	}
//	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
//		This'll pull out the book and the stuff related to it.
		self.title = shelfName
	}
	
}