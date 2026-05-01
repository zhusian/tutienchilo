local TungMOD = GameMain:GetMod("tung");
local time = 0;
local flag = 0;

if Gameplay then
    Gameplay.GameSpeed = 10.0
end

function TungMOD:OnStep(dt)
    if flag == 0 then
        time = time + dt;
        if time >= 5 then
            flag = 1;
            CS.GameMain.Instance.NoFog = true;
            CS.MapRender.Instance.Fog.enabled = false;
        end
    end
end
