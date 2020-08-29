select 이름,잔액
from 회원,선불
where
회원.ID=선불.ID and
선불.잔액>=1000000
order by 잔액 ASC;