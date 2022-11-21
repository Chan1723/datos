from winreg import QueryValueEx
import dash
import dash_core_components as dcc
import dash_html_components as html
import plotly.graph_objects as go
import plotly.express as px
import numpy as np
import pandas as pd
from Connection import Connection
import sql

external_stylesheets = ['https://codepen.io/chriddyp/pen/bWLwgP.css']

app = dash.Dash(__name__, external_stylesheets=external_stylesheets)

con = Connection()

# inicio de la lectura de las sentencias sql para la elaboracion de las visualizaciones
con.openConnection()
query = pd.read_sql_query(sql.promedio_muertes(), con.connection)
con.closeConnection()
Df_prom = pd.DataFrame(query, columns=["fatalities", "ground", "avg"])
fig_prom = px.bar(Df_prom, x = ["fatalities", "ground", "avg"])
                
con.openConnection()
query = pd.read_sql_query(sql.muertes_x_anio(), con.connection)
con.closeConnection()
Df_MxA =  pd.DataFrame(query, columns=["muertes", "anio"])
fig_MxA =  px.bar(Df_MxA, x = "anio", y = "muertes")

app.layout = html.Div(
    children=[
        html.H1(
            children='Análisis', 
            style={
                'textAlign': 'center'
            }
        ),
        html.Div(
            children=[
                html.H1(children='Promedio entre muertes abordo y el tierra'),
                dcc.Graph(
                    id='Promedio',
                    figure=fig_prom
                ),
            ]
        ),
        html.Div(
            children=[
                html.H1(children='Cantidad muertes por año'),
                dcc.Graph(
                    id='Cantidad de muertes por año',
                    figure=fig_MxA
                ),
            ]
        )
    ]
)

if __name__ == '__main__':
    app.run_server(debug=True)