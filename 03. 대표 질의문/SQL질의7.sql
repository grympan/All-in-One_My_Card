select TOP 5 금액
from 이용내역,가맹점
where 
이용내역.가맹점번호=가맹점.가맹점번호 and
가맹점.업종='주유소'
order by 금액 ASC;

