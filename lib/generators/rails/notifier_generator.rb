module Rails
  module Generators
    class NotifierGenerator < NamedBase
      source_root File.expand_path("../templates", __FILE__)
      check_class_collision suffix: "Notifier"

      def create_notifier_file
        template "notifier.tt", File.join("app/notifiers", class_path, "#{file_name}_notifier.rb")
      end

      hook_for :test_framework
    end
  end
end
