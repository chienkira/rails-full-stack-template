class ExampleJob < ApplicationJob
  queue_as :default

  def perform(*_args)
    logger.info 'this is an example job'
  end
end
