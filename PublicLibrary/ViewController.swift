//
//  ViewController.swift
//  PublicLibrary
//
//  Created by Leonardo Lee on 6/16/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, ShelfTableViewControllerDelegate {

	@IBOutlet var libraryTableView: UITableView
	var libraries = Library[]()
	var librariesName = "Libraries"
		
	struct MainStoryboard {
		struct TableViewIdentifiers {
			static let libraryCell = "Cell"
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.title = librariesName
		
		//Test related stuff
		assembleSampleLibrary()
//		testSampleLibrary()
		
	}
	
	func assembleSampleLibrary () {
		//Sample Library 1
		libraries.append(Library(libraryName: "Seattle Public"))
		libraries[0].shelves.append(Shelf(shelfName: "Fiction"))
		libraries[0].shelves[0].books.append(Book(bookName: "Brave New World"))
		libraries[0].shelves[0].books.append(Book(bookName: "Pride and Prejudice"))
		
		libraries[0].shelves.append(Shelf(shelfName: "Fantasy"))
		libraries[0].shelves[1].books.append(Book(bookName: "Lord of the Rings"))
		libraries[0].shelves[1].books.append(Book(bookName: "The Hobbit"))
		
		//Sample Library 2
		libraries.append(Library(libraryName: "Odegaard"))
		libraries[1].shelves.append(Shelf(shelfName: "History"))
		libraries[1].shelves[0].books.append(Book(bookName: "Enemies of Rome: From Hannibal to Attila the Hun"))
		libraries[1].shelves[0].books.append(Book(bookName: "The Story of Britain: From Romans to the Present: A Narrative History"))

		libraries[1].shelves.append(Shelf(shelfName: "Mythology"))
		libraries[1].shelves[1].books.append(Book(bookName: "Odyssey"))
		libraries[1].shelves[1].books.append(Book(bookName: "Illiad"))
		
	}
	func testSampleLibrary () {
		//		Test to see if the new structure is setting up right.
		for library in libraries {
			var libraryRecord = "This is what's in \(library.name):\n"
			libraryRecord += "Shelves: "
			for shelf in library.shelves {
				libraryRecord += "\(shelf.name): "
				for book in shelf.books {
					libraryRecord += "\(book.name), "
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
		let cell = tableView.dequeueReusableCellWithIdentifier(MainStoryboard.TableViewIdentifiers.libraryCell, forIndexPath: indexPath) as UITableViewCell
		
		let item = libraries[indexPath.row]
		cell.textLabel.text = item.name as NSString
		
		return cell
	}
	func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
		return libraries.count
	}
	
	//#pragma mark - Segues
	override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)  {		
		if (segue.identifier == "ToShelfSegue") {
			let shelf = segue.destinationViewController as ShelfTableViewController
			var indexPath = self.libraryTableView.indexPathForSelectedRow()
			var item = libraries[indexPath.row]
			
			shelf.libraryName = item.name
			shelf.shelves = item.shelves
			shelf.delegate = self

		}
	}
}

