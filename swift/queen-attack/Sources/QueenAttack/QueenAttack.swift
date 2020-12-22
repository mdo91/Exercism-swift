//Solution goes in Sources
struct Queens {
    var white:[Int]?
    var black:[Int]?
    
    var description:String{
        var chessBoard = ""
        if let white = white, let black = black{
    
            for x in 0..<8{
                for y in 0..<8{
                    if [x,y] == black{
                        chessBoard.append("B ")
                    }else if [x,y] == white{
                        chessBoard.append("W ")
                    }else if y == 7{
                        chessBoard.append("_\n")
                    }else{
                        chessBoard.append("_ ")
                    }
                }
            }
        }
        return "\(chessBoard.dropLast())"
    }
    var canAttack:Bool = false
    
    init(white:[Int]?=nil,black:[Int]?=nil) throws {
        
        if let white = white, let black = black{
            guard white.count == 2 && black.count == 2 else {
                throw InitError.incorrectNumberOfCoordinates
            }
            let whiteCoordinates = (white[0],white[1])
            let blackCoordinates = (black[0],black[1])
            let combinedCoordinations = (whiteCoordinates,blackCoordinates)
            try checkStatus(coordinations: combinedCoordinations)
            
            self.white = white
            self.black = black
            
        }else{
            self.black = [7,3]
            self.white = [0,3]
        }
    }
    
    enum InitError:Error {
        case incorrectNumberOfCoordinates
        case invalidCoordinates
        case sameSpace
    }
    
    mutating func checkStatus(coordinations:((Int,Int),(Int,Int))) throws{
        
        switch coordinations {
        case let ((wX,wY),(bX,bY)) where wX.signum() == -1 || wY.signum() == -1 || bX.signum() == -1 || bY.signum() == -1: throw InitError.invalidCoordinates
        case let ((wX,wY),(bX,bY)) where wX == bX && wY == bY: throw InitError.sameSpace
        case let ((wX,wY),(bX,bY)) where wX == bX || wY == bY || abs(wX - bX) == abs(wY - bY): canAttack = true
        default:
            break
        }
    }
}
