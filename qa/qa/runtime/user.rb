module QA
  module Runtime
    module User
      extend self

      def default_name
        'root'
      end

      def name
        Runtime::Env.user_username || default_name
      end

      def password
        Runtime::Env.user_password || '5iveL!fe'
      end

      def ldap_user?
        Runtime::Env.user_type == 'ldap'
      end
    end
  end
end
