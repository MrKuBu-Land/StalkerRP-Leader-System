
-----------------------------------------------------
local CATEGORY_NAME  = "Лидер"
local gamemode_error = "The current gamemode is not stalkerrp"

---[Добавление в Долг]----------------------------------------------------------------------------

function ulx.dolgadd( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end
	
	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "user" then return DarkRP.notify(calling_ply, 1, 4, "Это не вольный сталкер!") end

	ULib.ucl.addUser( id, userInfo.allow, userInfo.deny, "Долг" )

	ulx.fancyLogAdmin( calling_ply, "#A added #T to group #s", target_ply, "Долг" )
end

local dolgadd = ulx.command( CATEGORY_NAME, "ulx dolgadd", ulx.dolgadd, "!dolgadd" )
dolgadd:addParam{ type=ULib.cmds.PlayerArg }
dolgadd:defaultAccess( ULib.ACCESS_SUPERADMIN )
dolgadd:help( "Приём игрока в Долг." )

--

function ulx.freeadd( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end
	
	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "user" then return DarkRP.notify(calling_ply, 1, 4, "Это не вольный сталкер!") end

	ULib.ucl.addUser( id, userInfo.allow, userInfo.deny, "Свобода" )

	ulx.fancyLogAdmin( calling_ply, "#A added #T to group #s", target_ply, "Свобода" )
end

local freeadd = ulx.command( CATEGORY_NAME, "ulx freeadd", ulx.freeadd, "!freeadd" )
freeadd:addParam{ type=ULib.cmds.PlayerArg }
freeadd:defaultAccess( ULib.ACCESS_SUPERADMIN )
freeadd:help( "Приём игрока в Свободу." )

--
function ulx.armyadd( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end
	
	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "user" then return DarkRP.notify(calling_ply, 1, 4, "Это не вольный сталкер!") end

	ULib.ucl.addUser( id, userInfo.allow, userInfo.deny, "Военные" )

	ulx.fancyLogAdmin( calling_ply, "#A added #T to group #s", target_ply, "Военные" )
end

local armyadd = ulx.command( CATEGORY_NAME, "ulx armyadd", ulx.armyadd, "!armyadd" )
armyadd:addParam{ type=ULib.cmds.PlayerArg }
armyadd:defaultAccess( ULib.ACCESS_SUPERADMIN )
armyadd:help( "Приём игрока в Военное подразделение." )

--
function ulx.torgadd( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end
	
	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "user" then return DarkRP.notify(calling_ply, 1, 4, "Это не вольный сталкер!") end

	ULib.ucl.addUser( id, userInfo.allow, userInfo.deny, "Торговцы" )

	ulx.fancyLogAdmin( calling_ply, "#A added #T to group #s", target_ply, "Торговцы" )
end

local torgadd = ulx.command( CATEGORY_NAME, "ulx torgadd", ulx.torgadd, "!torgadd" )
torgadd:addParam{ type=ULib.cmds.PlayerArg }
torgadd:defaultAccess( ULib.ACCESS_SUPERADMIN )
torgadd:help( "Приём игрока в Торговое Товарищество." )

--
function ulx.skyadd( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end
	
	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "user" then return DarkRP.notify(calling_ply, 1, 4, "Это не вольный сталкер!") end

	ULib.ucl.addUser( id, userInfo.allow, userInfo.deny, "Чистое Небо" )

	ulx.fancyLogAdmin( calling_ply, "#A added #T to group #s", target_ply, "Чистое Небо" )
end

local skyadd = ulx.command( CATEGORY_NAME, "ulx skyadd", ulx.skyadd, "!skyadd" )
skyadd:addParam{ type=ULib.cmds.PlayerArg }
skyadd:defaultAccess( ULib.ACCESS_SUPERADMIN )
skyadd:help( "Приём игрока в Чистое Небо." )


--
function ulx.sciadd( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end
	
	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "user" then return DarkRP.notify(calling_ply, 1, 4, "Это не вольный сталкер!") end

	ULib.ucl.addUser( id, userInfo.allow, userInfo.deny, "Ученый" )

	ulx.fancyLogAdmin( calling_ply, "#A added #T to group #s", target_ply, "Ученый" )
end

local sciadd = ulx.command( CATEGORY_NAME, "ulx sciadd", ulx.sciadd, "!sciadd" )
sciadd:addParam{ type=ULib.cmds.PlayerArg }
sciadd:defaultAccess( ULib.ACCESS_SUPERADMIN )
sciadd:help( "Приём игрока в Ученые." )

----

function ulx.naemadd( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end
	
	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "user" then return DarkRP.notify(calling_ply, 1, 4, "Это не вольный сталкер!") end

	ULib.ucl.addUser( id, userInfo.allow, userInfo.deny, "Наемники" )

	ulx.fancyLogAdmin( calling_ply, "#A added #T to group #s", target_ply, "Наемники" )
end

local naemadd = ulx.command( CATEGORY_NAME, "ulx naemadd", ulx.naemadd, "!naemadd" )
naemadd:addParam{ type=ULib.cmds.PlayerArg }
naemadd:defaultAccess( ULib.ACCESS_SUPERADMIN )
naemadd:help( "Приём игрока в Наёмники." )

-----
function ulx.swordadd( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end
	
	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "user" then return DarkRP.notify(calling_ply, 1, 4, "Это не вольный сталкер!") end

	ULib.ucl.addUser( id, userInfo.allow, userInfo.deny, "Меч" )

	ulx.fancyLogAdmin( calling_ply, "#A added #T to group #s", target_ply, "Меч" )
end

local swordadd = ulx.command( CATEGORY_NAME, "ulx swordadd", ulx.swordadd, "!swordadd" )
swordadd:addParam{ type=ULib.cmds.PlayerArg }
swordadd:defaultAccess( ULib.ACCESS_SUPERADMIN )
swordadd:help( "Приём игрока в Меч." )


function ulx.congladd( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end
	
	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "user" then return DarkRP.notify(calling_ply, 1, 4, "Это не вольный сталкер!") end

	ULib.ucl.addUser( id, userInfo.allow, userInfo.deny, "Анклав" )

	ulx.fancyLogAdmin( calling_ply, "#A added #T to group #s", target_ply, "Анклав" )
end

local congladd = ulx.command( CATEGORY_NAME, "ulx congladd", ulx.congladd, "!congladd" )
congladd:addParam{ type=ULib.cmds.PlayerArg }
congladd:defaultAccess( ULib.ACCESS_SUPERADMIN )
congladd:help( "Приём игрока в Анклав." )

------------

function ulx.conglsciadd( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end
	
	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "user" then return DarkRP.notify(calling_ply, 1, 4, "Это не вольный сталкер!") end

	ULib.ucl.addUser( id, userInfo.allow, userInfo.deny, "Офицер Анклава" )

	ulx.fancyLogAdmin( calling_ply, "#A added #T to group #s", target_ply, "Офицер Анклава" )
end

local conglsciadd = ulx.command( CATEGORY_NAME, "ulx conglsciadd", ulx.conglsciadd, "!conglsciadd" )
conglsciadd:addParam{ type=ULib.cmds.PlayerArg }
conglsciadd:defaultAccess( ULib.ACCESS_SUPERADMIN )
conglsciadd:help( "Приём игрока в Анклав (ученые)." )

---------------------
function ulx.conglrazvadd( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end
	
	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "user" then return DarkRP.notify(calling_ply, 1, 4, "Это не вольный сталкер!") end

	ULib.ucl.addUser( id, userInfo.allow, userInfo.deny, "Курсант Анклава" )

	ulx.fancyLogAdmin( calling_ply, "#A added #T to group #s", target_ply, "Курсант Анклава" )
end

local conglrazvadd = ulx.command( CATEGORY_NAME, "ulx conglrazvadd", ulx.conglrazvadd, "!conglrazvadd" )
conglrazvadd:addParam{ type=ULib.cmds.PlayerArg }
conglrazvadd:defaultAccess( ULib.ACCESS_SUPERADMIN )
conglrazvadd:help( "Приём игрока в Анклав." )

---------

function ulx.grehadd( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end
	
	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "user" then return DarkRP.notify(calling_ply, 1, 4, "Это не вольный сталкер!") end

	ULib.ucl.addUser( id, userInfo.allow, userInfo.deny, "Грех" )

	ulx.fancyLogAdmin( calling_ply, "#A added #T to group #s", target_ply, "Грех" )
end

local grehadd = ulx.command( CATEGORY_NAME, "ulx grehadd", ulx.grehadd, "!grehadd" )
grehadd:addParam{ type=ULib.cmds.PlayerArg }
grehadd:defaultAccess( ULib.ACCESS_SUPERADMIN )
grehadd:help( "Приём игрока в Грех." )
--------------------------------
function ulx.bandadd( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end
	
	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "user" then return DarkRP.notify(calling_ply, 1, 4, "Это не вольный сталкер!") end

	ULib.ucl.addUser( id, userInfo.allow, userInfo.deny, "Бандиты" )

	ulx.fancyLogAdmin( calling_ply, "#A added #T to group #s", target_ply, "Бандиты" )
end

local bandadd = ulx.command( CATEGORY_NAME, "ulx bandadd", ulx.bandadd, "!bandadd" )
bandadd:addParam{ type=ULib.cmds.PlayerArg }
bandadd:defaultAccess( ULib.ACCESS_SUPERADMIN )
bandadd:help( "Приём игрока в Банду." )
--------------------------------------------------------------
function ulx.chaosadd( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end
	
	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "user" then return DarkRP.notify(calling_ply, 1, 4, "Это не вольный сталкер!") end

	ULib.ucl.addUser( id, userInfo.allow, userInfo.deny, "Посланник Хаоса" )

	ulx.fancyLogAdmin( calling_ply, "#A added #T to group #s", target_ply, "Посланник Хаоса" )
end

local chaosadd = ulx.command( CATEGORY_NAME, "ulx chaosadd", ulx.chaosadd, "!chaosadd" )
chaosadd:addParam{ type=ULib.cmds.PlayerArg }
chaosadd:defaultAccess( ULib.ACCESS_SUPERADMIN )
chaosadd:help( "Приём игрока в ряды Посланников." )
----------------------------------------------------------
function ulx.stalkadd( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end
	
	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "user" then return DarkRP.notify(calling_ply, 1, 4, "Это не вольный сталкер!") end

	ULib.ucl.addUser( id, userInfo.allow, userInfo.deny, "Сталкер" )

	ulx.fancyLogAdmin( calling_ply, "#A added #T to group #s", target_ply, "Сталкер" )
end

local stalkadd = ulx.command( CATEGORY_NAME, "ulx stalkadd", ulx.stalkadd, "!stalkadd" )
stalkadd:addParam{ type=ULib.cmds.PlayerArg }
stalkadd:defaultAccess( ULib.ACCESS_SUPERADMIN )
stalkadd:help( "Приём игрока в ряды Сталкеров." )
---------------------------------------------
function ulx.alianceadd( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end
	
	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "user" then return DarkRP.notify(calling_ply, 1, 4, "Это не вольный сталкер!") end

	ULib.ucl.addUser( id, userInfo.allow, userInfo.deny, "Альянс" )

	ulx.fancyLogAdmin( calling_ply, "#A added #T to group #s", target_ply, "Альянс" )
end

local alianceadd = ulx.command( CATEGORY_NAME, "ulx alianceadd", ulx.alianceadd, "!alianceadd" )
alianceadd:addParam{ type=ULib.cmds.PlayerArg }
alianceadd:defaultAccess( ULib.ACCESS_SUPERADMIN )
alianceadd:help( "Приём игрока в ряды Альянса." )

---[Выгнать из группировки]----------------------------------------------------------------------------

function ulx.dolgdemote( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end

	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "Долг" then return DarkRP.notify(calling_ply, 1, 4, "Этот игрок не в группировке Долг!") end
	
	ULib.ucl.removeUser( id )

	ulx.fancyLogAdmin( calling_ply, "#A demoted #T from group #s", target_ply, "Долг" )
end

local dolgdemote = ulx.command( CATEGORY_NAME, "ulx dolgdemote", ulx.dolgdemote, "!dolgdemote" )
dolgdemote:addParam{ type=ULib.cmds.PlayerArg }
dolgdemote:defaultAccess( ULib.ACCESS_SUPERADMIN )
dolgdemote:help( "Исключение игрока из группировки." )

--

function ulx.naemdemote( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end

	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "Наемники" then return DarkRP.notify(calling_ply, 1, 4, "Этот игрок не в группировке Наемники!") end
	
	ULib.ucl.removeUser( id )

	ulx.fancyLogAdmin( calling_ply, "#A demoted #T from group #s", target_ply, "Наемники" )
end

local naemdemote = ulx.command( CATEGORY_NAME, "ulx naemdemote", ulx.naemdemote, "!naemdemote" )
naemdemote:addParam{ type=ULib.cmds.PlayerArg }
naemdemote:defaultAccess( ULib.ACCESS_SUPERADMIN )
naemdemote:help( "Исключение игрока из группировки." )

--
function ulx.freedemote( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end

	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "Свобода" then return DarkRP.notify(calling_ply, 1, 4, "Этот игрок не в группировке Свобода!") end
	
	ULib.ucl.removeUser( id )

	ulx.fancyLogAdmin( calling_ply, "#A demoted #T from group #s", target_ply, "Свобода" )
end

local freedemote = ulx.command( CATEGORY_NAME, "ulx freedemote", ulx.freedemote, "!freedemote" )
freedemote:addParam{ type=ULib.cmds.PlayerArg }
freedemote:defaultAccess( ULib.ACCESS_SUPERADMIN )
freedemote:help( "Исключение игрока из группировки." )

--
function ulx.armydemote( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end

	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "Военные" then return DarkRP.notify(calling_ply, 1, 4, "Этот игрок не в Военном подразделении!") end
	
	ULib.ucl.removeUser( id )

	ulx.fancyLogAdmin( calling_ply, "#A demoted #T from group #s", target_ply, "Военные" )
end

local armydemote = ulx.command( CATEGORY_NAME, "ulx armydemote", ulx.armydemote, "!armydemote" )
armydemote:addParam{ type=ULib.cmds.PlayerArg }
armydemote:defaultAccess( ULib.ACCESS_SUPERADMIN )
armydemote:help( "Исключение игрока из группировки." )

--
function ulx.torgdemote( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end

	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "Торговцы" then return DarkRP.notify(calling_ply, 1, 4, "Этот игрок не в Торговом Товариществе!") end
	
	ULib.ucl.removeUser( id )

	ulx.fancyLogAdmin( calling_ply, "#A demoted #T from group #s", target_ply, "Торговцы" )
end

local torgdemote = ulx.command( CATEGORY_NAME, "ulx torgdemote", ulx.torgdemote, "!torgdemote" )
torgdemote:addParam{ type=ULib.cmds.PlayerArg }
torgdemote:defaultAccess( ULib.ACCESS_SUPERADMIN )
torgdemote:help( "Исключение игрока из группировки." )

--
function ulx.skydemote( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end

	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "Чистое Небо" then return DarkRP.notify(calling_ply, 1, 4, "Этот игрок не в Чистом небе!") end
	
	ULib.ucl.removeUser( id )

	ulx.fancyLogAdmin( calling_ply, "#A demoted #T from group #s", target_ply, "Чистое Небо" )
end

local skydemote = ulx.command( CATEGORY_NAME, "ulx skydemote", ulx.skydemote, "!skydemote" )
skydemote:addParam{ type=ULib.cmds.PlayerArg }
skydemote:defaultAccess( ULib.ACCESS_SUPERADMIN )
skydemote:help( "Исключение игрока из группировки." )

--
function ulx.scidemote( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end

	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "Ученый" then return DarkRP.notify(calling_ply, 1, 4, "Этот игрок не Ученый!") end
	
	ULib.ucl.removeUser( id )

	ulx.fancyLogAdmin( calling_ply, "#A demoted #T from group #s", target_ply, "Ученый" )
end

local scidemote = ulx.command( CATEGORY_NAME, "ulx scidemote", ulx.scidemote, "!scidemote" )
scidemote:addParam{ type=ULib.cmds.PlayerArg }
scidemote:defaultAccess( ULib.ACCESS_SUPERADMIN )
scidemote:help( "Исключение игрока из группировки." )

---
function ulx.sworddemote( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end

	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "Меч" then return DarkRP.notify(calling_ply, 1, 4, "Этот игрок не состоит в 'Мече'!") end
	
	ULib.ucl.removeUser( id )

	ulx.fancyLogAdmin( calling_ply, "#A demoted #T from group #s", target_ply, "Меч" )
end

local sworddemote = ulx.command( CATEGORY_NAME, "ulx sworddemote", ulx.sworddemote, "!sworddemote" )
sworddemote:addParam{ type=ULib.cmds.PlayerArg }
sworddemote:defaultAccess( ULib.ACCESS_SUPERADMIN )
sworddemote:help( "Исключение игрока из группировки." )

----

function ulx.congldemote( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end

	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "Анклав" then return DarkRP.notify(calling_ply, 1, 4, "Этот игрок не состоит в Анклаве!") end
	
	ULib.ucl.removeUser( id )

	ulx.fancyLogAdmin( calling_ply, "#A demoted #T from group #s", target_ply, "Анклав" )
end


local congldemote = ulx.command( CATEGORY_NAME, "ulx congldemote", ulx.congldemote, "!congldemote" )
congldemote:addParam{ type=ULib.cmds.PlayerArg }
congldemote:defaultAccess( ULib.ACCESS_SUPERADMIN )
congldemote:help( "Исключение игрока из группировки." )

--------

function ulx.conglscidemote( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end

	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "Офицер Анклава" then return DarkRP.notify(calling_ply, 1, 4, "Этот игрок не состоит в Анклаве!") end
	
	ULib.ucl.removeUser( id )

	ulx.fancyLogAdmin( calling_ply, "#A demoted #T from group #s", target_ply, "Офицер Анклава" )
end

local conglscidemote = ulx.command( CATEGORY_NAME, "ulx conglscidemote", ulx.conglscidemote, "!conglscidemote" )
conglscidemote:addParam{ type=ULib.cmds.PlayerArg }
conglscidemote:defaultAccess( ULib.ACCESS_SUPERADMIN )
conglscidemote:help( "Исключение игрока из группировки." )

---------
function ulx.conglrazvdemote( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end

	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "Курсант Анклава" then return DarkRP.notify(calling_ply, 1, 4, "Этот игрок не состоит в Анклаве!") end
	
	ULib.ucl.removeUser( id )

	ulx.fancyLogAdmin( calling_ply, "#A demoted #T from group #s", target_ply, "Курсант Анклава" )
end

local conglrazvdemote = ulx.command( CATEGORY_NAME, "ulx conglrazvdemote", ulx.conglrazvdemote, "!conglrazvdemote" )
conglrazvdemote:addParam{ type=ULib.cmds.PlayerArg }
conglrazvdemote:defaultAccess( ULib.ACCESS_SUPERADMIN )
conglrazvdemote:help( "Исключение игрока из группировки." )

--------------
function ulx.grehdemote( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end

	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "Грех" then return DarkRP.notify(calling_ply, 1, 4, "Этот игрок не состоит в Грехе!") end
	
	ULib.ucl.removeUser( id )

	ulx.fancyLogAdmin( calling_ply, "#A demoted #T from group #s", target_ply, "Грех" )
end

local grehdemote = ulx.command( CATEGORY_NAME, "ulx grehdemote", ulx.grehdemote, "!grehdemote" )
grehdemote:addParam{ type=ULib.cmds.PlayerArg }
grehdemote:defaultAccess( ULib.ACCESS_SUPERADMIN )
grehdemote:help( "Исключение игрока из группировки." )
------------------------
function ulx.banddemote( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end

	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "Бандиты" then return DarkRP.notify(calling_ply, 1, 4, "Этот игрок не состоит в Бандитах!") end
	
	ULib.ucl.removeUser( id )

	ulx.fancyLogAdmin( calling_ply, "#A demoted #T from group #s", target_ply, "Бандиты" )
end

local banddemote = ulx.command( CATEGORY_NAME, "ulx banddemote", ulx.banddemote, "!banddemote" )
banddemote:addParam{ type=ULib.cmds.PlayerArg }
banddemote:defaultAccess( ULib.ACCESS_SUPERADMIN )
banddemote:help( "Исключение игрока из группировки." )
-----------------------------------------
function ulx.chaosdemote( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end

	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "Посланник Хаоса" then return DarkRP.notify(calling_ply, 1, 4, "Этот игрок не состоит в Посланниках!") end
	
	ULib.ucl.removeUser( id )

	ulx.fancyLogAdmin( calling_ply, "#A demoted #T from group #s", target_ply, "Посланник Хаоса" )
end

local chaosdemote = ulx.command( CATEGORY_NAME, "ulx chaosdemote", ulx.chaosdemote, "!chaosdemote" )
chaosdemote:addParam{ type=ULib.cmds.PlayerArg }
chaosdemote:defaultAccess( ULib.ACCESS_SUPERADMIN )
chaosdemote:help( "Исключение игрока из группировки." )
-----------------------------------------
function ulx.stalkerdemote( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end

	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "Сталкер" then return DarkRP.notify(calling_ply, 1, 4, "Этот игрок не состоит в Сталкерах!") end
	
	ULib.ucl.removeUser( id )

	ulx.fancyLogAdmin( calling_ply, "#A demoted #T from group #s", target_ply, "Сталкер" )
end

local stalkerdemote = ulx.command( CATEGORY_NAME, "ulx stalkerdemote", ulx.stalkerdemote, "!stalkerdemote" )
stalkerdemote:addParam{ type=ULib.cmds.PlayerArg }
stalkerdemote:defaultAccess( ULib.ACCESS_SUPERADMIN )
stalkerdemote:help( "Исключение игрока из группировки." )
---------------------------------------------
function ulx.aliancedemote( calling_ply, target_ply )
	local userInfo = ULib.ucl.authed[ target_ply:UniqueID() ]

	local id = ULib.ucl.getUserRegisteredID( target_ply )
	if not id then id = target_ply:SteamID() end

	local players = player.GetAll()
	for _, player in ipairs( players ) do
		if player == target_ply then target_ply = player end
	end
	if target_ply:GetUserGroup() ~= "Альянс" then return DarkRP.notify(calling_ply, 1, 4, "Этот игрок не состоит в Альянсе!") end
	
	ULib.ucl.removeUser( id )

	ulx.fancyLogAdmin( calling_ply, "#A demoted #T from group #s", target_ply, "Альянс" )
end

local aliancedemote = ulx.command( CATEGORY_NAME, "ulx aliancedemote", ulx.aliancedemote, "!aliancedemote" )
aliancedemote:addParam{ type=ULib.cmds.PlayerArg }
aliancedemote:defaultAccess( ULib.ACCESS_SUPERADMIN )
aliancedemote:help( "Исключение игрока из группировки." )