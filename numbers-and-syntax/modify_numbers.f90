program addNumbers

! This program adds two numbers
	implicit none

! Type declarations
	real :: a, b, result

! Executable statements
	a = 123.0
	b = 153.0
	result = a + b
	print *, 'A + B is ', result
	result = a - b
	print *, 'A - B is ', result
	result = a * b
	print *, 'A * B is ', result
	result = a / b
	print *, 'A / B is ', result

end program addNumbers