
# Given sample curl to get riotSchmick's data.
curl --request GET 'https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/RiotSchmick?api_key=487bc81a-de73-4d2d-b172-a0dfd6a401d0' --include

# These are commented out to not have the half with the ' give me shit...

# This is the beginning of the API request..
# You need to supplement this with a well formed request with the API key as query string.
  # curl --request GET 'https://na.api.pvp.net/

#Here is my api key as a query string
  # ?api_key=487bc81a-de73-4d2d-b172-a0dfd6a401d0' --include


# Not working 404...
# curl --request GET 'https://na.api.pvp.net/api/lol/{na}/v1.3/stats/by-summoner/{zero400}/ranked?api_key=15980773-67a9-4fcb-997f-27c8eb8e69bc' --include

# curl --request GET 'https://global.api.pvp.net/api/lol/static-data/na/v1.2/champion/41?champData=image&api_key=15980773-67a9-4fcb-997f-27c8eb8e69bc' --include


# Getting annie specifically. STATS!
curl --request GET 'https://na.api.pvp.net/api/lol/static-data/{na}/v1.2/champion/{1}?champData=stats&api_key=15980773-67a9-4fcb-997f-27c8eb8e69bc' --include








test = '{"id":1,"key":"Annie","name":"Annie","title":"the Dark Child","stats":{"armor":12.5,"armorperlevel":4.0,"attackdamage":48.0,"attackdamageperlevel":2.625,"attackrange":625.0,"attackspeedoffset":0.08,"attackspeedperlevel":1.36,"crit":0.0,"critperlevel":0.0,"hp":384.0,"hpperlevel":76.0,"hpregen":4.5,"hpregenperlevel":0.55,"movespeed":335.0,"mp":250.0,"mpperlevel":50.0,"mpregen":6.9,"mpregenperlevel":0.6,"spellblock":30.0,"spellblockperlevel":0.0}}'

require 'json'
champs = JSON.parse(test)
new_obj["name"]