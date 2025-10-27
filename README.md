# Proyecto Full-Stack de Gestión de Usuarios (CRUD)

Este es un proyecto de aplicación web full-stack que implementa un sistema completo de gestión de usuarios (CRUD: Crear, Leer, Actualizar, Borrar). La arquitectura está diseñada para ser modular y escalable, utilizando un frontend moderno en Next.js y un backend de alto rendimiento en Go.

Toda la aplicación está completamente containerizada utilizando **Docker** y **Docker Compose**, lo que permite un entorno de desarrollo y despliegue consistente y simplificado.

![Captura de Pantalla de la App](https://i.imgur.com/9fLqZqg.png) <!-- Reemplaza esta URL con una captura de pantalla real de tu aplicación -->

---

## 🚀 Tecnologías Utilizadas

Este proyecto integra un conjunto de tecnologías modernas para construir una aplicación robusta y eficiente.

| Área                | Tecnología                                                                                             |
| ------------------- | ------------------------------------------------------------------------------------------------------ |
| **Frontend**        | [**Next.js 14+**](https://nextjs.org/) (React), [**TypeScript**](https://www.typescriptlang.org/), [**Tailwind CSS**](https://tailwindcss.com/), [**Axios**](https://axios-http.com/) |
| **Backend**         | [**Go (Golang)**](https://go.dev/) con el framework [**Gin Gonic**](https://gin-gonic.com/)              |
| **Base de Datos**   | [**PostgreSQL**](https://www.postgresql.org/)                                                          |
| **Containerización**| [**Docker**](https://www.docker.com/) y [**Docker Compose**](https://docs.docker.com/compose/)         |

---

## 📋 Características Principales

-   **Operaciones CRUD completas**: Crea, lee, actualiza y elimina usuarios.
-   **Validación de Datos**: Validación en el frontend y backend para evitar correos electrónicos duplicados.
-   **Interfaz Reactiva**: Construida con React y hooks de estado para una experiencia de usuario fluida.
-   **Entorno Aislado**: Gracias a Docker, no necesitas instalar Go, Node.js o PostgreSQL en tu máquina local.
-   **Despliegue Sencillo**: Configurado para un despliegue fácil en producción gracias a la salida `standalone` de Next.js.
-   **Comunicación Segura**: El frontend y el backend se comunican a través de una red interna de Docker.

---

## ⚙️ Requisitos Previos

Antes de comenzar, asegúrate de tener instalado lo siguiente en tu sistema:

-   [**Docker**](https://www.docker.com/get-started)
-   [**Docker Compose**](https://docs.docker.com/compose/install/) (generalmente incluido con Docker Desktop)

---

## 🏁 Cómo Empezar

Sigue estos pasos para levantar la aplicación completa en tu entorno local.

**1. Clonar el Repositorio**

```bash
git clone https://github.com/jaquimbayoc7/ProyectoProgramaci-nWeb.git
cd ProyectoProgramaci-nWeb
```
## 2. Configurar Variables de Entorno

El frontend necesita saber dónde se encuentra la API del backend. Para ello, crea un archivo de entorno:

1. Navega a la carpeta `frontend`.
2. Crea un archivo llamado `.env.local`.
3. Añade el siguiente contenido:

```env
# frontend/.env.local
NEXT_PUBLIC_API_URL=http://localhost:8000
```
## 3. Construir y Levantar los Contenedores
Desde la raíz del proyecto (donde se encuentra el archivo docker-compose.yml), ejecuta el siguiente comando:
docker-compose up --build

Este comando hará lo siguiente:

Construirá la imagen de Docker para el backend de Go.

Construirá la imagen de Docker para el frontend de Next.js..

Levantará los tres contenedores (frontend, backend y base de datos).

Creará un volumen para persistir los datos de PostgreSQL.



