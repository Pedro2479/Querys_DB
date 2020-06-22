 /*ejercicio 1*/
 SELECT * FROM usairlineflights2.flights limit 4578;
 
 /*ejercicio2*/ 
 
 
 SELECT origin, AVG(CRSDepTime),AVG(CRSArrTime) 
 FROM usairlineflights2.flights
GROUP BY arrtime;

/*  ejercicio 3 */

SELECT origin,colMonth,colYear, AVG(arrtime)
 FROM usairlineflights2.flights
GROUP BY origin;

/*ejercicio 4 */

SELECT city,colMonth,colYear, AVG(arrtime) 
FROM  usairlineflights2.flights, usairlineflights2.airports
ORDER BY city limit 1000;


/* ejejrcicio 5   */
/* revisar     */

SELECT UniqueCarrier,colMonth,colYear,max(canceled)
FROM  usairlineflights2.flights
ORDER BY  canceled

/* ejercicio 6    */

SELECT TailNum, max(Distance)
FROM `usairlineflights2`.`flights`
ORDER BY TailNum limit 10;

/* ejercicio 7*/

SELECT UniqueCarrier, AVG(ArrDelay)
FROM usairlineflights2.flights
WHERE  ArrDelay >10
GROUP BY origin



