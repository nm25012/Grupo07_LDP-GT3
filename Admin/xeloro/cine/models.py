from django.db import models

class Pelicula(models.Model):
    titulo = models.CharField(max_length=200)
    descripcion = models.TextField(blank=True)
    duracion = models.IntegerField(help_text="Duración en minutos")
    genero = models.CharField(max_length=100)
    clasificacion = models.CharField(max_length=50)
    activa = models.BooleanField(default=True)

    def __str__(self):
        return self.titulo

class Sala(models.Model):
    nombre = models.CharField(max_length=100)
    capacidad = models.IntegerField()

    def __str__(self):
        return self.nombre

class Horario(models.Model):
    pelicula = models.ForeignKey(Pelicula, on_delete=models.CASCADE, related_name='horarios')
    sala = models.ForeignKey(Sala, on_delete=models.CASCADE, related_name='horarios')
    fecha_hora = models.DateTimeField()
    precio = models.DecimalField(max_digits=10, decimal_places=2)

    def __str__(self):
        return f"{self.pelicula.titulo} - {self.sala.nombre} - {self.fecha_hora.strftime('%d/%m/%Y %H:%M')}"
