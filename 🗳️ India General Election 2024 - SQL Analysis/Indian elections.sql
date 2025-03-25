---- 1 . Total Seats

select DISTINCT COUNT(PARLIAMENT_CONSTITUENCY) AS Total_Seats
from constituencywise_results;

--- 2. What is the total number of seats available for elections in each state

SELECT 
    s.STATE AS State_name, 
    COUNT(DISTINCT cr.PARLIAMENT_CONSTITUENCY) AS Total_Seats
FROM constituencywise_results cr
INNER JOIN statewise_results sr 
    ON cr.PARLIAMENT_CONSTITUENCY = sr.PARLIAMENT_CONSTITUENCY
INNER JOIN states s 
    ON sr.state_id = s.state_id
GROUP BY s.STATE
ORDER BY STATE_NAME;



---- 3.	Total Seats Won by NDA Allianz ?

Select
Sum( CASE
	WHEN PARTY IN('Bharatiya Janata Party - BJP', 
                'Telugu Desam - TDP', 
				'Janata Dal  (United) - JD(U)',
                'Shiv Sena - SHS', 
                'AJSU Party - AJSUP', 
                'Apna Dal (Soneylal) - ADAL', 
                'Asom Gana Parishad - AGP',
                'Hindustani Awam Morcha (Secular) - HAMS', 
                'Janasena Party - JnP', 
				'Janata Dal  (Secular) - JD(S)',
                'Lok Janshakti Party(Ram Vilas) - LJPRV', 
                'Nationalist Congress Party - NCP',
                'Rashtriya Lok Dal - RLD', 
                'Sikkim Krantikari Morcha - SKM'
    ) THEN "WON"
    ELSE 0
    END) AS NDA_TOTAL_SEATS_WON
FROM 
partywise_results;



------ 4.	Seats Won by NDA Allianz Parties---------



select 
 PARTY AS Party_Name,
 WON as Seats_Won
 from partywise_results
 where PARTY IN(
        'Bharatiya Janata Party - BJP', 
        'Telugu Desam - TDP', 
		'Janata Dal  (United) - JD(U)',
        'Shiv Sena - SHS', 
        'AJSU Party - AJSUP', 
        'Apna Dal (Soneylal) - ADAL', 
        'Asom Gana Parishad - AGP',
        'Hindustani Awam Morcha (Secular) - HAMS', 
        'Janasena Party - JnP', 
		'Janata Dal  (Secular) - JD(S)',
        'Lok Janshakti Party(Ram Vilas) - LJPRV', 
        'Nationalist Congress Party - NCP',
        'Rashtriya Lok Dal - RLD', 
        'Sikkim Krantikari Morcha - SKM')
    order by seats_won DESC;

------ 5.	Total Seats Won by I.N.D.I.A. Allianz? --------------

SELECT 
	SUM(CASE
		WHEN PARTY IN( 'Indian National Congress - INC',
                'Aam Aadmi Party - AAAP',
                'All India Trinamool Congress - AITC',
                'Bharat Adivasi Party - BHRTADVSIP',
                'Communist Party of India  (Marxist) - CPI(M)',
                'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
                'Communist Party of India - CPI',
                'Dravida Munnetra Kazhagam - DMK',
                'Indian Union Muslim League - IUML',
                'Jharkhand Mukti Morcha - JMM',
                'Jammu & Kashmir National Conference - JKN',
                'Kerala Congress - KEC',
                'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
                'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
                'Rashtriya Janata Dal - RJD',
                'Rashtriya Loktantrik Party - RLTP',
                'Revolutionary Socialist Party - RSP',
                'Samajwadi Party - SP',
                'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
                'Viduthalai Chiruthaigal Katchi - VCK'
) THEN "WON"
ELSE 0
END) AS INDIA_Total_Seats_Won
From 
Partywise_results;




----- 6.Seats Won by I.N.D.I.A. Allianz Parties -----

