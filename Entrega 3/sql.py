def promedio_muertes():
    return """select sum(fatalities), sum(ground), (avg(fatalities+ground)/2)::numeric(10,2)
                from siniestro
                group by fatalities, ground"""

def muertes_x_anio():
    return """select fatalities + ground as muertes, extract(YEAR from date_) as anio
                from siniestro left join datos_accidente on (siniestro.id_datos_a = datos_accidente.id)"""