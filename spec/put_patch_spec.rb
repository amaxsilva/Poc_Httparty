describe 'fazer requisição' do
    context 'para alterar dados com' do
        #put precisa de todos os argumentos para poder consolidar as alterações
        it 'put' do
            @body_put = 
            {
                "id": 171,
                "name": "Amax",
                "last-name": "Kerickson",
                "email": "pocruby@gmail.com",
                "age": 25,
                "phone": "555493034061",
                "address": "Vou precisar aprender appium com ruby e to ferrado",
                "state": "Httparty",
                "city": "API e APPIUM"
            }.to_json

           @requisicao_put = Contato.put('/contacts/171', body: @body_put)
           puts @requisicao_put              
        end
        #patch não precisa de todos os argumentos para poder consolidar as alterações, basta repassar os argumentos que se deseja alterar
        it 'patch' do
            @body_patch = 
            {
                "id": 164,
                "name": "Amax",
                "last-name": "Null",
                "email": "pocruby.api@gmail.com"
            }.to_json

           @requisicao_patch = Contato.put('/contacts/164', body: @body_patch)
           puts @requisicao_patch
        end
        
    
    end
 
end