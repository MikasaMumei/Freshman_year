program Personal_Income_Tax  !个人所得税
implicit none
    real::income(10)=0. , tax(10)=0.
	read*, income

	where (income < 30000.)
	    tax = income*0.1
	elsewhere (income >= 30000 .and. income < 50000.)
	    tax = income*0.12
    elsewhere (income >= 50000.)
	    tax = income*0.15
	end where

	write(*,"(10F8.1)") tax

end