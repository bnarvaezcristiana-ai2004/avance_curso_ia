#!/usr/bin/env bash
# =====================================================
# Script: setup_proyecto.sh
# Descripción: Automatiza estructura, descarga y validación
# =====================================================

# Modo estricto: falla si hay error
set -euo pipefail

echo ">>> Iniciando setup del proyecto..."

# 1. Crear estructura de carpetas
mkdir -p data/raw data/processed scripts reports

# 2. Variables de descarga
DATA_URL="https://raw.githubusercontent.com/mwaskom/seaborn-data/master/iris.csv"
DATA_FILE="data/raw/datos_sensores.csv"

# 3. Descargar solo si no existe (Idempotencia)
if [ ! -f "$DATA_FILE" ]; then
    echo ">>> Descargando datos desde GitHub..."
    curl -L -o "$DATA_FILE" "$DATA_URL"
else
    echo ">>> Los datos ya existen, saltando descarga."
fi

# 4. Generar reporte de validación
echo ">>> Generando reporte..."
REPORT_FILE="reports/validacion_inicial.txt"
{
    echo "=== REPORTE DE VALIDACIÓN ==="
    echo "Fecha: $(date)"
    echo "Archivo: $DATA_FILE"
    echo "Tamaño: $(du -h "$DATA_FILE" | cut -f1)"
    echo "Filas totales: $(wc -l < "$DATA_FILE")"
    echo "Columnas detectadas: $(head -n1 "$DATA_FILE" | tr ',' '\n' | wc -l)"
    echo "Valores vacíos: $(grep -c ',,' "$DATA_FILE" || echo 0)"
} > "$REPORT_FILE"

echo ">>> Setup completado. Revisa $REPORT_FILE"
