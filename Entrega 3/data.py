import dash
import dash_core_components as dcc
import dash_html_components as html
import plotly.graph_objects as go
import plotly.express as px
import numpy as np
import pandas as pd
from Connection import Connection
import sql

colors = {
    'background': '#111111',
    'text': '#ffffff'
}

def lastWord(string):
    lis = list(str(string).split(" "))
    length = len(lis)
    return lis[length-1]

con = Connection()
# inicio de la lectura de las sentencias sql para la elaboracion de las visualizaciones

# Cantidad de accidentes por pais
con.openConnection()
query =pd.read_sql_query(sql.paises(), con.connection)
con.closeConnection()
Df =  pd.DataFrame(query, columns=["location"])
localizacion = np.array(Df['location'])

pais = [lastWord(i) for i in localizacion if i != None]

pais = pd.DataFrame({'Region':pais,'count':np.ones(len(pais))})
pais_df = pais.groupby('Region').count().sort_values('count',ascending=False)
Fig_pais = px.bar(y=pais_df['count'][:20], x=pais_df.index[:20], color=pais_df.index[:20])
Fig_pais.update_layout(
    template='plotly_dark',
    plot_bgcolor= 'rgba(0, 0, 0, 0)',
    paper_bgcolor= 'rgba(0, 0, 0, 0)',
    font_color=colors['text']
)

#tipos de avion con más accidentes
con.openConnection()
query = pd.read_sql_query(sql.tipos_avion(), con.connection)
con.closeConnection()
Df = pd.DataFrame(query, columns=["type_avion"])
tipo = np.array(Df['type_avion'])

tipo = pd.DataFrame({'Type_avion': tipo, 'count':np.ones(len(tipo))})
tipo_df = tipo.groupby('Type_avion').count().sort_values('count', ascending=False)
Fig_tipo = px.bar(x = tipo_df.index[:20], y=tipo_df['count'][:20], color = tipo_df.index[:20])
Fig_tipo.update_layout(
    template='plotly_dark',
    plot_bgcolor= 'rgba(0, 0, 0, 0)',
    paper_bgcolor= 'rgba(0, 0, 0, 0)',
    font_color=colors['text']
)

con.openConnection()
query = pd.read_sql_query(sql.horas_accidentes(), con.connection)
con.closeConnection()
Df =  pd.DataFrame(query, columns=["time_"])
horas = np.array(Df['time_'])
horas =  pd.DataFrame({'Time':horas, 'count':np.ones(len(horas))})
horas_df = horas.groupby('Time').count()
Fig_horas = px.line(x=horas_df.index, y=horas_df['count'])
Fig_horas.update_layout(
    template='plotly_dark',
    plot_bgcolor= 'rgba(0, 0, 0, 0)',
    paper_bgcolor= 'rgba(0, 0, 0, 0)',
    font_color=colors['text']
)

con.openConnection()
query =  pd.read_sql_query(sql.numero_accidentes_op(), con.connection)
con.closeConnection()

Df = pd.DataFrame(query, columns=["operador"])
op = np.array(Df['operador'])
op =  pd.DataFrame({'operador':op, 'count':np.ones(len(op))})
op_df = op.groupby('operador').count()
Fig_op = px.pie(values=op_df['count'][:20], names=op_df.index[:20])
Fig_op.update_layout(
    template='plotly_dark',
    plot_bgcolor= 'rgba(0, 0, 0, 0)',
    paper_bgcolor= 'rgba(0, 0, 0, 0)',
    font_color=colors['text']
)

con.openConnection()
query =  pd.read_sql_query(sql.accidentes_anio(), con.connection)
con.closeConnection()

Df = pd.DataFrame(query, columns=["fatalities", "aboard","ground", "date"])
anio_df = Df.groupby(['date']).sum()[['fatalities', 'aboard', 'ground']]

Fig_anio = px.line(anio_df, y=["aboard", "fatalities", "ground"])
Fig_anio.update_layout(
    xaxis=dict(
        rangeselector=dict(
            buttons=list([
                dict(count=1,
                     label="1m",
                     step="month",
                     stepmode="backward"),
                dict(count=6,
                     label="6m",
                     step="month",
                     stepmode="backward"),
                dict(count=1,
                     label="YTD",
                     step="year",
                     stepmode="todate"),
                dict(count=1,
                     label="1y",
                     step="year",
                     stepmode="backward"),
                dict(step="all")
            ])
        ),
        rangeslider=dict(
            visible=True
        )
    ),
    template='plotly_dark',
    plot_bgcolor= 'rgba(0, 0, 0, 0)',
    paper_bgcolor= 'rgba(0, 0, 0, 0)',
    font_color=colors['text']
)


con.openConnection()
query = pd.read_sql_query(sql.accidentes_anio(), con.connection)
con.closeConnection()
Df = pd.DataFrame(query, columns=["fatalities","aboard", "ground", "date"])
anio = np.array(Df['date'])
anio_df =  pd.DataFrame({'date':anio, 'count':np.ones(len(anio))})
anio_df = anio_df.groupby('date').count().sort_values('count', ascending=False)


Fig_acc = px.bar(anio_df)
Fig_acc.update_layout(
    template='plotly_dark',
    plot_bgcolor= 'rgba(0, 0, 0, 0)',
    paper_bgcolor= 'rgba(0, 0, 0, 0)',
    font_color=colors['text']
)