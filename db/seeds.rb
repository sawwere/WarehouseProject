# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

TypeOperation.create(title: "Поставка")
TypeOperation.create(title: "Отгрузка")

Agent.create(name: "test1", password: "test_1234", email: "example@snail.ru", phone: "880005553535",
       town: "Ростов")

Good.create(nomenclature: "Квас", measure: "л")
Good.create(nomenclature: "Молоко", measure: "л")
Good.create(nomenclature: "Помидор", measure: "кг")
Good.create(nomenclature: "Огурец", measure: "кг")
Good.create(nomenclature: "Кровать", measure: "шт")
Good.create(nomenclature: "Учебник Программирование на платформе 1С:Предприятие 8.3", measure: "шт")
Good.create(nomenclature: "Пепелац", measure: "шт")

Warehouse.create(name: "Склад 24", town: "Ростов")
Warehouse.create(name: "Склад для друзей", town: "Ростов")
Warehouse.create(name: "Склад на Шолохова", town: "Ростов")
Warehouse.create(name: "Разгрузочная станция 1", town: "Азов")
Warehouse.create(name: "Подвальное помещение на Зорге", town: "Ростов")



