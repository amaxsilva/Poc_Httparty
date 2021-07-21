describe 'efetuar um get', :respostas do
    it 'validando respostas' do
        @respostas = Contato.get('/contacts/156')
        #puts @respostas
        # puts @respostas.code 
        # expect(@respostas.code).to eql 200
      #puts @respostas.body
      #converte a string para formato json
      puts @respostas.parsed_response
      #acessa a variavel pai(date) e seu atributo
      puts  @respostas.parsed_response['data']['attributes']['name']
      expect(@respostas.parsed_response['data']['attributes']['name']).to eql 'TESTANDO RUBY Put'
      expect(@respostas.parsed_response['data']['attributes']['last-name']).to eql 'TESTANDO RUBY Put'
      expect(@respostas.parsed_response['data']['attributes']['email']).to eql 'TESTANDORUBYPut@gmail.com'
      expect(@respostas.parsed_response['data']['attributes']['age']).to eql 11

    end
    
end