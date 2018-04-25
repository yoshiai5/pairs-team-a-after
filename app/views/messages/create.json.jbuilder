json.id               @message.id
json.user_id          @message.user.id
json.content          @message.content
json.image            @message.image_url
json.user_name        @message.user.nickname
json.date             format_posted_time(@message.created_at)
