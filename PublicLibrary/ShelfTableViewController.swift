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

class ShelfTableViewController: UIViewController, UITableViewDataSource, BookTableViewControllerDelegate {
	
	@IBOutlet var shelfTableView: UITableView
	var shelves = Shelf[]()
	var delegate: ShelfTableViewControllerDelegate?
	var libraryName = "Shelves"
	
	struct ShelfTableView {
		struct TableViewIdentifiers {
			static let shelfCell = "Cell"
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()		
		self.title = libraryName
		
	}
	
	//#pragma mark - TableViewDataSource
	func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
		return shelves.count
	}
	
	func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
		var cell = tableView.dequeueReusableCellWithIdentifier(ShelfTableView.TableViewIdentifiers.shelfCell, forIndexPath: indexPath) as UITableViewCell
		let item = shelves[indexPath.row]
		cell.textLabel.text = item.name as NSString

		
		return cell
	}
	
	//#pragma mark - Segue
	override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
		if ( segue.identifier == "ToBooksSegue" ) {
			let book = segue.destinationViewController as BookTableViewController
			var indexPath = self.shelfTableView.indexPathForSelectedRow()
			var item = shelves[indexPath.row]
			
			book.shelfName = item.name
			book.books = item.books
			book.delegate = self
		}
	}
	
}