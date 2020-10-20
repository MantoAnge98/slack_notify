require "slack-notify"
require 'clockwork'
# Write the process of sending a message to the slack here。

client = SlackNotify::Client.new(
  webhook_url: "https://hooks.slack.com/services/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",
  channel: "#général",
  username: "AngeBot",
  icon_url: "http://mydomain.com/myimage.png",
  icon_emoji: ":shipit:",
  link_names: 1
)

client.test

client.notify("Hello There!")
client.notify("Another message", "#channel2")
client.notify("Message", ["#channel1", "#channel2"])