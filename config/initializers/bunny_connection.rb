# frozen_string_literal: true

require 'bunny'

BUNNY_CONFIG = {
  hostname: '172.20.0.4',
  username: 'admin',
  password: 'admin'
}.freeze

BUNNY_CONNECTION = Bunny.new(BUNNY_CONFIG)
BUNNY_CONNECTION.start
