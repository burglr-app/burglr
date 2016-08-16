require 'rails_helper'
require 'rake'

Burglr::Application.load_tasks
Rake::Task['webpack:compile'].invoke
