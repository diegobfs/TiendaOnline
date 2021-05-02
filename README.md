# TiendaOnline
Página web de una tienda online
A continuación se adjunta el script de la base de datos:

CREATE TABLE public.usuario
(
    nombre character varying(20) COLLATE pg_catalog."default" NOT NULL,
    contrasena character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT usuario_pkey PRIMARY KEY (nombre)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


CREATE TABLE public.producto
(
    nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    precio real NOT NULL,
    stock integer,
    image character varying COLLATE pg_catalog."default",
    CONSTRAINT producto_pkey PRIMARY KEY (nombre)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


CREATE TABLE public.pedir
(
    id integer NOT NULL,
    nombrepr character varying(50) COLLATE pg_catalog."default" NOT NULL,
    nombreus character varying(20) COLLATE pg_catalog."default" NOT NULL,
    cantidad integer,
    precio real,
    CONSTRAINT pedir_pkey PRIMARY KEY (id, nombrepr, nombreus),
    CONSTRAINT pedir_nombrepr_fkey FOREIGN KEY (nombrepr)
        REFERENCES public.producto (nombre) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT pedir_nombreus_fkey FOREIGN KEY (nombreus)
        REFERENCES public.usuario (nombre) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


insert into producto values ('Dud new viper blue', 84.95, 1000, 'https://cachimbas.net/wp-content/uploads/2017/01/cachimba-dud-new-viper-blue-sky-1050x1200-w40-78-56-22-0-2.jpg')
insert into producto values ('Elmas Narguile 628', 109.95, 1000, '"https://nazgulhookah.com/521-large_default/cachimba-elmas-narguile-628.jpg"')
insert into producto values ('StarBuzz Phoenix jr verde', 39.95, 1000, '"https://cachimbas.net/wp-content/uploads/2016/12/starbuzz-phoneix.jpg"')
insert into producto values ('El nefes colonial ambar', 149.95, 1000, 'https://bengalaspain.com/8332-thickbox_default/cachimba-el-nefes-colonial-ambar.jpg')
insert into producto values ('Aladin MVP 370 Shiny Negro', 99.95, 1000, 'https://www.originshisha.com/10910-large_default/cachimba-aladin-mvp-360-shiny-azul.jpg')
