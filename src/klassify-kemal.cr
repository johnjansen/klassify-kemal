require "./klassify-kemal/*"
require "kemal"
require "json"
require "redis"

public_folder "dist"
$redis = Redis.new

# Index
get "/" do |env|
  render "src/views/index.ecr"
end

get "/stats" do |env|
end

get "/labels" do |env|
end

get "/words/:label" do |env|
end

post "/train" do |env|
  text = env.params.json["text"]
  label = env.params.json["label"]
  {message: "Hede"}.to_json
end

post "/classify" do |env|
  text = env.params.json["text"]
end

# Websocket
ws "/ws" do |env|
end
