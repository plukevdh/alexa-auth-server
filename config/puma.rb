threads 2, ENV.fetch("WEB_MAX_THREADS", 5).to_i
workers ENV.fetch("PROCESSOR_COUNT", 2).to_i

bind 'tcp://0.0.0.0:3000'

preload_app!
