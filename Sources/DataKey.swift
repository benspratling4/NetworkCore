import Foundation

protocol DataKey : Hashable {
	associatedtype Value
	var request:String {get }
	func value(with data:Data)throws->Value
}
