# frozen_string_literal: true
module GraphQL
  class Schema
    class Directive < GraphQL::Schema::Member
      class Fake < GraphQL::Schema::Directive
        description "Signals graphql-faker to use a particular helper"
        locations(GraphQL::Schema::Directive::FIELD_DEFINITION, GraphQL::Schema::Directive::ENUM_VALUE)

        helper_description = "Signals which helper to use from the list of helpers here: https://github.com/marak/Faker.js/"

        argument :helper, String, helper_description, default_value: nil, required: false
        default_directive true
      end
    end
  end
end
