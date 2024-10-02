# Greberp Dev

## Prerequisitos

- Tener instalado [Docker](https://docs.docker.com/engine/install/)
- Tener instalado [Docker Compose](https://docs.docker.com/compose/install/)

- Tener descargado los proyectos de [Greberp WEB](https://github.com/bidego/greberp-web) y [Greberp API](https://github.com/bidego/greberp-api) en la misma carpeta que este proyecto.

## Iniciar el servidor de desarrollo
```sh 
make start
```
* Si no tenes Makefile, podes ejecutar los siguientes comandos:
```sh
docker-compose up -d --build
```

Esto iniciará el servidor de desarrollo de Greberp WEB y el servidor de desarrollo de Greberp API y la base de datos mongoDB.

Para acceder a la interfaz de usuario de Greberp WEB, abrir la url `http://localhost:8080/` en el navegador.

## Integracion con MercadoLibre API

Datos de pruebas:

```json
{
  "id": 2008067771,
  "email": "test_user_1336345024@testuser.com",
  "nickname": "TESTUSER1336345024",
  "site_status": "active",
  "password": "71WaH89EjY"
}
```

```json
{
  "id":2008129535,
  "email":"test_user_1961744769@testuser.com",
  "nickname":"TESTUSER1961744769",
  "site_status":"active",
  "password":"y7F6SysLA5"
}
```
Peticion para crear usuario:

```sh
export AACCESS_TOKEN={aca va un token de acceso}
curl -X POST -H 'Authorization: Bearer '$ACCESS_TOKEN -H "Content-type: application/json" -d '{"site_id":"MLA"}' https://api.mercadolibre.com/users/test_user
```