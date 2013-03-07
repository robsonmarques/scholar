# Add a new rake test task... E.g., rake test:acceptance, below everything else in that file...
namespace :test do
  desc "Test acceptance source"
  Rake::TestTask.new(:acceptance) do |t|
    t.libs << "test"
    t.pattern = 'test/acceptance/*_test.rb'
    t.verbose = false
  end
end

lib_task = Rake::Task["test:acceptance"]
test_task = Rake::Task[:test]
test_task.enhance { lib_task.invoke }