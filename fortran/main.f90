function count_to_billion() result(i)
    implicit none
    integer :: i
    i = 0
    do while (i < 1000000000)
        i = i + 1
    end do
end function count_to_billion

program main

    implicit none

    integer :: count
    real :: start, finish
    integer :: count_to_billion

    call cpu_time(start)

    count = count_to_billion()

    call cpu_time(finish)

    print '("Looping ", i10, " times in fortran took ", f8.6, " seconds.")', count, finish-start

end program main
