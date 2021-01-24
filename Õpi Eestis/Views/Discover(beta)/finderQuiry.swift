//
//  finderQuiry.swift
//  Estonian Universities
//
//  Created by Rasmus Tauts on 07.12.2019.
//  Copyright © 2019 Rasmus Tauts. All rights reserved.
//
/*
import Foundation
import Combine

final class FinderQuery: ObservableObject {
    let didChange = PassthroughSubject<FinderQuery, Never>()
   
    @Published var location: String?
    @Published var level: level?
    @Published var type: String?
    @Published var students: String?
    @Published var worldRanking: String?
    
    func didSet(){
        didChange.send(self)
    }
    
    func matchingSchools() -> [School] {
          var results = schools
        
        if let location = location {
            if location == " " {
                
            } else {
            results = results.filter{ (school) -> Bool in
                return school.location.city == location
                }
            }
        }
        if let level = level {
            
                results = results.filter { (school) -> Bool in
                    return school.education.contains(where: {$0.level == level})
            }
        }
        
        if let type = type {
                   if type == " " {
                   } else {
                       results = results.filter { (school) -> Bool in
                           return school.education.contains(where: {$0.type == type})}
                   }
               }
        
        if let students = students {
            if students == " " {
                
            } else if students == "100 - 1,000" {
                results = results.filter { (school) -> Bool in
                    return school.students >= 100 && school.students <= 1000
                }
            } else if students == "1,000 - 5,000" {
                results = results.filter { (school) -> Bool in
                    return school.students >= 1000 && school.students <= 5000
                }
            } else if students == "5,000 - 10,000" {
                results = results.filter { (school) -> Bool in
                    return school.students >= 5000 && school.students <= 10000
                }
            } else if students == "more than 10,000" {
                results = results.filter { (school) -> Bool in
                    return school.students >= 10000
                }
            }
        }
        
        if let worldrank = worldRanking {
            if worldrank == " " {
                
            }
            else if worldrank == "Top 500"  {
                results = results.filter { (school) -> Bool in
                    return school.worldRanking <= 500 && school.worldRanking != 0 }
            }
            else if worldrank == "Between 500 and 1000"  {
                results = results.filter { (school) -> Bool in
                    return school.worldRanking <= 1000 && school.worldRanking >= 500}
            }
            else if worldrank == ">1000" {
                results = results.filter { (school) -> Bool in
                    return school.worldRanking >= 1000 && school.worldRanking == 0}
            }
        }
        return results
    }
/*
    func matchingSchools(_ schools: [School]) -> [School] {
          var results = schools
        

        
        if let location = location {
            if location == " " {
                
            } else {
            results = results.filter{ (school) -> Bool in
                return school.location.city == location
                }
            }
        }
        if let level = level {
            if level == " " {
            } else {
                results = results.filter { (school) -> Bool in
                    return school.education.contains(where: {$0.level == level})}
            }
        }
        
        if let type = type {
                   if type == " " {
                   } else {
                       results = results.filter { (school) -> Bool in
                           return school.education.contains(where: {$0.type == type})}
                   }
               }
        
        
        if let students = students {
            if students == " " {
                
            } else if students == "100 - 1,000" {
                results = results.filter { (school) -> Bool in
                    return school.students >= 100 && school.students <= 1000
                }
            } else if students == "1,000 - 5,000" {
                results = results.filter { (school) -> Bool in
                    return school.students >= 1000 && school.students <= 5000
                }
            } else if students == "5,000 - 10,000" {
                results = results.filter { (school) -> Bool in
                    return school.students >= 5000 && school.students <= 10000
                }
            } else if students == "more than 10,000" {
                results = results.filter { (school) -> Bool in
                    return school.students >= 10000
                }
            }
        }
        
        if let worldrank = worldRanking {
            if worldrank == ">1000" {
                results = results.filter { (school) -> Bool in
                    return school.worldRanking >= 1000}
            } else if worldrank == "Between 500 and 1000"  {
                results = results.filter { (school) -> Bool in
                    return school.worldRanking <= 1000 && school.worldRanking >= 500}
            }
              else if worldrank == "Top 500"  {
                results = results.filter { (school) -> Bool in
                    return school.worldRanking <= 500 }
            }
        }
        print(results)
        return results
    }
 */
}
/*
Location - city DONE
Location - coordinates(Radius)*
Students
International Students*
World Ranking
Major - name
Major - Level
Major - Type
*/
*/
