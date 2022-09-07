require_relative "./config/environment"
require_relative "./app/controllers/application_controller"

use Rack::JSONBodyParser

run ApplicationController