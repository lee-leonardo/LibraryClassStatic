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

class ShelfTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
//	@IBOutlet var shelvesTableView: UITableview

	
	struct ShelfTableView {
		struct TableViewIdentifiers {
			static let shelfCell = "Cell"
		}
	}
	var libraryName = "Shelves"
	
//	var shelves {
//	get {
//		
//	}
//	set {
//		
//	}
//	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.title = libraryName
		
	}
	
	//#pragma mark - TableViewDataSource
	func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
		return 5
	}
	
	func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
		var cell = tableView.dequeueReusableCellWithIdentifier(ShelfTableView.TableViewIdentifiers.shelfCell, forIndexPath: indexPath) as UITableViewCell
		
		return cell
	}
	
	
	
}