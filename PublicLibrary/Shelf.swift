//
//  Shelf.swift
//  PublicLibrary
//
//  Created by Leonardo Lee on 6/17/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import Foundation

class Shelf {
	var books = Book[]()
	var name: String
	
	init (shelfName: String){
		name = shelfName
	}
}