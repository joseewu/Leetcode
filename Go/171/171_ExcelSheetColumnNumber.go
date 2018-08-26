/*
Given a column title as appear in an Excel sheet, return its corresponding
column number.
*/

package main
import ("fmt")

func main()  {
  result := titleToNumber("AB")
  fmt.Println(result)
}
func titleToNumber(s string) int {
    // fmt.Println(string(s[0])) just print the character
    fmt.Println(s[0]) //print unicode of the character
    return 0
}
