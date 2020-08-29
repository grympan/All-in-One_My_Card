select 이름,카드사명
from 회원,보유카드,카드사
where
회원.ID=보유카드.ID and
보유카드.카드사번호=카드사.카드사번호 and
회원.이름 like '박%' and
카드사.카드사명='BC';

