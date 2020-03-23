//
//  MovieDataBase.swift
//  
//
//  Created by james luo on 8/4/19.
//

import Foundation
import Firebase
import FirebaseDatabase
class movie{
    var MovieName: String
    var Rating: Int
    init(MovieName:String, Rating:Int) {
        self.MovieName = MovieName
        self.Rating = Rating
    }
//    func toDataBase() -> [String: Any]{
//        let returnValue = [
//            "MovieName" : self.MovieName,
//            "Rating": self.Rating
//            ] as [String : Any]
//        return returnValue
//    }
}
func build() {
    let StarWars = movie(MovieName: "Star Wars", Rating: 8)
    let Jaws = movie(MovieName: "Jaws", Rating: 9)
    let FightNight = movie(MovieName: "FightNight", Rating: 1)
    let movieAry = [StarWars,Jaws,FightNight]
    
    let ref = Database.database().reference().child("Movie")
    for movie in movieAry{
        ref.child(movie.MovieName).setValue(movie.Rating)
    }
   // pullData()
    
}
func printDone(){
    print("Done")
}
//func pullData (){
//    let Pull = DispatchGroup()
//    //Pull.enter()
//    let ref = Database.database().reference()
//    let Movieref = ref.child("Movie")
//    Movieref.observe(.value, with: {(snapshop) in
//        print(snapshop)
//    })
//}
