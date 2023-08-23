require 'sneakers'

Sneakers.configure :timeout_job_after => 5,      # Maximal seconds to wait for job
  :amqp => 'amqp://admin:admin@172.20.0.4:5672',
  :prefetch => 10,                               # Grab 10 jobs together. Better speed.
  :threads => 10,                                # Threadpool size (good to match prefetch)
  :env => ENV.fetch('RAILS_ENV', 'development'), # Environment
  :durable => true,                              # Is queue durable?
  :ack => true,                                  # Must we acknowledge?
  :heartbeat => 2,                               # Keep a good connection with broker
  :exchange => 'sneakers',                       # AMQP exchange
  :hooks => {},                                  # before_fork/after_fork hooks
  :vhost => '/',
  :start_worker_delay => 10,
  :log_level => Logger::INFO
