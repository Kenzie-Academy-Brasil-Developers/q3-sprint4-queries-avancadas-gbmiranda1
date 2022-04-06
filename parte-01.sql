CREATE TABLE IF NOT EXISTS redes_sociais(
    id  BIGSERIAL PRIMARY KEY,
    nome    VARCHAR(150) NOT NULL UNIQUE 
);

CREATE TABLE IF NOT EXISTS usuario_rede_sociais(
    id  BIGSERIAL CONSTRAINT pk_usuario_rede_social PRIMARY KEY,
    usuario_id  INTEGER NOT NULL,
    rede_social_id  INTEGER NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (rede_social_id) REFERENCES redes_sociais(id)
);

CREATE TABLE IF NOT EXISTS enderecos(
    id  BIGSERIAL CONSTRAINT pk_endereco PRIMARY KEY,
    rua VARCHAR NOT NULL,
    pais    VARCHAR(100) NOT NULL,
    cidade  VARCHAR(100) NOT NULL
);

create table if not exists usuarios (
	id	SERIAL  primary key,
	nome 		VARCHAR(100),
	email 		VARCHAR     not null unique,
	senha 		VARCHAR     not null,
	endereco_id INTEGER     not null,
	FOREIGN KEY (endereco_id) REFERENCES enderecos(id)
);