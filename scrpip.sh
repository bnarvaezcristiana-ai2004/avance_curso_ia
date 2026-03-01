#!/bin/bash
echo "Hola: script"
#!/bin/bash

# 1. Crear la carpeta (la opción -p evita errores si ya existe)
echo "--- Paso 1: Creando carpeta 'mi_proyecto' ---"
mkdir -p mi_proyecto

# 2. Crear el archivo dentro de esa carpeta
echo "--- Paso 2: Creando archivo 'datos.txt' ---"
touch mi_proyecto/datos.txt

# 3. Mostrar el resultado
echo "--- Paso 3: Listando contenido ---"
ls -l mi_proyecto/
