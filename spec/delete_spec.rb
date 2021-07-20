describe 'Deletando uma requisção' do
    it 'delete' do
        @delete = Contato.delete('/contacts/19')
        puts @delete
         
    end

    

end