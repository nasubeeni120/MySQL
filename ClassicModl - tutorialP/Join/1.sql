SELECT 
    m.member_id,
    m.name AS 'Member',
    c.committee_id,
    c.name AS 'Committee'
FROM
    members m
        INNER JOIN
   -- committees c ON c.name = m.name;
    committees c USING(name);