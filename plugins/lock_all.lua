local function run(msg)

    local data = load_data(_config.moderation.data)

     if data[tostring(msg.to.id)]['settings']['lock_all'] == 'yes' then


if not is_momod(msg) then


chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
    local msg = 'به دلیل استفاده از دستورات ربات از گروه حذف شدید'
   local receiver = msg.to.id
    send_large_msg('chat#id'..receiver, msgads.."\n", ok_cb, false)

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
"(aetphoto)",
}, 
run = run
}
end
