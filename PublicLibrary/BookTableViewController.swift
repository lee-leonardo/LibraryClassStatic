//
//  BookTableViewController.swift
//  PublicLibrary
//
//  Created by Leonardo Lee on 6/18/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

protocol BookTableViewControllerDelegate {

}

class BookTableViewController: UIViewController, UITableViewDataSource {
	
	@IBOutlet var booksTableView: UITableView
	var books = Book[]()
	var delegate: BookTableViewControllerDelegate?
	var shelfName: String = "Books"

	struct BookTableView {
		struct TableViewIdentifiers {
			static let bookCell = "Cell"
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()		
		self.title = shelfName
	}
	
	//#pragma mark - TableViewDataSource
	func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
		return books.count
	}
	
	func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
		var cell = tableView.dequeueReusableCellWithIdentifier(BookTableView.TableViewIdentifiers.bookCell, forIndexPath: indexPath) as UITableViewCell
		let item = books[indexPath.row]
		cell.textLabel.text = item.name as NSString

		return cell
	}
	
	//#pragma mark - Editing Features???
}