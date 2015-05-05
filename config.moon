import config from require "lazuli.config"
-- TODO: copy this to custom_config.moon and change the passwords

config {"development","test","production"},->
  set "appname", "KomischFarben"

config {"development","test"}, ->
  postgres ->
    database "komischfarben2_dev"
    password "<EDIT THIS>"
    backend "pgmoon" -- see https://github.com/leafo/lapis/issues/283
  session_name "lazuli_komischfarben2_session_dev"
  secret "12345"
  enable_console false
  enable_web_migration false

config "production", ->
  postgres ->
    database "komischfarben2"
    password "<EDIT THIS>"
    backend "pgmoon" -- see https://github.com/leafo/lapis/issues/283
  port 8081 -- EDIT THIS
  session_name "lazuli_komischfarben2_session"
  secret "<EDIT THIS>"
  enable_console false
  enable_web_migration false
