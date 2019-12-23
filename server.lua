-- dead simple script which publishes some basic server info to http://ip:port/krp_playercount/ :)

SetHttpHandler(function(req, res)
	local numPlayers = GetNumPlayerIndices()
	local maxPlayers = GetConvar("sv_maxclients", "32")
	local serverName = GetConvar("sv_hostname", "K33N RP")

	res.send(json.encode({
		name = serverName,
		numPlayers = numPlayers,
		maxPlayers = maxPlayers
	}))

	return
end)