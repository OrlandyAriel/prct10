class Libro<ReferenciaBase

    attr_reader :m_editorial, :m_genero, :m_isbn
  
    def initialize(a_autores,a_titulo,a_anio, a_editorial,a_genero,a_isbn)
        super(a_autores,a_titulo,a_anio)
        @m_editorial,@m_genero,@m_isbn=a_editorial,a_genero,a_isbn
       
    end
end