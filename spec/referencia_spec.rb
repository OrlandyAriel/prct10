require 'spec_helper'
require 'referencia'
describe Referencia do
    context "# Clase Base -> ReferenciaBase" do
        before :each do
            @res=ReferenciaBase.new(["Pepe Perez"],"Las Pruebas de referencia","2014")
        end
        it "Existe la clase ReferenciaBase" do
            res=ReferenciaBase.new(["Pepe Perez"],"Las Pruebas de referencia","2014")
        end
    end
    context "# Clase -> Libro" do
        before :each do
            @libro = Libro.new(["George R.R Martin"],"Juego de Tronos: Canción de Hielo y Fuego","2006","Gigamesh","Narrativa Fantastica",["ISBN:9788496208377"])
        end
        it "Existe una clase libro" do
           lib = Libro.new(["George R.R Martin"],"Juego de Tronos: Canción de Hielo y Fuego","2006","Gigamesh","Narrativa Fantastica",["ISBN:9788496208377"])
        end
        it "Comprueba que debe existir uno o mas ISBN" do
            expect(@libro.m_isbn.length).not_to be 0
        end
        it "Comprueba que debe existir un titulo" do
            expect(@libro.m_titulo).not_to eq("")
        end
=begin
        it "Metodo para obtener los autores" do
            expect(@libro.m_autores).to eq(["George R.R Martin"])
        end
          it "Metodo para obtener el titulo" do
            expect(@libro.m_titulo).to eq("Juego de Tronos: Canción de Hielo y Fuego")
        end
        it "Metodo para obtener el año" do
            expect(@libro.m_anio).to eq("2006")
        end
        it "Metodo para obtener la editorial" do
            expect(@libro.m_editorial).to eq("Gigamesh")
        end
        it "Metodo para obtener el genero" do
            expect(@libro.m_genero).to eq("Narrativa Fantastica")
        end
        
        it "Metodo para obtener el ISBN" do
            expect(@libro.m_isbn).to eq(["ISBN:9788496208377"])
        end
=end
    end
    context "# Clase -> Revista" do
        before :each do
            @revista =  Revista.new(["Maldonado, C.A","Etheverry, P"],"Blende Learning 2.0 con Mundos Virtuales","2013","Universidad Empresarial Siglo 21.","Vol X","200")
        end
        it "Existe una Clase Revista" do
            rev =  Revista.new(["Maldonado, C.A","Etheverry, P"],"Blende Learning 2.0 con Mundos Virtuales","2013","Universidad Empresarial Siglo 21.","Vol X","200")
        end
        it "Comprueba que la Revista tiene un nombre" do
            expect(@revista.m_nombre_revista).not_to eq("")
        end
=begin
        it "Metodo para obtener los autores" do
            expect(@revista.m_autores).to eq(["Maldonado, C.A","Etheverry, P"])
        end
        it "Metodo para obtener el titulo" do
            expect(@revista.m_titulo).to eq("Blende Learning 2.0 con Mundos Virtuales")
        end
        it "Metodo para obtener el año" do
            expect(@revista.m_anio).to eq("2013")
        end
        it "Metodo para obtener el nombre de la revista" do
            expect(@revista.m_nombre_revista).to eq("Universidad Empresarial Siglo 21.")
        end
        it "Metodo para obtener el volumen" do
            expect(@revista.m_volumen).to eq("Vol X")
        end
        it "Metodo para obtener el número de página" do
            expect(@revista.m_paginas).to eq("200")
        end
=end
    end
    context "# Clase -> Documento Electronico" do
        before :each do
            @docElectornico=  DocumentoElectronico.new(["Rafael Vida"],"Blaster versus Welchi: Modelado del malware competitivo","2015","Madrid","http://www.elladodelmal.com/2015/11/blaster-versus-welchi-modelado-del.html")
        end
        it "Existe la clase DocumentoElectronico" do
            doc= DocumentoElectronico.new(["Rafael Vida"],"Blaster versus Welchi: Modelado del malware competitivo","2015","Madrid","http://www.elladodelmal.com/2015/11/blaster-versus-welchi-modelado-del.html")
        end
        it "Comprobar que existe una URL" do
            expect(@docElectornico.m_url).not_to eq("")
        end
