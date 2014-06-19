//
//  BookTableViewController.swift
//  PublicLibrary
//
//  Created by Leonardo Lee on 6/18/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class BookTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	struct BookTableView {
		struct TableViewIdentifiers {
			static let bookCell = "Cell"
		}
	}
	
	var shelfName: String = "Books"

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
		
		self.title = shelfName
	}
	
	//#pragma mark - TableViewDataSource
	func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
		return 5
	}
	
	func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
		var cell = tableView.dequeueReusableCellWithIdentifier(BookTableView.TableViewIdentifiers.bookCell, forIndexPath: indexPath) as UITableViewCell
		
		return cell
	}
	
	
//	#pragma mark - Editing Features.
	
	
}