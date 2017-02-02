import PackageDescription

let package = Package(
	name:"NetworkCore"
	,dependencies:[
	.Package(url:"https://github.com/benspratling4/SwiftPatterns.git", majorVersion:1, minor:1)
	]
)
