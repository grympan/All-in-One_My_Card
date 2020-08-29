select COUNT(*)
from 신용,카드종류
where 
신용.카드식별코드=카드종류.카드식별코드 and
카드종류.교통카드지원여부='선불'