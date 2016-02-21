class Settings < Settingslogic
  source "config/panel.yml"
  namespace ENV['ENV']
end
