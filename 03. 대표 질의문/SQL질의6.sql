select count(*),AVG(금액)
from 카드사,이용내역,가맹점
where
카드사.카드사번호=이용내역.카드사번호 and
이용내역.가맹점번호=가맹점.가맹점번호 and
가맹점.업종='통신사'
group by 카드사.카드사번호;
