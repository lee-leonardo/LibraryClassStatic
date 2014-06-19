	//
//  Library.swift
//  PublicLibrary
//
//  Created by Leonardo Lee on 6/17/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import Foundation

	class Library {
		var shelves = Shelf[]()
		var name: String
		
//		Change this to report all books in the shelves.
		func reportBooks() {
			var booklist = "List of Books on Shelf: "
			
//			Don't like doing this... but iterating a list within a list...
			for shelf in shelves {
				for book in shelf.books {
					booklist += book.name + ", "
				}
			}
			println(booklist)
		}
		
		init(libraryName: String) {
			name = libraryName
		}
	
	}
	

	
