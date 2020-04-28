# frozen_string_literal: true

# Finds config file by file name.
# @param filename string.
def find_config_file(filename)
  root = Pathname.pwd
  until root.root?
    root.find do |path|
      return path.to_s if path.file? && (path.basename.to_s == filename)
    end
    root = root.parent
  end
  raise "Configuration file #{filename} not found!"
end

# Loads app config file by name.
# @param filename string.
# @return yaml.
def load_app_config_file(filename)
  config_file = find_config_file(filename)
  YAML.load_file(config_file)
end
