--PRIMEIRA

SELECT * FROM enderecos; 

--SEGUNDA

SELECT * FROM enderecos JOIN usuarios ON enderecos.id = usuarios.usuario_id;

--TERCEIRA

SELECT * FROM redes_sociais r JOIN usuarios u ON u.usuario_id = r.rede_social_id; 

--QUARTA

SELECT * FROM redes_sociais r
JOIN usuario_rede_sociais urs 
	ON r.id = urs.rede_social_id 
join usuarios u 
	on u.id = urs.usuario_id  
JOIN enderecos e
	ON e.id  = u.endereco_id;

--QUINTA

SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM redes_sociais r
JOIN usuario_rede_sociais urs 
	ON urs.rede_social_id  = r.id
join usuarios u 
	on u.id = urs.usuario_id 
JOIN enderecos e
	ON e.id  = u.endereco_id;

--SEXTA

SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM redes_sociais r
JOIN usuario_rede_sociais urs 
	ON urs.rede_social_id = r.id
join usuarios u 
	on u.id = urs.usuario_id 
JOIN enderecos e
	ON e.id = u.endereco_id 
WHERE r.nome = 'Youtube';

--SETIMA

SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM redes_sociais r
JOIN usuario_rede_sociais urs 
	ON urs.rede_social_id = r.id
join usuarios u 
	on u.id = urs.usuario_id 
JOIN enderecos e
	ON e.id = u.endereco_id 
WHERE r.nome = 'Instagram';

--OITAVA

SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM redes_sociais r
JOIN usuario_rede_sociais urs 
	ON urs.rede_social_id = r.id
join usuarios u 
	on u.id = urs.usuario_id 
JOIN enderecos e
	ON e.id = u.endereco_id 
WHERE r.nome = 'Facebook';

--NONA

SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM redes_sociais r
JOIN usuario_rede_sociais urs 
	ON urs.rede_social_id = r.id
join usuarios u 
	on u.id = urs.usuario_id 
JOIN enderecos e
	ON e.id = u.endereco_id 
WHERE r.nome = 'TikTok';

--DECIMA

SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM redes_sociais r
JOIN usuario_rede_sociais urs 
	ON urs.rede_social_id = r.id
join usuarios u 
	on u.id = urs.usuario_id 
JOIN enderecos e
	ON e.id = u.endereco_id 
WHERE r.nome = 'Twiiter';