select 
PARTY AS Party_Name,
WON AS Total_seats_won
from Partywise_results
WHERE PARTY IN ('Indian National Congress - INC',
                       'Aam Aadmi Party - AAAP',
                       'All India Trinamool Congress - AITC',
                       'Bharat Adivasi Party - BHRTADVSIP',
                       'Communist Party of India (Marxist) - CPI(M)',
                       'Communist Party of India (Marxist-Leninist) (Liberation) - CPI(ML)(L)',
                       'Communist Party of India - CPI',
                       'Dravida Munnetra Kazhagam - DMK',
                       'Indian Union Muslim League - IUML',
                       'Jammu & Kashmir National Conference - JKN',
                       'Jharkhand Mukti Morcha - JMM',
                       'Kerala Congress - KEC',
                       'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
                       'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
                       'Rashtriya Janata Dal - RJD',
                       'Rashtriya Loktantrik Party - RLTP',
                       'Revolutionary Socialist Party - RSP',
                       'Samajwadi Party - SP',
                       'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
                       'Viduthalai Chiruthaigal Katchi - VCK')
ORDER BY WON DESC;





------ 7.	Add new column field in table partywise_results to get the Party Allianz as NDA, I.N.D.I.A and OTHER  -----

Alter table partywise_results ADD PARTY_ALLIANCE VARCHAR(50);


--- NDA Allianz ---

UPDATE partywise_results SET PARTY_ALLIANCE = 'NDA' WHERE PARTY IN ('Bharatiya Janata Party - BJP',
    'Telugu Desam - TDP',
    'Janata Dal  (United) - JD(U)',
    'Shiv Sena - SHS',
    'AJSU Party - AJSUP',
    'Apna Dal (Soneylal) - ADAL',
    'Asom Gana Parishad - AGP',
    'Hindustani Awam Morcha (Secular) - HAMS',
    'Janasena Party - JnP',
    'Janata Dal  (Secular) - JD(S)',
    'Lok Janshakti Party(Ram Vilas) - LJPRV',
    'Nationalist Congress Party - NCP',
    'Rashtriya Lok Dal - RLD',
    'Sikkim Krantikari Morcha - SKM'
);


---- I.N.D.I.A Allianz ----

UPDATE partywise_results SET party_alliance = 'I.N.D.I.A'
WHERE PARTY IN ('Indian National Congress - INC',
    'Aam Aadmi Party - AAAP',
    'All India Trinamool Congress - AITC',
    'Bharat Adivasi Party - BHRTADVSIP',
    'Communist Party of India  (Marxist) - CPI(M)',
    'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
    'Communist Party of India - CPI',
    'Dravida Munnetra Kazhagam - DMK',	
    'Indian Union Muslim League - IUML',
    'Jammu & Kashmir National Conference - JKN',
    'Jharkhand Mukti Morcha - JMM',
    'Kerala Congress - KEC',
    'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
    'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
    'Rashtriya Janata Dal - RJD',
    'Rashtriya Loktantrik Party - RLTP',
    'Revolutionary Socialist Party - RSP',
    'Samajwadi Party - SP',
    'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
    'Viduthalai Chiruthaigal Katchi - VCK');
    
    select * from partywise_results;
    
    
    
    
    UPDATE partywise_results SET party_alliance = 'OTHERS' WHERE party_alliance IS NULL;
    


------ 8.	Which party alliance (NDA, I.N.D.I.A, or OTHER) won the most seats across all states? -----

SELECT
PARTY,
SUM(WON) AS SEATS_WON
from partywise_results
WHERE party_alliance= 'NDA'
GROUP BY PARTY
ORDER BY SEATS_WON DESC;


----- 9.	Winning candidate's name, their party name, total votes, and the margin of victory for a specific state and constituency? -----

SELECT cr.Winning_Candidate, p.Party, p.party_alliance, cr.Total_Votes, cr.Margin, cr.Constituency_Name, s.State
FROM constituencywise_results cr
JOIN partywise_results p ON cr.Party_ID = p.Party_ID
JOIN statewise_results sr ON cr.Parliament_Constituency = sr.Parliament_Constituency
JOIN states s ON sr.State_ID = s.State_ID
WHERE cr.Constituency_Name = 'COIMBATORE';


---- 10. What is the distribution of EVM votes versus postal votes for candidates in a specific constituency?------

SELECT 
    cd.Candidate,
    cd.Party,
    cd.EVM_Votes,
    cd.Postal_Votes,
    cd.Total_Votes,
    cr.Constituency_Name
