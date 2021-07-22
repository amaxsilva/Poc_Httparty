describe 'Deletando uma requisção' do
    it 'delete' do
        @delete = Contato.delete('/contacts/45')
        puts @delete
         
    end

    

end