=begin
         it "Metodo para obtener los autores" do
            expect(@docElectornico.m_autores).to eq(["Rafael Vida"])
        end
        it "Metodo para obtener el titulo" do
            expect(@docElectornico.m_titulo).to eq("Blaster versus Welchi: Modelado del malware competitivo")
        end
        it "Metodo para obtener el año" do
            expect(@docElectornico.m_anio).to eq("2015")
        end
        it "Metodo para obtener el Lugar de publicación" do
            expect(@docElectornico.m_lugar_publicacion).to eq("Madrid")
        end
        it "Metodo para obtener la dirección url" do
            expect(@docElectornico.m_url).to eq("http://www.elladodelmal.com/2015/11/blaster-versus-welchi-modelado-del.html")
        end
=end
    end
    context "# Clase -> Periodico" do
        before :each do
            @periodico = Periodico.new(["Risto Mejide"],"Un artículo de los de antes","2014","elPeriódico","1")
        end
        it "Existe una Clase Periodico" do
            per =  Periodico.new(["Risto Mejide"],"Un artículo de los de antes","2014","elPeriódico","1")
        end
        it "Comprueba que debe existir al menos un autor" do
           # expect(@periodico.m_autores.length).should_not be 0
           expect(@periodico.m_autores.length).not_to be 0
        end
        it "Comprueba que debe existir un Titulo" do
            expect(@periodico.m_titulo).not_to eq("")
        end
=begin
        it "Metodo para obtener los autores" do
            expect(@periodico.m_autores).to eq(["Risto Mejide"])
        end
        it "Metodo para obtener el titulo" do
            expect(@periodico.m_titulo).to eq("Un artículo de los de antes")
        end
        it "Metodo para obtener el año" do
            expect(@periodico.m_anio).to eq("2014")
        end
        it "Metodo para obtener el nombre del periodico" do
            expect(@periodico.m_nombre_periodico).to eq("elPeriódico")
        end
        it "Metodo para obtener el número de página" do
            expect(@periodico.m_paginas).to eq("1")
        end