FROM 
    constituencywise_details cd
JOIN 
    constituencywise_results cr ON cd.Constituency_ID = cr.Constituency_ID
WHERE 
    cr.Constituency_Name = 'COIMBATORE'
ORDER BY cd.Total_Votes DESC;



-------11 . Which parties won the most seats in s State, and how many seats did each party win?----------

SELECT 
    p.Party,
    COUNT(cr.Constituency_ID) AS Seats_Won
FROM 
    constituencywise_results cr
JOIN 
    partywise_results p ON cr.Party_ID = p.Party_ID
JOIN 
    statewise_results sr ON cr.Parliament_Constituency = sr.Parliament_Constituency
JOIN states s ON sr.State_ID = s.State_ID
WHERE 
    s.state = 'Tamil Nadu'
GROUP BY 
    p.Party
ORDER BY 
    Seats_Won DESC;





------ 12.	What is the total number of seats won by each party alliance (NDA, I.N.D.I.A, and OTHER) in each state for the India Elections 2024? ---

SELECT 
    s.State AS State_Name,
    SUM(CASE WHEN p.party_alliance = 'NDA' THEN 1 ELSE 0 END) AS NDA_Seats_Won,
    SUM(CASE WHEN p.party_alliance = 'I.N.D.I.A' THEN 1 ELSE 0 END) AS INDIA_Seats_Won,
	SUM(CASE WHEN p.party_alliance = 'OTHER' THEN 1 ELSE 0 END) AS OTHER_Seats_Won
FROM 
    constituencywise_results cr
JOIN 
    partywise_results p ON cr.Party_ID = p.Party_ID
JOIN 
    statewise_results sr ON cr.Parliament_Constituency = sr.Parliament_Constituency
JOIN 
    states s ON sr.State_ID = s.State_ID
WHERE 
    p.party_alliance IN ('NDA', 'I.N.D.I.A',  'OTHER')  -- Filter for NDA and INDIA alliances
GROUP BY 
    s.State
ORDER BY 
    s.State;
    

---------13.	 Which candidate received the highest number of EVM votes in each constituency (Top 10)? -------

select 
cd.CANDIDATE,
cr.CONSTITUENCY_NAME,
cd.PARTY,
cd.EVM_VOTES
from constituencywise_details cd INNER JOIN constituencywise_results cr ON cd.CONSTITUENCY_ID = cr.CONSTITUENCY_ID
WHERE cd.EVM_VOTES=(select MAX(cd.EVM_VOTES) from constituencywise_details cd where cd.CONSTITUENCY_ID = cr.CONSTITUENCY_ID) 
ORDER BY EVM_VOTES DESC
FETCH FIRST 10 ROWS ONLY;




----- 14.	Which candidate won and which candidate was the runner-up in each constituency of State for the 2024 elections?------
 

WITH RankedCandidates AS (
    SELECT 
        cd.Constituency_ID,
        cd.Candidate,
        cd.Party,
        cd.EVM_Votes,
        cd.Postal_Votes,
        cd.TOTAL_VOTES,
        ROW_NUMBER() OVER (PARTITION BY cd.Constituency_ID ORDER BY cd.TOTAL_VOTES DESC) AS VoteRank
    FROM 
        constituencywise_details cd
    JOIN 
        constituencywise_results cr ON cd.Constituency_ID = cr.Constituency_ID
    JOIN 
        statewise_results sr ON cr.Parliament_Constituency = sr.Parliament_Constituency
    JOIN 
        states s ON sr.State_ID = s.State_ID
    WHERE 
        s.State = 'Tamil Nadu'
)

SELECT 
    cr.Constituency_Name,
    MAX(CASE WHEN rc.VoteRank = 1 THEN rc.Candidate END) AS Winning_Candidate,
    MAX(CASE WHEN rc.VoteRank = 2 THEN rc.Candidate END) AS Runnerup_Candidate
FROM 
    RankedCandidates rc
JOIN 
    constituencywise_results cr ON rc.Constituency_ID = cr.Constituency_ID
GROUP BY 
    cr.Constituency_Name
ORDER BY 
    cr.Constituency_Name;
    
commit;