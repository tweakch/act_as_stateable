ActiveSupport.on_load :active_record do
  extend ActiveRecord::Acts::State::ClassMethods
end