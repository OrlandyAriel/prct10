class ReferenciaBase
    include Comparable
    attr_accessor:m_autores, :m_titulo, :m_anio
    def initialize(a_autores, a_titulo, a_anio)
        @m_autores,@m_titulo,@m_anio = a_autores,a_titulo,a_anio
    end
    #Uso 3 criterios para comparar, primero comprueba si los autores son iguales
    #si lo son, comprobaría el título, y si este también lo es mirará el año.
    def <=>(other)
        if(other==nil)
          nil
        else
          t_comparaciones=self.m_autores <=> other.m_autores
          if(t_comparaciones == 0)
            t_comparaciones=self.m_titulo <=> other.m_titulo
            if (t_comparaciones ==0)
              t_comparaciones=self.m_anio <=> other.m_anio
              if(t_comparaciones == 0)
                t_comparaciones
              else
                t_comparaciones
              end
            else
              t_comparaciones
            end
          else
            t_comparaciones
          end
        end
    end
end