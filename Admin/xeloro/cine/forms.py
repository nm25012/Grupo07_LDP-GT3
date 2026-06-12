from django import forms
from .models import Pelicula, Sala, Horario

class PeliculaForm(forms.ModelForm):
    class Meta:
        model = Pelicula
        fields = ['titulo', 'descripcion', 'duracion', 'genero', 'clasificacion', 'activa']

class SalaForm(forms.ModelForm):
    class Meta:
        model = Sala
        fields = ['nombre', 'capacidad']

class HorarioForm(forms.ModelForm):
    class Meta:
        model = Horario
        fields = ['pelicula', 'sala', 'fecha_hora', 'precio']
        widgets = {
            'fecha_hora': forms.DateTimeInput(attrs={'type': 'datetime-local'}),
        }
