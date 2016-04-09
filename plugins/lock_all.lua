local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_all'] then
                lock_all = data[tostring(msg.to.id)]['settings']['lock_all']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_emoji == "yes" then
        send_large_msg(chat, 'به دلیل استفاده از دستورات حذف شدید')
        chat_del_user(chat, user, ok_cb, true)
    end
end
 
return {
  patterns = {
    "(lock link)",
    "(lock emoji)",
    "(settings)",
    "(id)",
    "(lock member)",
    "(newlink)",
    "(lock)",
    "(link)",
    "(unlock)",
    "(linkpv)",
    "(help)",
    "(teleseed)",
    "(kick)",
    "(ban)",
    "(unban)",
    "(set about)",
    "(setrules)",
    "(owner)",
    "(res)",
    "(info)",
    "(who)",
    "(modlist)",
    "(kickme)",
    "(promote)",
    "(demote)",
    "(about)",
    "(setphoto)",
  },
  run = run
}
--Copyright and edit; @behroozyaghi
--Persian Translate; @behroozyaghi
--ch : @nod32team
--کپی بدون ذکر منبع حرام است--
 
