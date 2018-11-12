module Types
  class QueryType < Types::BaseObject
    field :data, String, null: false

    def data
      client = GraphqlClient.new('https://fakerql.com/graphql')
      client.execute(
        query:
        %{
          query {
            Product(id: "1"){
              name
            }
          }
        }
        ).parsed_response.to_json
    end
  end
end
