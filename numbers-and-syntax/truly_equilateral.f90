program print_triangles
implicit none
	real :: n
	real :: count
	real :: star_counter
	real :: space_counter
	real :: count_down
	real :: star_c
	print *,'Enter the number of rows: '
	read *, n
	count = 0.0
	star_counter = 1.0
	star_c = 1.0
	space_counter = n
	count_down = n
	write(*, "('')")
	print *,'Here is your triangle!'
	write(*, "('')")
	do while (count < n)
		do while (space_counter >= 0.0)
			write(*, "(' ')", advance='no')
			space_counter = space_counter - 1.0
		enddo
		count_down = count_down - 1.0
		space_counter = count_down
		do while (star_counter <= star_c)
			write(*, "('*')", advance='no')
			star_counter = star_counter + 1.0
		enddo
		star_c = star_c + 2.0
		star_counter = 1.0
		count = count + 1.0
		write(*, "('')")
	enddo
end program print_triangles