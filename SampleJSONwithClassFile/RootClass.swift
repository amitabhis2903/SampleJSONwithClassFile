//
//	RootClass.swift
//
//	Create by Amitabh Pandey on 1/8/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class RootClass : NSObject, NSCoding{

	var actors : [Actor]!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		actors = [Actor]()
		let actorsArray = json["actors"].arrayValue
		for actorsJson in actorsArray{
			let value = Actor(fromJson: actorsJson)
			actors.append(value)
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if actors != nil{
			var dictionaryElements = [[String:Any]]()
			for actorsElement in actors {
				dictionaryElements.append(actorsElement.toDictionary())
			}
			dictionary["actors"] = dictionaryElements
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         actors = aDecoder.decodeObject(forKey: "actors") as? [Actor]

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if actors != nil{
			aCoder.encode(actors, forKey: "actors")
		}

	}

}
