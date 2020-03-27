program print_triangles
implicit none
	real :: n
	real :: count
	real :: star_counter
	print *,'Enter the number of rows: '
	read *, n
	count = 0.0
	star_counter = 1.0
	write(*, "('')")
	print *,'Here is your triangle!'
	write(*, "('')")
	do while (count < n)
		do while (star_counter <= count + 1.0)
			write(*, "('*')", advance='no')
			star_counter = star_counter + 1.0
		enddo
		star_counter = 1.0
		count = count + 1.0
		write(*, "('')")
	enddo
end program print_triangles