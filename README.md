# Video Library API

## Dependencies
- Ruby 2.7.0
- Rails 6.0.2
- Postgres >= 9.3
- Redis 5


## Install
```
> bin/setup
```
## :rocket:  Run
```
> bin/start
```

## ROUTES:

Type | Endpoint | Order
-- | -- | --
**GET** | `/api/library` | Creation |
**GET** | `/api/library/movies` | Creation |
**GET** | `/api/library/seasons` | Creation |
**GET** | `/api/user/library` | Remanining time |
**POST** | `/api/user/purchase` `body: { item_id: integer }`| |  
