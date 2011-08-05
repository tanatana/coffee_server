# -*- coding: utf-8 -*-
require 'rubygems'
require 'sinatra'

get '/' do
  "this is a coffee server!"
end

get '/status' do
  status = `./public/bin/Input`
  "No device" if status == 204
  "there is no cup" if status == 40
  "there is cup" if status == 56
end

get '/pompOn' do
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
