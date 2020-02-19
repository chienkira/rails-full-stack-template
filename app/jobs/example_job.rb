class ExampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "this is an example job"
  end
end
