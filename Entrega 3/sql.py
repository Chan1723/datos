def accidentes_anio():
    return """select fatalities, aboard, ground, extract(year from date_) as date from siniestro left join datos_vuelo on (datos_vuelo.id = id_datos_v) left join datos_accidente on (datos_accidente.id = id_datos_a)"""

def numero_accidentes_op():
    return """select operador from siniestro left join datos_vuelo on (id = id_datos_v)"""

def paises():
    return """select location from datos_accidente"""

def tipos_avion():
    return """select type_avion from siniestro left join datos_vuelo on (id = id_datos_v)"""

def horas_accidentes():
    return """select time_ from datos_accidente left join siniestro on (id = id_datos_a) where time_ is not null"""
