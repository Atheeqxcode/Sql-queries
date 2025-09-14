# Sql-queries

## Assignment 

## Questions:

The questions are based off the following public SQL DB: https://docs.rfam.org/en/latest/database.html

(1) How many types of tigers can be found in the taxonomy table of the dataset? What is the "ncbi_id" of the Sumatran Tiger? (hint: use the biological name of the tiger)

(2) Find all the columns that can be used to connect the tables in the given database.

(3) Which type of rice has the longest DNA sequence? (hint: use the rfamseq and the taxonomy tables)

(4) We want to paginate a list of the family names and their longest DNA sequence lengths (in descending order of length) where only families that have DNA sequence lengths greater than 1,000,000 are included. Give a query that will return the 9th page when there are 15 results per page. (hint: we need the family accession ID, family name and the maximum length in the results)

## Solutions:

### 1st question-query:

SELECT COUNT(*) FROM taxonomy
WHERE species LIKE '%Panthera tigris%';

SELECT ncbi_idFROM taxonomy
WHERE species = 'Panthera tigris sumatrae';

### 2nd question-query:

SELECT table_name, column_name FROM information_schema.columns WHERE table_schema = 'Rfam' AND column_name IN ('ncbi_id', 'rfamseq_acc', 'rfam_acc', 'clan_acc', 'clan_id');

### 3rd qn-query:

SELECT tx.species AS rice_type, rf.length AS sequence_length
FROM rfamseq rf JOIN taxonomy tx ON rf.ncbi_id = tx.ncbi_id WHERE tx.tax_string LIKE '%Oryza%' ORDER BY rf.length DESC
LIMIT 1;

### 4th qn-query:

SELECT f.rfam_acc, f.rfam_id, MAX(rf.length) AS max_length
FROM family f
JOIN full_region fr ON f.rfam_acc =
fr.rfam_acc
JOIN rfamseq rf ON fr.rfamseq_acc =
rf.rfamseq_acc
GROUP BY f.rfam_acc, f.rfam_id HAVING MAX(rf.length) > 1000000 ORDER BY MAX(rf.length) DESC LIMIT 15 OFFSET 120;
