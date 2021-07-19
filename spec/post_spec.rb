describe 'Fazer uma requisição ', :post do
    it 'fazer um post' do
        #repassando um objeto do tipo json
        @body = 
        {
            "name": "Amax",
            "last-name": "Kerickson",
            "email": "pocruby@gmail.com",
            "age": 25,
            "phone": "55541984745487",
            "address": "Rua da duvida",
            "state": "Httparty",
            "city": "API"
        }.to_json

        #Sem as opções httparty
        # @headers = 
        # {
        #     "Accept": 'application/vnd.tasksmanager.v2',
        #     'Content-Type': 'application/json'
        # }

        
        # @aula28 = HTTParty.post('https://api-de-tarefas.herokuapp.com/contacts', body: @body, headers: @headers)
        # puts @aula28

        #Com as opções de usar o httparty
       @aula28 = Contato.post('/contacts', body: @body)
        puts @aula28
    end
    

end