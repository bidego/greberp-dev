# Greberp Dev

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