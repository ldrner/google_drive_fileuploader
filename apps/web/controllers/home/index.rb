module Web
  module Controllers
    module Home
      class Index
        include Web::Action
        expose :title

        # def initialize(greeting: Greeting.new)
        #   @greeting = greeting
        # end

        def call(params)
          @title = 'Hello'
          # self.body = @greeting.message
        end
      end
    end
  end
end
