local function run(msg)

    local data = load_data(_config.moderation.data)

     if data[tostring(msg.to.id)]['settings']['lock_china'] == 'yes' then


if not is_momod(msg) then


chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
    local msg = 'You cannot use CHINA words here . Bye ! '
   local receiver = msg.to.id
    send_large_msg('chat#id'..receiver, msgads.."\n", ok_cb, false)

      end
   end


return {
patterns = {
"[啊](.*)",
"[不](.*)",
"[从](.*)",
"[的](.*)",
"[饿](.*)",
"[分](.*)",
"[个](.*)",
"[和](.*)",
"[就](.*)",
"[看](.*)",
"[了](.*)",
"[吗](.*)",
"[你](.*)",
"[哦](.*)",
"[评](.*)",
"[去](.*)",
"[日](.*)",
"[是](.*)",
"[他](.*)",
"[有](.*)",
"[哦](.*)",
"[看](.*)",
"[小](.*)",
"[有](.*)",
"[在](.*)",
"[安排臭豆腐国际机场迷你脾气人生特别想](.*)",
}, 
run = run
}
end
