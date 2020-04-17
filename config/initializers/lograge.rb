Rails.application.configure do
  config.lograge.enabled = true

  config.lograge.ignore_actions = ['StatusController#index']
  config.lograge.formatter = Lograge::Formatters::Logstash.new
  config.lograge.keep_original_rails_log = true
  config.lograge.logger = ActiveSupport::Logger.new Rails.root.join('log/lograge.log')

  config.lograge.custom_payload do |controller|
    {
      host: controller.request.host,
      request_id: controller.request.request_id,
      remote_ip: controller.request.remote_ip,
      user_agent: controller.request.user_agent,
      referer: controller.request.referer
    }
  end

  config.lograge.custom_options = lambda do |event|
    exceptions = %w[controller action format authenticity_token]
    log_data = {
      host: event.payload[:host],
      request_id: event.payload[:request_id],
      remote_ip: event.payload[:remote_ip],
      user_agent: event.payload[:user_agent],
      referer: event.payload[:referer],
      exception: nil,
      params: event.payload[:params].except(*exceptions)
    }
    if (e = event.payload[:exception_object])
      exception_log = [e.message]
      exception_log += e.backtrace if e.backtrace.present?
      log_data[:exception] = exception_log.join("\n")
    end
    log_data
  end
end
