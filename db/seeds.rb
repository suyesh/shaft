require 'faker'
user1 = User.create!(
            first_name: 'Suyesh',
            last_name: 'Bhandari',
            middle_name: 'Ram',
            username: 'suyeshb',
            email: 'suyeshb@gmail.com',
            password: 'password',
            password_confirmation: 'password'
)

user2 = User.create!(
            first_name: 'Cody',
            last_name: 'Robbins',
            middle_name: 'Ram',
            username: 'cody',
            email: 'cody@gmail.com',
            password: 'password',
            password_confirmation: 'password'
)

user3 = User.create!(
            first_name: 'Meg',
            last_name: 'Kozak',
            middle_name: 'Ram',
            username: 'meg',
            email: 'meg@gmail.com',
            password: 'password',
            password_confirmation: 'password'
)


board = Board.create!(
    title: 'Cool board',
    owner: user1
)


board = Board.create!(
    title: 'Another Cool board',
    owner: user1
)


board = Board.create!(
    title: 'Really board',
    owner: user1
)


board = Board.create!(
    title: 'Really board another one',
    owner: user3
)


['To-do', 'In-Progress', 'Ice-Box', 'Testing','Done'].each do |list|
    Board.all.each do |board|
       List.create!(title: list, board: board)
    end
end


List.all.each do |list|
    10.times do
      Task.create!(title:Faker::Hobbit.quote ,description: Faker::Hobbit.quote, list: list)
    end
end
