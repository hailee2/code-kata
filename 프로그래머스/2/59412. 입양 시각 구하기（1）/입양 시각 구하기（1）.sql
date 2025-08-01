-- 코드를 입력하세요
SELECT case when substr(datetime,12,5) >= '09:00' and substr(datetime,12,5) <'10:00' then 9
            when substr(datetime,12,5) >= '10:00' and substr(datetime,12,5) <'11:00' then 10
            when substr(datetime,12,5) >= '11:00' and substr(datetime,12,5) <'12:00' then 11
            when substr(datetime,12,5) >= '12:00' and substr(datetime,12,5) <'13:00' then 12
            when substr(datetime,12,5) >= '13:00' and substr(datetime,12,5) <'14:00' then 13
            when substr(datetime,12,5) >= '14:00' and substr(datetime,12,5) <'15:00' then 14
            when substr(datetime,12,5) >= '15:00' and substr(datetime,12,5) <'16:00' then 15
            when substr(datetime,12,5) >= '16:00' and substr(datetime,12,5) <'17:00' then 16
            when substr(datetime,12,5) >= '17:00' and substr(datetime,12,5) <'18:00' then 17
            when substr(datetime,12,5) >= '18:00' and substr(datetime,12,5) <'19:00' then 18
            when substr(datetime,12,5) >= '19:00' and substr(datetime,12,5) <'20:00' then 19
            end as 'hour',
            count(*) as count
from animal_outs
WHERE substr(datetime, 12, 5) >= '09:00' AND substr(datetime, 12, 5) <= '19:59'
group by hour
order by hour