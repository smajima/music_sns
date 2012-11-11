module Regex
  USER_NAME = /^[0-9A-Za-z]{6,}$/
  PASSWORD = /^[0-9A-Za-z_@%]{6,}$/
  E_MAIL = /^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,4}$/
end
