local function callback(Text)
end
 
local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback
 
if game.Workspace.FilteringEnabled == true then
    game.StarterGui:SetCore("SendNotification", {
    Title    = "Check Filter";
    Text     = "Filtering Enabled";
    Duration = "5";
    Callback = NotificationBindable;
    })
else
    if game.Workspace.FilteringEnabled == false then
       game.StarterGui:SetCore("SendNotification", {
       Title = "Check Filter";
       Text  = "Filtering Disabled";
        Duration = "5";
        Callback = NotificationBindable;
        }) 
    end
end
