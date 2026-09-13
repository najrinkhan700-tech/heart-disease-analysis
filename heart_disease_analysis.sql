CREATE DATABASE HeartDiseaseDB;
USE HeartDiseaseDB;

SELECT TOP 20 * FROM heart;

-- 1. What is the overall prevalence of heart disease in this dataset?
SELECT
    target,
    COUNT(*) AS TotalPatients,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM heart) AS Percentage
FROM heart
GROUP BY target;



-- 2. Which age group has the highest risk of heart disease?
SELECT
    CASE
        WHEN age < 40 THEN 'Under 40'
        WHEN age BETWEEN 40 AND 54 THEN '40-54'
        WHEN age BETWEEN 55 AND 64 THEN '55-64'
        ELSE '65+'
    END AS AgeGroup,
    COUNT(*) AS TotalPatients,
    SUM(target) AS DiseaseCases
FROM heart
GROUP BY
    CASE
        WHEN age < 40 THEN 'Under 40'
        WHEN age BETWEEN 40 AND 54 THEN '40-54'
        WHEN age BETWEEN 55 AND 64 THEN '55-64'
        ELSE '65+'
    END;    



-- 3. Is there a difference in heart disease rate between males and females?
SELECT
    sex,
    COUNT(*) AS TotalPatients,
    SUM(target) AS DiseaseCases
FROM heart
GROUP BY sex;



-- 4. Which chest pain type is most strongly associated with heart disease?
SELECT 
    cp as Chest_pain,
    COUNT(*) as TotalPatients,
    SUM(target) as DiseaseCases
FROM heart
group by cp;



-- 5. Do patients with heart disease have higher average cholesterol levels?
SELECT 
    target,
    COUNT(*) AS TotalPatients,
    AVG(chol) AS AvgCholestrol
 FROM heart
 GROUP by target;



-- 6. Does exercise-induced angina correlate with a higher disease rate?
SELECT
    exang,
    COUNT(*) AS TotalPatients,
    SUM(target) as DiseaseCases
FROM heart
GROUP BY exang;



-- 7. Does high fasting blood sugar increase the likelihood of heart disease?
SELECT 
      fbs as FastingBloodSugar,
      COUNT(*) as TotalPatients,
      SUM(target) as DiseaseCases
FROM heart
GROUP BY fbs;



-- 8. How does resting blood pressure relate to heart disease risk?
SELECT
    CASE
        WHEN trestbps < 120 THEN 'Normal'
        WHEN trestbps BETWEEN 120 AND 139 THEN 'Elevated'
        ELSE 'High'
    END AS BPCategory,
    COUNT(*) AS TotalPatients,
    SUM(target) AS DiseaseCases
FROM heart
GROUP BY
    CASE
        WHEN trestbps < 120 THEN 'Normal'
        WHEN trestbps BETWEEN 120 AND 139 THEN 'Elevated'
        ELSE 'High'
    END;



-- 9. Is maximum heart rate during exercise lower in patients with heart disease
SELECT
    target,
    COUNT(*) AS TotalPatients,
    AVG(thalach) AS AvgMaxHeartRate
FROM heart
GROUP BY target;



-- 10. How does the number of major vessels (ca) affect disease risk?
SELECT
    ca,
    COUNT(*) AS TotalPatients,
    SUM(target) AS DiseaseCases
FROM heart
GROUP BY ca
ORDER BY ca;