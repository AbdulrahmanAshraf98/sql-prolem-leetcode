/* Write your T-SQL query statement below */
select score , rank 
from (
    select score , dense_rank() over(order by score desc) as rank
    from Scores
)as score_ranking