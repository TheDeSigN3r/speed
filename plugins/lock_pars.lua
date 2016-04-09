local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_emoji'] then
                lock_emoji = data[tostring(msg.to.id)]['settings']['lock_emoji']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_emoji == "yes" then
        send_large_msg(chat, 'به دلیل  ارسال اموجی از گروه حذف شدید')
        chat_del_user(chat, user, ok_cb, true)
    end
end
 
return {
  patterns = {
    "(ص)",
    "(ث)",
    "(ق)",
    "(ف)",
    "(ع)",
    "(غ)",
    "(ه)",
    "(خ)",
    "(ح)",
    "(ج)",
    "(چ)",
    "(ش)",
    "(س)",
    "(ی)",
    "(ب)",
    "(ل)",
    "(ا)",
    "(ت)",
    "(ن)",
    "(م)",
    "(پ)",
    "(ط)",
    "(ز)",
    "(ر)",
    "(ژ)",
    "(د)",
    "(ذ)",
    "(و)",
    "(ک)",
    "(گ)",
    "(ء)",
    "(ئ)",
    "(ظ)",
  },
  run = run
}
--Copyright and edit; @behroozyaghi
--Persian Translate; @behroozyaghi
--ch : @nod32team
--کپی بدون ذکر منبع حرام است--
 
