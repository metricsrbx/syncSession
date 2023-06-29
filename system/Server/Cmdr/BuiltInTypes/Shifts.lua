local ReplicatedStorage = game:GetService('ReplicatedStorage')
local BindableFunction = ReplicatedStorage:WaitForChild('GetLiveSessions')
return function(p1)
	local cards = BindableFunction:Invoke('Shifts')
	local tbl = {}
	for i, v in pairs(cards) do
		table.insert(tbl, v)
	end;
	p1:RegisterType("shifts", p1.Cmdr.Util.MakeEnumType("Shifts", tbl));
end;


