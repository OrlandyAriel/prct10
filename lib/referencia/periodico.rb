class Periodico<ReferenciaBase
    attr_reader :m_nombre_periodico, :m_volumen, :m_paginas
    def initialize(a_autores, a_titulo,a_anio, a_nombre_periodico, a_paginas)
        super(a_autores,a_titulo,a_anio)
        @m_nombre_periodico,@m_paginas = a_nombre_periodico, a_paginas
    end
end