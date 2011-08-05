# -*- coding: utf-8 -*-
require 'rubygems'
require 'sinatra'

get '/' do
  "this is a coffee server!"
end

get '/on' do
  "coffee server will be start to make coffee."
end

get '/off' do
  `/bin/Input.exe 0`
end

get '/warmUp' do
  "warming up..."
end

get '' do
  ""
end

