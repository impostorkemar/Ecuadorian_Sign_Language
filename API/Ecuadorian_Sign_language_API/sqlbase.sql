
CREATE TABLE palabra (
                id_palabra INT AUTO_INCREMENT NOT NULL,
                palabra VARCHAR(100) NOT NULL,
                descripcion VARCHAR(200) NOT NULL,
                video VARCHAR(200) NOT NULL,
                PRIMARY KEY (id_palabra)
);


CREATE TABLE caracter (
                id_caracter INT AUTO_INCREMENT NOT NULL,
                caracter VARCHAR(2) NOT NULL,
                video VARCHAR(200) NOT NULL,
                PRIMARY KEY (id_caracter)
);

CREATE TABLE users (
  id INT AUTO_INCREMENT NOT NULL,
  name varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO caracter (caracter, video) VALUES ('0', '0.mp4');
INSERT INTO caracter (caracter, video) VALUES ('1', '1.mp4');
INSERT INTO caracter (caracter, video) VALUES ('2', '2.mp4');
INSERT INTO caracter (caracter, video) VALUES ('3', '3.mp4');
INSERT INTO caracter (caracter, video) VALUES ('4', '4.mp4');
INSERT INTO caracter (caracter, video) VALUES ('5', '5.mp4');
INSERT INTO caracter (caracter, video) VALUES ('6', '6.mp4');
INSERT INTO caracter (caracter, video) VALUES ('7', '7.mp4');
INSERT INTO caracter (caracter, video) VALUES ('8', '8.mp4');
INSERT INTO caracter (caracter, video) VALUES ('9', '9.mp4');
INSERT INTO caracter (caracter, video) VALUES ('a', 'a.mp4');
INSERT INTO caracter (caracter, video) VALUES ('á', 'a.mp4');
INSERT INTO caracter (caracter, video) VALUES ('b', 'b.mp4');
INSERT INTO caracter (caracter, video) VALUES ('c', 'c.mp4');
INSERT INTO caracter (caracter, video) VALUES ('d', 'd.mp4');
INSERT INTO caracter (caracter, video) VALUES ('e', 'e.mp4');
INSERT INTO caracter (caracter, video) VALUES ('é', 'e.mp4');
INSERT INTO caracter (caracter, video) VALUES ('f', 'f.mp4');
INSERT INTO caracter (caracter, video) VALUES ('g', 'g.mp4');
INSERT INTO caracter (caracter, video) VALUES ('h', 'h.mp4');
INSERT INTO caracter (caracter, video) VALUES ('i', 'i.mp4');
INSERT INTO caracter (caracter, video) VALUES ('í', 'i.mp4');
INSERT INTO caracter (caracter, video) VALUES ('j', 'j.mp4');
INSERT INTO caracter (caracter, video) VALUES ('k', 'k.mp4');
INSERT INTO caracter (caracter, video) VALUES ('l', 'l.mp4');
INSERT INTO caracter (caracter, video) VALUES ('m', 'm.mp4');
INSERT INTO caracter (caracter, video) VALUES ('n', 'n.mp4');
INSERT INTO caracter (caracter, video) VALUES ('ñ', 'n.mp4');
INSERT INTO caracter (caracter, video) VALUES ('o', 'o.mp4');
INSERT INTO caracter (caracter, video) VALUES ('ó', 'o.mp4');
INSERT INTO caracter (caracter, video) VALUES ('p', 'p.mp4');
INSERT INTO caracter (caracter, video) VALUES ('q', 'q.mp4');
INSERT INTO caracter (caracter, video) VALUES ('r', 'r.mp4');
INSERT INTO caracter (caracter, video) VALUES ('s', 's.mp4');
INSERT INTO caracter (caracter, video) VALUES ('t', 't.mp4');
INSERT INTO caracter (caracter, video) VALUES ('u', 'u.mp4');
INSERT INTO caracter (caracter, video) VALUES ('ú', 'u.mp4');
INSERT INTO caracter (caracter, video) VALUES ('v', 'v.mp4');
INSERT INTO caracter (caracter, video) VALUES ('w', 'w.mp4');
INSERT INTO caracter (caracter, video) VALUES ('x', 'x.mp4');
INSERT INTO caracter (caracter, video) VALUES ('y', 'y.mp4');
INSERT INTO caracter (caracter, video) VALUES ('z', 'z.mp4');

INSERT INTO palabra (palabra,descripcion, video) VALUES ('aceptar','aceptar','ACEPTAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('acusar','acusar','ACUSAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('agalla','agalla','AGALLA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('aguila','aguila','AGUILA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('albañil','albañil','ALBAÑIL.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('amadecasa','amadecasa','AMADECASA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('amasar','amasar','AMASAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('anfibio','anfibio','ANFIBIO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('ansiosa','ansiosa','ANSIOSA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('ansioso','ansioso','ANSIOSO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('armadillo','armadillo','ARMADILLO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('asi','asi','ASI.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('atraves','atraves','ATRAVES.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('atropellar','atropellar','ATROPELLAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('automático','automático','AUTOMÁTICO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('axila','axila','AXILA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('bachillerato','bachillerato','BACHILLERATO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('barbon','barbon','BARBON.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('barrer','barrer','BARRER.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('bebé','bebé','BEBÉ.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('billetera','billetera','BILLETERA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('bisexual','bisexual','BISEXUAL.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('blanca','blanca','BLANCA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('blanco','blanco','BLANCO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('bobo','bobo','BOBO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('bocacerrada','bocacerrada','BOCACERRADA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('boda','boda','BODA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('bolsadevalores','bolsadevalores','BOLSADEVALORES.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('bolsillo','bolsillo','BOLSILLO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('bondad','bondad','BONDAD.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('bondadoso','bondadoso','BONDADOSO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('bostezo','bostezo','BOSTEZO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('buena','buena','BUENA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('bueno','bueno','BUENO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('buenprovecho','buenprovecho','BUENPROVECHO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('cachetada','cachetada','CACHETADA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('caducada','caducada','CADUCADA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('caducado','caducado','CADUCADO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('calculadora','calculadora','CALCULADORA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('carajo','carajo','CARAJO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('carrera','carrera','CARRERA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('carretera','carretera','CARRETERA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('carton','carton','CARTON.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('casa','casa','CASA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('caspa','caspa','CASPA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('causa','causa','CAUSA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('cementerio','cementerio','CEMENTERIO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('centro','centro','CENTRO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('cepillo','cepillo','CEPILLO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('chef','chef','CHEF.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('chequera','chequera','CHEQUERA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('chismosa','chismosa','CHISMOSA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('chismoso','chismoso','CHISMOSO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('chocolate','chocolate','CHOCOLATE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('cilantro','cilantro','CILANTRO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('colchon','colchon','COLCHON.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('comadre','comadre','COMADRE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('comoestá','comoestá','COMOESTÁ.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('comparar','comparar','COMPARAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('compartir','compartir','COMPARTIR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('comportamiento','comportamiento','COMPORTAMIENTO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('compromiso','compromiso','COMPROMISO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('comunidad','comunidad','COMUNIDAD.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('conmuchogusto','conmuchogusto','CONMUCHOGUSTO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('consulado','consulado','CONSULADO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('contenta','contenta','CONTENTA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('contento','contento','CONTENTO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('contra','contra','CONTRA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('contraparte','contraparte','CONTRAPARTE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('cooperar','cooperar','COOPERAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('copiar','copiar','COPIAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('corazon','corazon','CORAZON.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('cordillera','cordillera','CORDILLERA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('corrección','corrección','CORRECCIÓN.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('corrector','corrector','CORRECTOR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('corregir','corregir','CORREGIR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('cosa','cosa','COSA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('coser','coser','COSER.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('costurera','costurera','COSTURERA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('costurero','costurero','COSTURERO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('cruzarlaspiernas','cruzarlaspiernas','CRUZARLASPIERNAS.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('cuerpo','cuerpo','CUERPO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('culantro','culantro','CULANTRO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('culpa','culpa','CULPA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('culpable','culpable','CULPABLE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('cumplida','cumplida','CUMPLIDA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('cumplido','cumplido','CUMPLIDO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('cumplir','cumplir','CUMPLIR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('debajo','debajo','DEBAJO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('dedicacion','dedicacion','DEDICACION.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('defrente','defrente','DEFRENTE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('dejar','dejar','DEJAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('delgada','delgada','DELGADA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('delgado','delgado','DELGADO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('delito','delito','DELITO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('despacio','despacio','DESPACIO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('despedir','despedir','DESPEDIR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('desvio','desvio','DESVIO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('diapositiva','diapositiva','DIAPOSITIVA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('disculpa','disculpa','DISCULPA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('disfrutar','disfrutar','DISFRUTAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('dividirseelgasto','dividirseelgasto','DIVIDIRSEELGASTO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('division','division','DIVISION.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('doblar','doblar','DOBLAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('docente','docente','DOCENTE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('ecuavoley','ecuavoley','ECUAVOLEY.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('embrague','embrague','EMBRAGUE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('emocion','emocion','EMOCION.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('empleadadomestica','empleadadomestica','EMPLEADADOMESTICA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('empujar','empujar','EMPUJAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('encaminarse','encaminarse','ENCAMINARSE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('encebollado','encebollado','ENCEBOLLADO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('encima','encima','ENCIMA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('enfermo','enfermo','ENFERMO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('enfocar','enfocar','ENFOCAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('enfocarse','enfocarse','ENFOCARSE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('enfoque','enfoque','ENFOQUE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('enfrentar','enfrentar','ENFRENTAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('enfrente','enfrente','ENFRENTE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('ensalada','ensalada','ENSALADA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('entrar','entrar','ENTRAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('entregar','entregar','ENTREGAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('entusiasmarse','entusiasmarse','ENTUSIASMARSE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('epoca','epoca','EPOCA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('escalera','escalera','ESCALERA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('escolar','escolar','ESCOLAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('espalda','espalda','ESPALDA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('especialidad','especialidad','ESPECIALIDAD.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('especialista','especialista','ESPECIALISTA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('especializarce','especializarce','ESPECIALIZARCE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('espejo','espejo','ESPEJO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('estafa','estafa','ESTAFA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('estafador','estafador','ESTAFADOR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('estafadora','estafadora','ESTAFADORA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('estafar','estafar','ESTAFAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('estarhastalacoronilla','estarhastalacoronilla','ESTARHASTALACORONILLA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('estrecho','estrecho','ESTRECHO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('estupefacta','estupefacta','ESTUPEFACTA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('etapa','etapa','ETAPA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('eterna','eterna','ETERNA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('eterno','eterno','ETERNO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('excepcionalmente','excepcionalmente','EXCEPCIONALMENTE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('exprimidor','exprimidor','EXPRIMIDOR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('fábrica','fábrica','FÁBRICA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('fabricar','fabricar','FABRICAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('facil','facil','FACIL.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('factura','factura','FACTURA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('falda','falda','FALDA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('fanesca','fanesca','FANESCA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('feliz','feliz','FELIZ.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('fin','fin','FIN.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('florero','florero','FLORERO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('foca','foca','FOCA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('fotocopiar','fotocopiar','FOTOCOPIAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('fracasar','fracasar','FRACASAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('fracaso','fracaso','FRACASO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('freir','freir','FREIR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('frente','frente','FRENTE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('fritura','fritura','FRITURA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('frontal','frontal','FRONTAL.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('fuera','fuera','FUERA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('fumador','fumador','FUMADOR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('fumadora','fumadora','FUMADORA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('fusible','fusible','FUSIBLE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('futuro','futuro','FUTURO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('gastronomia','gastronomia','GASTRONOMIA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('gatear','gatear','GATEAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('generosa','generosa','GENEROSA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('generoso','generoso','GENEROSO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('golpe','golpe','GOLPE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('golpear','golpear','GOLPEAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('gracias','gracias','GRACIAS.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('grasa','grasa','GRASA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('gratis','gratis','GRATIS.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('gritodeguerra','gritodeguerra','GRITODEGUERRA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('grosero','grosero','GROSERO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('guardarselainformación','guardarselainformación','GUARDARSELAINFORMACIÓN.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('guarderia','guarderia','GUARDERIA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('guata','guata','GUATA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('guitarra','guitarra','GUITARRA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('heladodemáquina','heladodemáquina','HELADODEMÁQUINA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('hipoacúsico','hipoacúsico','HIPOACÚSICO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('humildad','humildad','HUMILDAD.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('humilde','humilde','HUMILDE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('imitar','imitar','IMITAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('íntima','íntima','ÍNTIMA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('íntimo','íntimo','ÍNTIMO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('lactar','lactar','LACTAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('ladrillo','ladrillo','LADRILLO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('lagartija','lagartija','LAGARTIJA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('lanzada','lanzada','LANZADA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('lanzado','lanzado','LANZADO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('lavadora','lavadora','LAVADORA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('levantar','levantar','LEVANTAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('levantarse','levantarse','LEVANTARSE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('libro','libro','LIBRO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('llamar','llamar','LLAMAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('llamarse','llamarse','LLAMARSE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('llanura','llanura','LLANURA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('llevar1','llevar1','LLEVAR1.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('loba','loba','LOBA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('mamífero','mamífero','MAMÍFERO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('menopausia','menopausia','MENOPAUSIA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('mula','mula','MULA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('nunca','nunca','NUNCA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('oregano','oregano','OREGANO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('palma','palma','PALMA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('panela','panela','PANELA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('pantufla','pantufla','PANTUFLA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('pañal','pañal','PAÑAL.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('pañuelo','pañuelo','PAÑUELO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('papa','papa','PAPA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('parar','parar','PARAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('peces','peces','PECES.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('pedir','pedir','PEDIR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('pegar','pegar','PEGAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('pelear','pelear','PELEAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('pena','pena','PENA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('pendeja','pendeja','PENDEJA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('perforadora','perforadora','PERFORADORA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('periodista','periodista','PERIODISTA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('pesame','pesame','PESAME.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('pesas','pesas','PESAS.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('pescado','pescado','PESCADO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('piñata','piñata','PIÑATA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('piston','piston','PISTON.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('propuesta','propuesta','PROPUESTA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('psicologia','psicologia','PSICOLOGIA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('quedice','quedice','QUEDICE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('quemecuentas','quemecuentas','QUEMECUENTAS.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('quieto','quieto','QUIETO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('quiza','quiza','QUIZA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('remolque','remolque','REMOLQUE.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('respirar','respirar','RESPIRAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('sala','sala','SALA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('salami','salami','SALAMI.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('saldeaqui','saldeaqui','SALDEAQUI.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('saludar','saludar','SALUDAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('saludo','saludo','SALUDO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('seguridadaeroportuaria','seguridadaeroportuaria','SEGURIDADAEROPORTUARIA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('servicio','servicio','SERVICIO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('servilleta','servilleta','SERVILLETA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('servir','servir','SERVIR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('siesta','siesta','SIESTA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('sindinero','sindinero','Sindinero.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('sobrina','sobrina','SOBRINA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('sobrino','sobrino','SOBRINO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('su','su','SU.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('subir','subir','SUBIR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('suyo','suyo','SUYO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('tacaña','tacaña','TACAÑA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('tacaño','tacaño','TACAÑO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('talvez','talvez','TALVEZ.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('tapar','tapar','TAPAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('taxi','taxi','TAXI.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('television','television','TELEVISION.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('temeraria','temeraria','TEMERARIA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('temporal','temporal','TEMPORAL.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('terminar','terminar','TERMINAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('tienda','tienda','TIENDA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('tocino','tocino','TOCINO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('todo','todo','TODO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('todoeldía','todoeldía','TODOELDÍA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('tomar','tomar','TOMAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('torear','torear','TOREAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('torera','torera','TORERA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('torero','torero','TORERO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('torturar','torturar','TORTURAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('universidad','universidad','UNIVERSIDAD.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('usada','usada','USADA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('usado','usado','USADO.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('usar','usar','USAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('utilizar','utilizar','UTILIZAR.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('vivienda','vivienda','VIVIENDA.mp4');
INSERT INTO palabra (palabra,descripcion, video) VALUES ('yanomas','yanomas','YANOMAS.mp4');

INSERT INTO `users`( `name`, `email`, `password`) VALUES ('admin','jcajasp2@est.ups.edu.ec','tesis.root1')

