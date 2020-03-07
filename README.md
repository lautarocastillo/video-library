# Video Library API

## Dependencies
- Ruby 2.7.0
- Rails 6.0.2
- Postgres >= 9.3
- Redis 5


## ROUTES:

Type | Endpoint | Order
-- | -- | --
**GET** | `/library` | Creation |
**GET** | `/library/movies` | Creation |
**GET** | `/library/seasons` | Creation |
**GET** | `/user/library` | Remanining time |
**POST** | `/user/purchase` `body: { item_id: integer }`| |  
