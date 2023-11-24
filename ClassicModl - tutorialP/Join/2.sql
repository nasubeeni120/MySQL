SELECT 
    m.member_id,
    m.name AS 'member',
    c.committee_id,
    c.name AS 'committee'
FROM
    members m
        LEFT JOIN
    committees c USING (name)
    WHERE c.committee_id IS NULL;