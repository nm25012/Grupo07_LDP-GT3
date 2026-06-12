from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from .models import Pelicula, Sala, Horario
from .forms import PeliculaForm, SalaForm, HorarioForm

# --- Peliculas ---
class PeliculaListView(ListView):
    model = Pelicula
    template_name = 'cine/pelicula_list.html'
    context_object_name = 'peliculas'

class PeliculaCreateView(CreateView):
    model = Pelicula
    form_class = PeliculaForm
    template_name = 'cine/form.html'
    success_url = reverse_lazy('cine:pelicula-list')
    extra_context = {'titulo': 'Nueva Película'}

class PeliculaUpdateView(UpdateView):
    model = Pelicula
    form_class = PeliculaForm
    template_name = 'cine/form.html'
    success_url = reverse_lazy('cine:pelicula-list')
    extra_context = {'titulo': 'Editar Película'}

class PeliculaDeleteView(DeleteView):
    model = Pelicula
    template_name = 'cine/confirm_delete.html'
    success_url = reverse_lazy('cine:pelicula-list')
    extra_context = {'titulo': 'Eliminar Película', 'entidad': 'Película'}

# --- Salas ---
class SalaListView(ListView):
    model = Sala
    template_name = 'cine/sala_list.html'
    context_object_name = 'salas'

class SalaCreateView(CreateView):
    model = Sala
    form_class = SalaForm
    template_name = 'cine/form.html'
    success_url = reverse_lazy('cine:sala-list')
    extra_context = {'titulo': 'Nueva Sala'}

class SalaUpdateView(UpdateView):
    model = Sala
    form_class = SalaForm
    template_name = 'cine/form.html'
    success_url = reverse_lazy('cine:sala-list')
    extra_context = {'titulo': 'Editar Sala'}

class SalaDeleteView(DeleteView):
    model = Sala
    template_name = 'cine/confirm_delete.html'
    success_url = reverse_lazy('cine:sala-list')
    extra_context = {'titulo': 'Eliminar Sala', 'entidad': 'Sala'}

# --- Horarios ---
class HorarioListView(ListView):
    model = Horario
    template_name = 'cine/horario_list.html'
    context_object_name = 'horarios'

class HorarioCreateView(CreateView):
    model = Horario
    form_class = HorarioForm
    template_name = 'cine/form.html'
    success_url = reverse_lazy('cine:horario-list')
    extra_context = {'titulo': 'Nuevo Horario'}

class HorarioUpdateView(UpdateView):
    model = Horario
    form_class = HorarioForm
    template_name = 'cine/form.html'
    success_url = reverse_lazy('cine:horario-list')
    extra_context = {'titulo': 'Editar Horario'}

class HorarioDeleteView(DeleteView):
    model = Horario
    template_name = 'cine/confirm_delete.html'
    success_url = reverse_lazy('cine:horario-list')
    extra_context = {'titulo': 'Eliminar Horario', 'entidad': 'Horario'}
