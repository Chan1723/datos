import dash
import dash_core_components as dcc
import dash_html_components as html
import dash_bootstrap_components as dbc
import plotly.graph_objects as go
import plotly.express as px
import numpy as np
import pandas as pd
from Connection import Connection
import sql
import data as data

colors = {
    'background': 'rgba(0, 0, 0, 0)',
    'text': '#ffffff'
}


app = dash.Dash(__name__, external_stylesheets=[dbc.themes.SLATE])
app.layout = html.Div([
    dbc.Card(
        dbc.CardBody([
            dbc.Row(
                html.Div([
                    dbc.Card(
                        dbc.CardBody([
                            html.Div([
                                html.H1("ANALISIS DE ACCIDENTES AEREOS")
                            ], style={'textAlign': 'center'})
                        ])
                    )
                ])
            ),
            html.Br(),
            dbc.Row(
                html.Div([
                    dbc.Col([
                        dbc.Card(
                            dbc.CardBody([
                                dcc.Graph(
                                    figure=data.Fig_acc,
                                    config={'displayModeBar': False}
                                )
                            ])
                        )
                    ], width=12)
                ])
            ),
            html.Br(),
            dbc.Row([
                dbc.Col([
                    dbc.Card(
                        dbc.CardBody([
                            html.Div([
                                html.P("El avión es de los medios de transporte más seguros en la actualidad, sin embargo, la historia de la aerodinámica ha tenido inconvenientes que han sido resueltos de forma empírica desde los inicios hasta el día de hoy, para ello se han recaudado datos históricos de los vuelos y los accidentes que se han tenido desde 1908, para poder evaluar los cambios que han habido en relación al paso del tiempo y los avances entre distintos tipos de aeronaves.")
                            ], style={'textAlign': 'center'})
                        ])
                    )
                ], width=6),
                dbc.Col([
                    dbc.Card(
                        dbc.CardBody([
                            html.Div([
                                html.P("Es por esto que a partir de la base de datos publicada en el portal Kaggle se definieron diferentes reglas de negocio como punto de inicio del proyecto. El cliente busca identificar y analizar los datos involucrados en cada accidente aéreo que tienen registrado a nivel mundial. Para organizar cada accidente se requiere un índice, el cual debe ser diferente para cada caso, además se debe describir el modelo del avión, el lugar, la fecha y la hora de los hechos, la cantidad de personas fallecidas durante el accidente, la ruta que cubría cada avión, la aerolínea a la que pertenece cada avión (llamada operador), el número de serial de cada avión (único para cada uno), el cliente solicitó que los accidentes estén organizados de manera cronológica y contengan un breve resumen de los hechos.")
                            ], style={'textAlign': 'center'})
                        ])
                    )
                ], width=6)
            ]),
            html.Br(),
            dbc.Row([
                dbc.Col([
                    dbc.Card(
                        dbc.CardBody([
                            html.Div([
                                html.H1("Accidentes por tipo de avión")
                            ], style={'textAlign': 'center'})
                        ])
                    )
                ], width=6),
                dbc.Col([
                    dbc.Card(
                        dbc.CardBody([
                            html.Div([
                                html.H1("Franjas horarias de accidentes registrados")
                            ], style={'textAlign': 'center'})
                        ])
                    )
                ], width=6)
            ]),
            html.Br(),
            dbc.Row([
                dbc.Col([
                    dbc.Card(
                        dbc.CardBody([
                            dcc.Graph(
                                figure=data.Fig_tipo,
                                config={'displayModeBar': False}
                            )
                        ])
                    )
                ]),
                dbc.Col([
                    dbc.Card(
                        dbc.CardBody([
                            dcc.Graph(
                                figure=data.Fig_horas,
                                config={'displayModeBar': False}
                            )
                        ])
                    )
                ])
            ]),
            html.Br(),
            dbc.Row([
                dbc.Col([
                    dbc.Card(
                        dbc.CardBody([
                            dcc.Graph(
                                figure=data.Fig_op,
                                config={'displayModeBar': False}
                            )
                        ])
                    )
                ], width=9),
                dbc.Col([
                    dbc.Card(
                        dbc.CardBody([
                            html.Div([
                                html.H1("20 aerolineas con más accidentes registrados")
                            ], style={'textAlign': 'center'})
                        ])
                    ),
                    dbc.Card(
                        dbc.CardBody([
                            html.Div([
                                html.P("Para la parte del análisis de datos finales, el uso de Python y librerías con pandas y dash fueron indispensables, ya que, a partir de estas, se puede entender computacionalmente el cambio que ha tenido el transporte aéreo desde 1908 en cuanto a seguridad, un ejemplo de esto son las muertes causada dentro del avión en cada siniestro.")
                            ], style={'textAlign': 'center', 'justify-content':'center'})
                        ])
                    )
                ], width=3)
            ]),
            html.Br(),
            dbc.Row([
                dbc.Col([
                    dbc.Card(
                        dbc.CardBody([
                            html.Div([
                                html.H1("Compración de personas abordo y personas muertas")
                            ], style={'textAlign': 'center'})
                        ])
                    )
                ]),
            ]),
            html.Br(),
            dbc.Row([
                dbc.Col([
                    dbc.Card(
                        dbc.CardBody([
                            dcc.Graph(
                                figure=data.Fig_anio,
                                config={'displayModeBar': False}
                            )
                        ])
                    )
                ])
            ]),
            html.Br(),
            dbc.Row([
                dbc.Col([
                    dbc.Card(
                        dbc.CardBody([
                            html.Div([
                                html.H1("Paises con más accidentes")
                            ], style={'textAlign': 'center'})
                        ])
                    )
                ]),
            ]),
            html.Br(),
            dbc.Row([
                dbc.Col([
                    dbc.Card(
                        dbc.CardBody([
                            dcc.Graph(
                                figure=data.Fig_pais,
                                config={'displayModeBar': False}
                            )
                        ])
                    )
                ])
            ])
        ]), color='rgba(0, 0, 0, 0)', outline=False
    )
], style={'backgroundColor': colors['background'], 'color':colors['text'], 'marginTop':0})

if __name__ == '__main__':
    app.run_server(debug=True)