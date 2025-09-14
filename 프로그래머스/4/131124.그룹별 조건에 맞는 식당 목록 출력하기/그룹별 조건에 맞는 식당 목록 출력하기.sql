-- 코드를 입력하세요
select m.member_name, r.review_text,substr(r.review_date,1,10) as review_date
from rest_review r
join
    (select member_id
    from
        (select member_id, rank() over(order by count(*) desc) as rk
        from rest_review
        group by member_id) ranked
    where rk = 1) top_members_id
on r.member_id=top_members_id.member_id
join member_profile m 
on m.member_id = r.member_id
order by review_date, review_text
