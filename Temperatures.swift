import Glibc

public struct StderrOutputStream: OutputStreamType {
    public mutating func write(string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/

let n = Int(readLine()!)! // the number of temperatures to analyse
let temps = readLine()! // the n temperatures expressed as integers ranging from -273 to 5526


var min = 5526 

if n == 0 {
    min = 0    
}

  
var myStringArr = temps.characters.split{$0 == " "}.map(String.init)

for item in myStringArr {
    
    if abs(Int(item)!) <= abs(min) {
        
        if abs(Int(item)!) != abs(min) || Int(item)! == min{    
            min = Int(item)!
        
        }else{
            min = abs(Int(item)!)
        }
    }
    
}


// To debug: debugPrint("Debug messages...", toStream: &errStream)

print(min)
