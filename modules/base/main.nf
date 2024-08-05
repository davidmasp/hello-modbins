
process sayHello2 {
  input: 
    val x
  output:
    path("test.txt")
  script:
    """
    echo.sh
    """
}
