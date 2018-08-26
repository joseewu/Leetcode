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
    runes := []rune(s)
    AValue := []rune("A")[0]
    result := 0
    for _, runCharacter := range runes {
      differece := runCharacter - AValue + 1
      result = (result * 26) + int(differece)
    }
    return result
}
