class DocumentoElectronico<ReferenciaBase
    attr_reader :m_lugar_publicacion, :m_url
    def initialize(a_autores,a_titulo,a_anio,a_lugar_publicacion,a_url)
        super(a_autores,a_titulo,a_anio)
        @m_lugar_publicacion,@m_url = a_lugar_publicacion,a_url
    end
end