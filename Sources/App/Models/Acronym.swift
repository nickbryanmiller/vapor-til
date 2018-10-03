import Vapor
import FluentSQLite

final class Acronym: Codable {
	var id: Int?
	var short: String
	var long: String
	
	init(short: String, long: String) {
		self.short = short
		self.long = long
	}
}

//extension Acronym: Model {
//	typealias Database = SQLiteDatabase
//	typealias ID = Int
//	public static var idKey: IDKey = \Acronym.id
//}
extension Acronym: SQLiteModel {} // because default is above sets

extension Acronym: Migration {} // database migrations

extension Acronym: Content {} // wrapper around codable which lets you convert models between formats