=end
    end
    context " #Clase ->Lista" do
        before :each do
            @libro1 = Libro.new(["George R.R Martin"],"Juego de Tronos: Canción de Hielo y Fuego","2006","Narrativa Fantastica","Gigamesh",["ISBN:9788496208377"])
            @revista1 = Revista.new(["Maldonado, C.A","Etheverry, P"],"Blende Learning 2.0 con Mundos Virtuales","2013","Universidad Empresarial Siglo 21.","Vol X","200")
            @periodico1 = Periodico.new("Risto Mejide","Un artículo de los de antes","2014","elPeriódico","1")
            @docElectornico1 = DocumentoElectronico.new(["Rafael Vida"],"Blaster versus Welchi: Modelado del malware competitivo","2015","Madrid","http://www.elladodelmal.com/2015/11/blaster-versus-welchi-modelado-del.html")
            @lista = Lista.new()
        end
        it "Se puede crear una Lista" do
            li = Lista.new()
        end
        it "Se puede insertar un elemento al final" do
            @lista.insertar_final(@libro1)
        end
        it "Se puede insertar varios elemento al final" do
            @lista.insertar_final(@revista1,@docElectornico1)
        end
        it "Se puede insertar un elemento al principio" do
            @lista.insertar_inicio(@periodico1)
        end
        it "Se puede insertar varios elemento al principio" do
            @lista.insertar_inicio(@docElectornico1,@libro1)
        end
        it "La lista tiene una cola (inicio)" do
            expect(@lista.inicio.value).equal?@libro1
        end
        it "La lista tiene una cabeza (fin)" do
            expect(@lista.fin.value).equal?@docElectornico1
        end
    end
    context "# COMPROBACIÓN HERENCIA" do
        before :each do
            @res=ReferenciaBase.new(["Pepe Perez"],"Las Pruebas de referencia","2014")
            @libro = Libro.new(["George R.R Martin"],"Juego de Tronos: Canción de Hielo y Fuego","2006","Narrativa Fantastica","Gigamesh",["ISBN:9788496208377"])
            @revista = Revista.new(["Maldonado, C.A","Etheverry, P"],"Blende Learning 2.0 con Mundos Virtuales","2013","Universidad Empresarial Siglo 21.","Vol 1","200")
            @periodico = Periodico.new("Risto Mejide","Un artículo de los de antes","2014","elPeriódico","1")
            @docElectornico = DocumentoElectronico.new(["Rafael Vida"],"Blaster versus Welchi: Modelado del malware competitivo","2015","Madrid","http://www.elladodelmal.com/2015/11/blaster-versus-welchi-modelado-del.html")
        end
        it "Comprobar que ReferenciaBase hereda de Object" do
            expect(@res.class.superclass).to eq(Object)
        end
        it "Comprobar que ReferenciaBase tambien hereda de BasicObject" do
            expect(@res.class.superclass.superclass).to eq(BasicObject)
        end
        #  it "Comprobar que ReferenciaBase hereda de Object" do
            #expect(@res.is_a?Object).to eq(true)
        #end
        it "Comprobar que Revista hereda de ReferenciaBase" do
            expect(@revista.class.superclass).to eq(@res.class)
        end
        it "Comprobar que @revista es de tipo Revista" do
            expect(@revista.class).to eq(@revista.class)
        end
        it "Comprobar que DocumentoElectronico hereda de ReferenciaBase" do
            expect(@docElectornico.class.superclass).to eq(@res.class)
        end
        it "Comprobar que @docElectornico es de tipo DocumentoElectronico" do
            expect(@docElectornico.class).to eq(@docElectornico.class)
        end
        it "Comprobar que Libro hereda de ReferenciaBase" do
            expect(@libro.class.superclass).to eq(@res.class)
        end
        it "Comprobar que @libro es de tipo Libro" do
            expect(@libro.class).to eq(@libro.class)
        end
        it "Comprobar que Periodico hereda de ReferenciaBase" do
            expect(@periodico.class.superclass).to eq(@res.class)
        end
        it "Comprobar que @periodico es de tipo Periodico" do
            expect(@periodico.class).to eq(@periodico.class)
        end
    end
    context "# MÓDULO COMPARABLE" do
         before :each do
            @res=ReferenciaBase.new(["Pepe Perez"],"Las Pruebas de referencia","2014")
            @libro = Libro.new(["George R.R Martin"],"Juego de Tronos: Canción de Hielo y Fuego","2006","Narrativa Fantastica","Gigamesh",["ISBN:9788496208377"])
            @revista = Revista.new(["Maldonado, C.A","Etheverry, P"],"Blende Learning 2.0 con Mundos Virtuales","2013","Universidad Empresarial Siglo 21.","Vol 1","200")
            @periodico = Periodico.new("Risto Mejide","Un artículo de los de antes","2014","elPeriódico","1")
            @docElectornico = DocumentoElectronico.new(["Rafael Vida"],"Blaster versus Welchi: Modelado del malware competitivo","2015","Madrid","http://www.elladodelmal.com/2015/11/blaster-versus-welchi-modelado-del.html")
        end
        it "Comprobar <=> (<)" do
            expect(@libro < @revista).to eq(true)
        end
        it "Comprobar <=> (>)" do
            expect(@libro > @revista).to eq(false)
        end
        it "Comprobar <=> (<=)" do
            expect(@libro <= @revista).to eq(true)
        end
        it "Comprobar <=> (>=)" do
            expect(@libro >= @revista).to eq(false)
        end
    end
    context "# MÓDULO ENUMERABLE" do
         before :each do
            @libro1 = Libro.new(["George R.R Martin"],"Juego de Tronos: Canción de Hielo y Fuego","2006","Narrativa Fantastica","Gigamesh",["ISBN:9788496208377"])
            @revista1 = Revista.new(["Maldonado, C.A","Etheverry, P"],"Blende Learning 2.0 con Mundos Virtuales","2013","Universidad Empresarial Siglo 21.","Vol X","200")
            @periodico1 = Periodico.new(["Risto Mejide"],"Un artículo de los de antes","2014","elPeriódico","1")
            @docElectornico1 = DocumentoElectronico.new(["Rafael Vida"],"Blaster versus Welchi: Modelado del malware competitivo","2015","Madrid","http://www.elladodelmal.com/2015/11/blaster-versus-welchi-modelado-del.html")
            @lista = Lista.new()
            @lista.insertar_final(@libro1,@revista1,@periodico1,@docElectornico1)
        end
        it "Comprobar min" do
            expect(@lista.min==@libro1).to eq(true)
        end
        it "Comprobar max" do
            expect(@lista.max==@periodico1).to eq(true)
        end
        it "Comprueba count " do
            expect(@lista.count).to eq(3)
        end
    end
end
