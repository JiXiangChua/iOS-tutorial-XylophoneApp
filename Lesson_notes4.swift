//
//  Lesson_notes4.swift
//  Xylophone
//
//  Created by JI XIANG on 4/7/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

/* Steps to solve programming questions about your project.
 1. Google
    How to search?: <What I want my app to do> + <Which programming language? + <Which Resource>
    Example: Play sound swift Stackoverflow
 
 2. Stackoverflow
 
 3. Implementing the code from step 2
 4. Look up the docs on the code from step 2
 5. Customise the code for your needs
 
 Note: hold Option and hover to the purple keywords (Apple API stuffs), then you can see a brief description of what that particular keyword can do.
 
 */

/* Swift Function and Scope
 Creating the function:
 func getMilk() {
    //do stuff
 }
 
 Calling the function:
 getMilk()

 
 */

/* Functions with inputs and type interface
 Create a function with input:
 func myFunction(parameter: DataType) { //datatype is like your String, Float, Int ...
    //code goes here
 }
 
 Type inference is availble in swift. What it does is:
 var Anegla = 7812366 instead of saying var Anegla: Int
 Type inference means that it's able to infer the DataType based on the data that you've put into the variable.
 
 For swift, inputs passing into function works differently. You have to mention the parameter name as you are passing into the function.
 
 Creating the function:
 func getMilk(bottles: Int) { //bottles is the name of the variable, and Int is the data type
 var cost = bottles * 1.5
 }
 
 Calling the function:
 getMilk(bottles: 2) //bottles is the parameter name and 2 is the value of that parameter that is passing into it.
 
 **********************************
 Example:
 func greeting2(whoToGreet: String){
     print("Hello \(whoToGreet)")
 }

 greeting2(whoToGreet: "Angela")
 **********************************
 
 */

/* Example of working with input function and converting from Int to Double datatype
 //Don't change this code:
 func calculator() {
   let a = Int(readLine()!)! //First input
   let b = Int(readLine()!)! //Second input
   
   add(n1: a, n2: b)
   subtract(n1: a, n2: b)
   multiply(n1: a, n2: b)
   divide(n1: a, n2: b)
   
 }

 //Write your code below this line to make the above function calls work.
 func add(n1: Int, n2: Int){
     print( n1+n2)
 }
 func subtract(n1: Int, n2: Int){
     print(n1-n2)
 }
 func multiply(n1: Int, n2: Int){
     print(n1*n2)
 }
 func divide(n1: Int, n2: Int){
     let d1 = Double(n1)
     let d2 = Double(n2)
     print(d1/d2)
 }
 */
