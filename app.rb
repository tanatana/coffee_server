# -*- coding: utf-8 -*-
require 'rubygems'
require 'sinatra'

get '/' do
  erb :index
end

get '/status' do
  erb :status
end

get '/pomp' do
  `./public/bin/Output 2`
  "pompOn"
end

get '/powerOn' do
  `./public/bin/Output 1`
  "pompOn"
end

get '/off' do
  `./public/bin/Output 0`
  "off"
end

get '/warmUp' do
  `./public/bin/PompStandby 2`
  "warming up..."
end
