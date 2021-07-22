module Criar
    include HTTParty
    #url base de contatos
    base_uri CONFIG['url_padrao']
    #opções do meu service
    format :json
    headers Accept: 'application/vnd.tasksmanager.v2',
                    'Content-Type': 'application/json'   
    
end
