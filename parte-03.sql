--PRIMEIRA

SELECT * FROM enderecos; 

--SEGUNDA

SELECT * FROM enderecos e JOIN usuarios u ON e.endereco_id = u.usuario_id;

--TERCEIRA

SELECT * FROM redes_sociais r JOIN usuarios u ON u.usuario_id = r.rede_social_id; 

--QUARTA

SELECT * FROM redes_sociais r
JOIN usuarios u 
	ON u.usuario_id = r.rede_social_id
JOIN enderecos e
	ON e.endereco_id = u.usuario_id;

--QUINTA

SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM redes_sociais r
JOIN usuarios u 
	ON u.usuario_id = r.rede_social_id
JOIN enderecos e
	ON e.endereco_id = u.usuario_id;

--SEXTA

SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM redes_sociais r
JOIN usuarios u 
	ON u.usuario_id = r.rede_social_id
JOIN enderecos e
	ON e.endereco_id = u.usuario_id
WHERE r.nome = 'Youtube';

--SETIMA

SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM redes_sociais r
JOIN usuarios u 
	ON u.usuario_id = r.rede_social_id
JOIN enderecos e
	ON e.endereco_id = u.usuario_id
WHERE r.nome = 'Instagram';

--OITAVA

SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM redes_sociais r
JOIN usuarios u 
	ON u.usuario_id = r.rede_social_id
JOIN enderecos e
	ON e.endereco_id = u.usuario_id
WHERE r.nome = 'Facebook';

--NONA

SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM redes_sociais r
JOIN usuarios u 
	ON u.usuario_id = r.rede_social_id
JOIN enderecos e
	ON e.endereco_id = u.usuario_id
WHERE r.nome = 'TikTok';

--DECIMA

SELECT r.nome AS rede_social, u.nome AS usuario, u.email, e.cidade FROM redes_sociais r
JOIN usuarios u 
	ON u.usuario_id = r.rede_social_id
JOIN enderecos e
	ON e.endereco_id = u.usuario_id
WHERE r.nome = 'Twitter';