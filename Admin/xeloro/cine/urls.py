from django.urls import path
from . import views

app_name = 'cine'

urlpatterns = [
    # Películas
    path('peliculas/', views.PeliculaListView.as_view(), name='pelicula-list'),
    path('peliculas/nueva/', views.PeliculaCreateView.as_view(), name='pelicula-create'),
    path('peliculas/<int:pk>/editar/', views.PeliculaUpdateView.as_view(), name='pelicula-update'),
    path('peliculas/<int:pk>/eliminar/', views.PeliculaDeleteView.as_view(), name='pelicula-delete'),

    # Salas
    path('salas/', views.SalaListView.as_view(), name='sala-list'),
    path('salas/nueva/', views.SalaCreateView.as_view(), name='sala-create'),
    path('salas/<int:pk>/editar/', views.SalaUpdateView.as_view(), name='sala-update'),
    path('salas/<int:pk>/eliminar/', views.SalaDeleteView.as_view(), name='sala-delete'),

    # Horarios
    path('horarios/', views.HorarioListView.as_view(), name='horario-list'),
    path('horarios/nuevo/', views.HorarioCreateView.as_view(), name='horario-create'),
    path('horarios/<int:pk>/editar/', views.HorarioUpdateView.as_view(), name='horario-update'),
    path('horarios/<int:pk>/eliminar/', views.HorarioDeleteView.as_view(), name='horario-delete'),
]
