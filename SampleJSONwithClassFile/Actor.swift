//
//	Actor.swift
//
//	Create by Amitabh Pandey on 1/8/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class Actor : NSObject, NSCoding{

	var children : String!
	var country : String!
	var descriptionField : String!
	var dob : String!
	var height : String!
	var image : String!
	var name : String!
	var spouse : String!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		children = json["children"].stringValue
		country = json["country"].stringValue
		descriptionField = json["description"].stringValue
		dob = json["dob"].stringValue
		height = json["height"].stringValue
		image = json["image"].stringValue
		name = json["name"].stringValue
		spouse = json["spouse"].stringValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if children != nil{
			dictionary["children"] = children
		}
		if country != nil{
			dictionary["country"] = country
		}
		if descriptionField != nil{
			dictionary["description"] = descriptionField
		}
		if dob != nil{
			dictionary["dob"] = dob
		}
		if height != nil{
			dictionary["height"] = height
		}
		if image != nil{
			dictionary["image"] = image
		}
		if name != nil{
			dictionary["name"] = name
		}
		if spouse != nil{
			dictionary["spouse"] = spouse
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         children = aDecoder.decodeObject(forKey: "children") as? String
         country = aDecoder.decodeObject(forKey: "country") as? String
         descriptionField = aDecoder.decodeObject(forKey: "description") as? String
         dob = aDecoder.decodeObject(forKey: "dob") as? String
         height = aDecoder.decodeObject(forKey: "height") as? String
         image = aDecoder.decodeObject(forKey: "image") as? String
         name = aDecoder.decodeObject(forKey: "name") as? String
         spouse = aDecoder.decodeObject(forKey: "spouse") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if children != nil{
			aCoder.encode(children, forKey: "children")
		}
		if country != nil{
			aCoder.encode(country, forKey: "country")
		}
		if descriptionField != nil{
			aCoder.encode(descriptionField, forKey: "description")
		}
		if dob != nil{
			aCoder.encode(dob, forKey: "dob")
		}
		if height != nil{
			aCoder.encode(height, forKey: "height")
		}
		if image != nil{
			aCoder.encode(image, forKey: "image")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if spouse != nil{
			aCoder.encode(spouse, forKey: "spouse")
		}

	}

}
