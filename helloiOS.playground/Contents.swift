import Cocoa
//Hello World
var str = "Hello, playground"
print(str)

//Simple Math
var myNum = 5
myNum += 5
print(myNum) //10

//String Manipulation
var myStr = "I love you"
print(myStr + " Iron Man")
//Tuple
var myCord = (x: 100, y: 20)
print(myCord.x)
print(myCord.y)

// type convertion
let num = 3000
let endGame = myStr + String(num)
let testNum = "3"
let newNum = Int(testNum) // be careful with this type of convertion

// if else
if (num.isMultiple(of: 30)){ //isMultiple Swift 5.0 feature
    print("multiple of 30")
}
if (num < 10){
    print("I am less than 10")
}
else if (num == 3000){
    print(num)
}
else{
    print("fail")
}

//loops
var curCount = 0
while (curCount < 10){
    print(curCount)
    curCount += 1
}
for i in 0 ... 10{
    print(i)
}



//functions
// functionName(Parameter) -> return type
func addTwo(a: Int, b:Int) -> Int{
    return a + b
}
addTwo(a: 3, b: 3)
// inout allows the modification of data since parameters are const by default
func changeValueofA (a: inout Int){
    a = a * 2
}
var a = 4
changeValueofA(a: &a)
print(a)
//Arrays
var myAry = [1,3,4,5]
print(myAry)
for nums in myAry{
    print(nums * 2)
}
myAry.append(7)
print(myAry)
myAry.remove(at: 0)
myAry.popLast()
print(myAry)

//enumerations like 120b
enum gameState {
    case Start
    case inPlay
    case gameOver
}
var MygameState = gameState.Start
switch MygameState {
case .Start:
    print("starting")
    MygameState = .inPlay
case .inPlay:
    MygameState = .gameOver
case .gameOver:
    MygameState = .Start
}
//Type Alias AKA JS Prototypes
typealias Point = (x: Int, y: Int)
let origin: Point = (5, 10)
print(origin.x)
print(origin.y)
