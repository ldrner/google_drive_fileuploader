module Web
  module Controllers
    module Home
      class Login
        include Web::Action
        expose :title

        def call(params)
          @title = 'Hello Login'
        end
      end
    end
  end
end
