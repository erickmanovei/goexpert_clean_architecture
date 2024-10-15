createmigration:
	migrate create -ext=sql -dir=sql/migrations -seq create_orders

migrate:
	migrate -path=sql/migrations -database "mysql://root:root@tcp(localhost:3310)/orders" -verbose up

migratedown:
	migrate -path=sql/migrations -database "mysql://root:root@tcp(localhost:3310)/orders" -verbose down

.PHONY: migrate createmigration