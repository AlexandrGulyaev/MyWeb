# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Image.delete_all
Image.reset_pk_sequence
Image.create([

               {name: 'Постер к эпизоду 1 "Скрытая угроза"',     file: 'Poster_Episode_1.jpg', theme_id: 3},
               {name: 'Постер к эпизоду 2 "Атака клонов"',       file: 'Poster_Episode_2.jpg', theme_id: 3},
               {name: 'Постер к эпизоду 3 "Месть ситхов"',       file: 'Poster_Episode_3.jpg', theme_id: 3},
               {name: 'Постер к эпизоду 4 "Новая надежда"',      file: 'Poster_Episode_4.jpg', theme_id: 2},
               {name: 'Постер к эпизоду 5 "Империя наносит ответный удар"', file: 'Poster_Episode_5.jpg', theme_id: 2},
               {name: 'Постер к эпизоду 6 "Возвращение джедая"', file: 'Poster_Episode_6.jpg', theme_id: 2},
               {name: 'Постер к эпизоду 7 "Пробуждение силы"',   file: 'Poster_Episode_7.jpg', theme_id: 4},
               {name: 'Постер к эпизоду 8 "Последний джедай"',   file: 'Poster_Episode_8.jpg', theme_id: 4},
               {name: 'Постер к эпизоду 9 "Скайуокер. Восход"',  file: 'Poster_Episode_9.jpg', theme_id: 4},
               {name: 'Постер к спин-оффу "Изгой-один"',         file: 'Poster_RogueOne.jpg',  theme_id: 5},
               {name: 'Постер к спин-оффу "Соло"',               file: 'Poster_Solo.jpg',      theme_id: 5},
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([
               {name: "-----"},      # 1 Нет темы
               {name: "Оцените эпизоды оригинальной трилогии"}, # 2
               {name: "Оцените эпизоды трилогии приквелов"},    # 3
               {name: "Оцените эпизоды трилогии сиквелов"},     # 4
               {name: "Оцените спин-оффы"},                     # 5
             ])

User.delete_all
User.reset_pk_sequence
User.create([
              {name: "THRAWN", email: "thrawn@csilla.chiss"},
            ])

