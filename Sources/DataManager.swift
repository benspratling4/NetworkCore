import Foundation
import SwiftPatterns
protocol DataManager {
	func value<K:DataKey>(for key:K)throws->K.Value?
}
protocol DataFetcher {
	func data(request:String)->Data?
}
class ConcreteDataManager : DataManager {
	var fetcher:DataFetcher
	init(fetcher:DataFetcher) {
		self.fetcher = fetcher
	}
	func value<K:DataKey>(for key:K)throws->K.Value? {
		guard let data = fetcher.data(request:key.request)
			else { return nil }
		return try key.value(with:data)
	}
}
