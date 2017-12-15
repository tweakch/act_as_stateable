module ActiveRecord
  module Acts #:nodoc:
    module State #:nodoc:

      module ClassMethods
        def acts_as_list(options = {})
          configuration = { column: "state", mask: 0 }
          configuration.update(options) if options.is_a?(Hash)

          caller_class = self

          include ActiveRecord::Acts::State::InstanceMethods
        end
      end

      module InstanceMethods
        def do_something_useful
          true
        end

        def is_valid
          true
        end
      end
    end
  end
end