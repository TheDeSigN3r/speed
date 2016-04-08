local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_china'] then
                lock_china = data[tostring(msg.to.id)]['settings']['lock_china']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_china == "yes" then
        send_large_msg(chat, 'You cannot use CHINA words here . Bye !')
        chat_del_user(chat, user, ok_cb, true)
    end
end
 
return {
  patterns = {
    "(去)",
    "(我)",
    "(饿)",
    "(日)",
    "(他)",
    "(有)",
    "(哦)",
    "(评)",
    "(啊)",
    "(是)",
    "(的)",
    "(分)",
    "(个",
    "(和)",
    "(就)",
    "(看)",
    "(了)",
    "(在)",
    "(小)",
    "(从)",
    "(不)",
    "(你)",
    "(吗)",
    "(去我饿日他有人说哦评啊上的分个和就看来在心从从来你吗)
  },
  run = run
}
--Copyright and edit; @behroozyaghi
--Persian Translate; @behroozyaghi
--ch : @nod32team
--کپی بدون ذکر منبع حرام است--
 
 
