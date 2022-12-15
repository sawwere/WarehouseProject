# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Agent.create(name: "test1", password: "test_1234", email: "example@snail.ru", phone: "880005553535",
       town: "Ростов")

Good.create(nomenclature: "Квас", measure: "л")
Warehouse.create(name: "Склад 24", town: "Ростов")

Operation.create(goods_id: 1, ag_id: 0, wh_id: 1, typeop: 1,
                  quantity: 5, price: 15, op_date: "2022-12-14")


