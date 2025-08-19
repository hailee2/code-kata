-- 코드를 입력하세요
SELECT case when price>=0 and price<9999 then '0'
            when price>=10000 and price<19999 then '10000'
            when price>=20000 and price<29999 then '20000'
            when price>=30000 and price<39999 then '30000'
            when price>=40000 and price<49999 then '40000'
            when price>=50000 and price<59999 then '50000'
            when price>=60000 and price<69999 then '60000'
            when price>=70000 and price<79999 then '70000'
            when price>=80000 and price<89999 then '80000'
            end 'price_group',
       count(*) as products     
from product
group by 1
order by 1