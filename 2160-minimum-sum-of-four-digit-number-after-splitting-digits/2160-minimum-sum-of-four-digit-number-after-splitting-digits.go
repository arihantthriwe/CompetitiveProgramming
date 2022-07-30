func minimumSum(num int) int {
    x := new([]int)
    //*x = append(*x, num%10) 
    for ; num > 0; num /= 10 {
        *x = append(*x, num%10)
        }
    //fmt.Println("array: %v", x)
    sort.Ints(*x)
    //fmt.Println("sorted array: %v", x)
    return ((*x)[0]*10 + (*x)[2] + (*x)[1]*10 + (*x)[3])
}