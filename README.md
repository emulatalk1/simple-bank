# Simple Bank
Simple Bank is a Golang learning project. It provides APIs for the frontend to do the following things:
- Create and mange bank accounts.
- Record all balance changes to each of the accounts.
- Performance a money transfer between 2 accounts.

The service is written by Go and aim to learn those topic belows:

- Gin
- golang migration
- gorm, sqlx & sqlc
- How to use GitHub Action to run unit tests automatically.
- Redis

## Database
![simple_bank.svg](docs/simple_bank.svg)

## GORM, sqlx, sqlc
### Comparing:
1. GORM:
   - CRUD functions are already implemented, very short production code (declare the models and using built-in GORM functions).
   - Must learn to write queries using gorm's functions. (How to join tables, declare the association of tables,...).
   - Run slowly on high load.
2. sqlx:
   - Quite fast and easy to use.
   - Fields mapping via query text and struct tags.
   - Failure won't occur until runtime..
3. sqlc:
   - Very fast and easy to use.
   - Automatic code generation.
   - Catch SQL query errors before generating codes.
### Articles:
- https://blog.jetbrains.com/go/2023/04/27/comparing-db-packages/
- https://www.reddit.com/r/golang/comments/1csdf0k/using_gormor_xorm_vs_using_sqlc_with/
