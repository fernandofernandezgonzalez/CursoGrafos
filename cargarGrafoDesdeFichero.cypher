LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/fernandofernandezgonzalez/CursoGrafos/master/Crew.txt' AS line CREATE (:Crew{ id:line.Id, name: line.Name})

LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/fernandofernandezgonzalez/CursoGrafos/master/Matrix.txt' AS line 
CREATE (:Matrix{id:line.Id, name: line.Name})


LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/fernandofernandezgonzalez/CursoGrafos/master/KNOWS.txt' 
as line 
MATCH (p1 {name:line.start})  
MATCH (p2 {name:line.end})
CREATE (p1)-[:KNOWS]->(p2);

LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/fernandofernandezgonzalez/CursoGrafos/master/LOVES.txt' 
as line 
MATCH (p1 {name:line.start})  
MATCH (p2 {name:line.end})
CREATE (p1)-[:LOVES]->(p2);

LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/fernandofernandezgonzalez/CursoGrafos/master/CODED_BY.txt' 
as line 
MATCH (p1 {name:line.start})  
MATCH (p2 {name:line.end})
CREATE (p1)-[:CODED_BY]->(p2);
