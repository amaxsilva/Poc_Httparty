describe 'fazer uma requisição' do
    it 'get' do
        #se a gente não usasse o modulo se chamaria o httparty com get assim
        #  @primeira_opcao = HTTParty.get('https://api-de-tarefas.herokuapp.com/contacts/164')
        # puts @primeira_opcao

            @melhor_opcao = Contato.get('/contacts/164')
            puts @melhor_opcao
    end
end