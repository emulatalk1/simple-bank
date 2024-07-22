.PHONY: createdb migrateUp sqlc test server

createdb:
	docker exec -it simple-bank-db createdb --username=root --owner=root simple_bank

migrateUp:
	migrate -path db/migration -database "postgresql://root:secret@localhost:5432/simple_bank?sslmode=disable" -verbose up

sqlc:
	sqlc generate

test:
	go test -v -cover ./...

server:
	go run main.go
