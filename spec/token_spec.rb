describe 'usando ', :token do
    it 'token' do
        #Inicio da criação do usuário
        #gera email aleatorio
        @email = Faker::Internet.email
        
        @body = {
        user: {
            email: @email,
            password: '123456',
            password_conformation: '123456'
        }
        }.to_json

        @header =
        {
            Accept: 'application/vnd.taskmanager.v2',
            'Content-Type': 'application/json'
        } 
        #url /users é para criação de usuários
        @criar = Criar.post('/users', body: @body, headers: @header)
        puts @criar.body
        puts @criar.parsed_response['data']['attributes']['auth-token']
        #fim da criação de usuário e pega o token

        #nova requisição e fazemos login com o login e senha criamos 
        @body_one = 
        {
            sessions: {
                email: @email,
                password: '123456'
            }.to_json
        }
        @header_one = 
        {
            Accept: 'application/vnd.tasksmanager.v2',
            'Content-Type': 'application/json',
            #concatena os dados do usuário a cima para passar o token
            Authorization: "#{@criar.parsed_response['data']['attributes']['auth-token']}"      
            #Authorization:  "pode ser passado o token aqui caso seja fixo "
        }
        #url /session é para login de usuaários
        @login = Criar.post('/sessions', body: @body_one, headers: @header_one)
    end
    

end