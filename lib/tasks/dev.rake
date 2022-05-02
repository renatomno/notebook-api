namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    puts "Cadastrando os contatos..."
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between(from: 65.years.ago,to: 18.years.ago),
      )
    end
    puts "Contatos cadastrados com sucesso!"

    puts "Cadastrando tipos de contatos..."

    kinds = ['Amigo', 'Comercial', 'Conhecido']

    kinds.each do |kind|
      Kind.create!(
        description: kind
      )
    end

    puts "Tipos de contatos cadastrados!"
  end

end
