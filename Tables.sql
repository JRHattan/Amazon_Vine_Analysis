SELECT review_id, star_rating, helpful_votes, total_votes, vine, verified_purchase into vine_table_filter
FROM vine_table
WHERE total_votes > 20;

SELECT review_id, star_rating, helpful_votes, total_votes, vine, verified_purchase into vine_table_filter_2
FROM vine_table_filter
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;

SELECT review_id, star_rating, helpful_votes, total_votes, vine, verified_purchase into vine_table_filter_vine
FROM vine_table_filter_2
WHERE vine LIKE '%Y%';;

SELECT review_id, star_rating, helpful_votes, total_votes, vine, verified_purchase into vine_table_filter_no_vine
FROM vine_table_filter_2
WHERE vine LIKE '%N%';
