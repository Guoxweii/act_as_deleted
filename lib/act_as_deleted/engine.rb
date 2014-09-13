module ActAsDeleted
  module Base
    extend ActiveSupport::Concern

    def self.included(base)
      base.send :include, InstanceMethods
    end

    module ClassMethods
      def act_as_deleted
        self.instance_eval do
          default_scope { where(deleted: "deleted") }
        end
      end
    end

    module InstanceMethods
      def show
        puts "a instance methods"
      end
    end
  end
end