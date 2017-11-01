//
//	RootClass.swift
//
//	Create by Amitabh Pandey on 31/7/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class jsonClass : NSObject, NSCoding{

	var date : String!
	var millisecondsSinceEpoch : Int!
	var time : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		date = dictionary["date"] as? String
		millisecondsSinceEpoch = dictionary["milliseconds_since_epoch"] as? Int
		time = dictionary["time"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if date != nil{
			dictionary["date"] = date
		}
		if millisecondsSinceEpoch != nil{
			dictionary["milliseconds_since_epoch"] = millisecondsSinceEpoch
		}
		if time != nil{
			dictionary["time"] = time
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         date = aDecoder.decodeObject(forKey: "date") as? String
         millisecondsSinceEpoch = aDecoder.decodeObject(forKey: "milliseconds_since_epoch") as? Int
         time = aDecoder.decodeObject(forKey: "time") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if date != nil{
			aCoder.encode(date, forKey: "date")
		}
		if millisecondsSinceEpoch != nil{
			aCoder.encode(millisecondsSinceEpoch, forKey: "milliseconds_since_epoch")
		}
		if time != nil{
			aCoder.encode(time, forKey: "time")
		}

	}

}
