//
//  ViewController.swift
//  PublicLibrary
//
//  Created by Leonardo Lee on 6/16/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	@IBOutlet var libraryTableView: UITableView
	var libraries = Library[]()
	
	var books = Book[]()
	
	struct MainStoryboard {
		struct TableViewIdentifiers {
			static let libraryCell = "Cell"
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.title = "Libraries"

//Test related stuff
		assembleSampleLibrary()
		testSampleLibrary()
		
	}
	
	func assembleSampleLibrary () {
		//		Creating a Sample Library
		libraries.append(Library(libraryName: "Seattle Public"))
		libraries[0].shelves.append(Shelf(shelfName: "Fiction"))
		libraries[0].shelves[0].books.append(Book(bookName: "Brave New World"))
		
		libraries[0].shelves.append(Shelf(shelfName: "Fantasy"))
		libraries[0].shelves[1].books.append(Book(bookName: "Lord of the Rings"))
		
		libraries.append(Library(libraryName: "Odegaard Library"))
		libraries[1].shelves.append(Shelf(shelfName: "History"))
		libraries[1].shelves[0].books.append(Book(bookName: ""))
		
		libraries[1].shelves.append(Shelf(shelfName: "Mythology"))
		libraries[1].shelves[1].books.append(Book(bookName: "Odyssey"))
		
		////		Books to test basic functionality.
		//		books.append(Book(bookName: "Lord of the Rings"))
		//		books.append(Book(bookName: "Lord of the Flies"))
		//		books.append(Book(bookName: "The Hobbit"))
		//		books.append(Book(bookName: "Paradise Lost"))
		
	}
	func testSampleLibrary () {
		//		Test to see if the new structure is setting up right.
		for library in libraries {
			var libraryRecord = "This is what's in \(library.name):\n"
			libraryRecord += "Shelves: "
			for shelf in library.shelves {
				libraryRecord += "\(shelf.name): "
				for book in shelf.books {
					libraryRecord += "\(book.name)"
				}
				libraryRecord += "\n"
			}
			libraryRecord += "\n"
			println(libraryRecord)
		}
		
		//		for book in books {
		//			println(book.name)
		//
		//		}
	}
	
	//#pragma mark - TableViewDataSource
	func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
		//		Change this when you get the code working.
		let cell = tableView.dequeueReusableCellWithIdentifier(MainStoryboard.TableViewIdentifiers.libraryCell, forIndexPath: indexPath) as UITableViewCell
		let item = libraries[indexPath.row]
		
		cell.textLabel.text = "\(indexPath.row + 1)" as NSString
		cell.detailTextLabel.text = item.name as NSString
		
		return cell
	}
	
	func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
		return libraries.count
	}
	
	
//	#pragma mark - Segues
//	override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)  {
//		var shelf = segue.destinationViewController as ShelfTableViewController
//		shelf.libraryName = books[indexPath.row].name
//	}
}

