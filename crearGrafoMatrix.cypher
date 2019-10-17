Create
(Neo:Crew {name:'Neo'}), 
(Morpheus:Crew {name: 'Morpheus'}), 
(Trinity:Crew {name: 'Trinity'}), 
(Cypher:Crew:Matrix {name: 'Cypher'}), 
(Smith:Matrix {name: 'Agent Smith'}), 
(Architect:Matrix {name:'The Architect'}), 
(Neo)-[:KNOWS]->(Morpheus), 
(Neo)-[:LOVES]->(Trinity), 
(Morpheus)-[:KNOWS]->(Trinity), 
(Morpheus)-[:KNOWS]->(Cypher), 
(Cypher)-[:KNOWS]->(Smith), 
(Smith)-[:CODED_BY]->(Architect)
