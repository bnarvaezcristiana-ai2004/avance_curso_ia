# 🚜 Ingeniería de Inteligencia Artificial Aplicada (Agro + Ambiente + Agroindustria)

![Python](https://img.shields.io/badge/Python-3.9%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-HPC-013243?style=for-the-badge&logo=numpy&logoColor=white)
![TensorFlow](https://img.shields.io/badge/TensorFlow-2.0%2B-orange?style=for-the-badge&logo=tensorflow&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-Shell-yellow?style=for-the-badge&logo=linux&logoColor=black)
![Status](https://img.shields.io/badge/Status-Activo-green?style=for-the-badge)

> **"De la Terminal al Campo."**
> Curso intensivo para transformar datos agroambientales y agroindustriales en decisiones automatizadas usando ingeniería de datos, HPC, ML/DL y despliegue.

---

## 📌 Qué encontrarás aquí
- **Manual (LaTeX/PDF):** explicación detallada + ejemplos + ejercicios.
- **Slides:** resumen de cada semana.
- **Talleres:** práctica guiada con *starter code*.
- **Entregables:** actividades evaluables para subir a GitHub.

Ejes de aplicación (casos por carrera):
- Agroindustria alimenticia (calidad, defectos, clasificación, trazabilidad).
- Agronomía (rendimiento, sanidad vegetal, suelos).
- Ingeniería Agrícola (sensores, riego, automatización).
- Ingeniería Ambiental (calidad de agua/aire, riesgo, monitoreo).

---

## 🧭 Mapa curricular (8 semanas)

### 🟢 Módulo 1: Ingeniería de Datos y HPC
| Semana | Tema | Enfoque técnico | Proyecto / entregable |
| :---: | :--- | :--- | :--- |
| 01 | El entorno del ingeniero | Linux, Bash, Git | `deploy.sh`: automatización de infraestructura (sensores simulados). |
| 02 | Cómputo de alto rendimiento | NumPy vectorización, profiling, complejidad \(O(n)\) | Procesamiento matricial (imágenes/sensores) eficiente. |

### 🟡 Módulo 2: Data Science y ML clásico
| Semana | Tema | Enfoque técnico | Proyecto / entregable |
| :---: | :--- | :--- | :--- |
| 03 | EDA y calidad de datos | Pandas, limpieza, validaciones | Auditoría forense de dataset “corrupto”. |
| 04 | Modelado predictivo | Regresión, métricas, pipelines | Predicción de rendimiento / riesgo / calidad según carrera. |

### 🔴 Módulo 3: Deep Learning y visión
| Semana | Tema | Enfoque técnico | Proyecto / entregable |
| :---: | :--- | :--- | :--- |
| 05 | Clasificación y lógica | Árboles, métricas (F1/Recall) | Calidad de fruta / defecto industrial. |
| 06 | CNNs | Convoluciones, tensores | Detección de enfermedad/plaga en hojas o inspección visual. |

### 🟣 Módulo 4: GenAI & MLOps
| Semana | Tema | Enfoque técnico | Proyecto / entregable |
| :---: | :--- | :--- | :--- |
| 07 | LLMs (RAG) | recuperación + prompting | Asistente técnico que responde leyendo documentos del curso. |
| 08 | Despliegue y APIs | Docker, FastAPI, latencia | API para servir predicciones. |

---

## 🚀 Inicio rápido

### Opción A: GitHub Codespaces (recomendado)
---
1. Abre el entorno:
   [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/asoleal/curso-ia-agroindustria-2)
2. En la terminal, verifica:
   ```bash
   python --version

---

## Opción B: Local (Linux)
Requisitos: Docker + VS Code + extensión “Dev Containers”.

1. Abre el repo en VS Code.
2. Ejecuta: Dev Containers: Reopen in Container.

Opción B: Local (Linux/WSL)
Requisitos: Docker + VS Code + extensión "Dev Containers".

Clona el repo:

```bash

git clone https://github.com/asoleal/curso-ia-agroindustria-2.git
cd curso-ia-agroindustria-2
```

Abre en VS Code y ejecuta: Dev Containers: Reopen in Container.

Elige configuración:

Agro-IA (rapido): para talleres/notebooks (default).

Agro-IA (full-docs): cuando necesites compilar PDFs con LaTeX.

## 📂 Estructura del repositorio
```text
curso-ia-agroindustria-2/
├── data/                     # Almacenamiento de datos (ignorado por git)
│   ├── raw/                  # Datos crudos (inmutables)
│   └── processed/            # Datos limpios/procesados
├── docs/                     # Documentación académica
│   ├── semana01/             # Manuales y guías de la Semana 1
│   ├── semana02/             # Manuales y guías de la Semana 2
│   └── ...
├── reports/                  # Reportes generados automáticamente (logs, validaciones)
├── scripts/                  # Scripts de automatización Bash/Python
├── talleres/                 # Espacios de trabajo para ejercicios prácticos
│   ├── talleres_semana_01/
│   └── ...
├── .gitignore                # Configuración de exclusiones de Git
└── README.md                 # Entrada principal al proyecto
```

### 📖 Semana 1 (arranque)
* Manual: docs/manual/semana01/manual_semana01.tex

* Taller: talleres/week01_linux_git/

* Entregable: entregables/A1_bash_git/

## ⚙️ Setup
Para descargar los datos y validar el entorno, ejecuta:

```bash
./scripts/setup_proyecto.sh
```

## Resultados del Análisis

### 1. Conteo de especies
| Especie | Cantidad |
|---------|----------|
| setosa | 50 |
| versicolor | 50 |
| virginica | 50 |

**Comando:**
```bash
tail -n +2 data/raw/datos_sensores.csv | cut -d',' -f5 | sort | uniq -c

## 🐙 PASO 6: Git - 3 Commits Mínimos

### **Commit 1: El script**
```bash
git add scripts/setup_proyecto.sh
git commit -m "feat: agrega script de setup reproducible con descarga de datos"

## 📄 Licencia

MIT (material académico). Ver LICENSE.

