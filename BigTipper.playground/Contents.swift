/*:
**Exercise:**
Your a big tipper! When ever you go out to eat you tip 20% of the bill and never tip less than $3. Create a playground that prints the tip amount and the total amount. Within the playground, you should be able to change the bill to see how the tip amount varies.
>> **Example Output:**
* `What is the bill? $x.xx`
* `What is the tip percentage? x`
* `The tip is $x.xx`
* `The total is $x.xx`
*/

import UIKit


//  Set initial values
let bill = 17.75
let tipPercentage = 20
let minTip = 3.0


//  Calculate tip
var tip = bill * (Double(tipPercentage)/100)
if (tip < minTip) {
    tip = minTip
}
let total = bill+tip


//  Set vars used in string manipulation
var dollarsStr: String?
var centsStr: String?
var cents: Int?
var valueToConvert = 0.0



//  Build the value strings to output
//  build bill string
valueToConvert = bill
dollarsStr = String(Int(valueToConvert))
cents = (Int(valueToConvert*100)-(Int(valueToConvert)*100))
if (cents > 9)
    { centsStr = String(Int(valueToConvert*100)-(Int(valueToConvert)*100)) }
else
    { centsStr = String(Int(valueToConvert*100)-(Int(valueToConvert)*100)) + "0"}
let billString = dollarsStr! + "." + centsStr!


//  build tip string
valueToConvert = tip
dollarsStr = String(Int(valueToConvert))
cents = (Int(valueToConvert*100)-(Int(valueToConvert)*100))
if (cents > 9)
    { centsStr = String(Int(valueToConvert*100)-(Int(valueToConvert)*100)) }
else
    { centsStr = String(Int(valueToConvert*100)-(Int(valueToConvert)*100)) + "0" }
let tipString = dollarsStr! + "." + centsStr!


//  build total string
valueToConvert = total
dollarsStr = String(Int(valueToConvert))
cents = (Int(valueToConvert*100)-(Int(valueToConvert)*100))
if (cents > 9)
    { centsStr = String(Int(valueToConvert*100)-(Int(valueToConvert)*100)) }
else
    { centsStr = String(Int(valueToConvert*100)-(Int(valueToConvert)*100)) + "0" }
let totalString = dollarsStr! + "." + centsStr!


//   Print results
print ("What is the bill? $" + billString)
print ("What is the tip percentage? " + String(Int(tipPercentage)) + "%")
print ("The tip is $" + tipString)
print ("The total is $" + totalString)


