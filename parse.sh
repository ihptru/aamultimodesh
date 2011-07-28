#!/bin/bash

# Copyright 2011 Popov Igor
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

WAY="/var/svr/mm/var/won_matches.txt"  #using won_matches to get id and score; change when script path is changed
NAMEBASE="./namebase.txt" #here namebase is built
WON_ROUNDS="/var/svr/mm/var/won_rounds.txt"

mode_4teamctf() {
echo "LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "SP_LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "CYCLE_RUBBER -1"
sleep 3
cat /root/tron/servers/mm/main/4teamctf.cfg > /root/tron/servers/mm/main/config/settings_custom.cfg
kill -1 `ps aux | grep "run-mm" | grep "armagetronad-dedicated" | awk '{print $2}'`
echo "CONSOLE_MESSAGE \n0x0078ffNext game mode is 0xffff004 Team Capture The Flag\n"
echo "SERVER_NAME 0x00ff06tru's 0xff4e00{0xc6ff004 team ctf0xff4e00} 0x0078ffmultimode" >> /var/svr/mm/cmds.txt
>mode.temp # clear mode.temp so it is possible to change game mode again.
echo "mode_4teamctf" > current_mode.temp
BIT="0" #clear for voting expiration part
}
mode_lrctf() {
echo "LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "SP_LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "CYCLE_RUBBER -1"
sleep 3
cat /root/tron/servers/mm/main/lrctf.cfg > /root/tron/servers/mm/main/config/settings_custom.cfg
kill -1 `ps aux | grep "run-mm" | grep "armagetronad-dedicated" | awk '{print $2}'`
echo "CONSOLE_MESSAGE \n0x0078ffNext game mode is 0xffff00Low Rubber Capture The Flag\n"
echo "SERVER_NAME 0x00ff06tru's 0xff4e00{0xc6ff00low rubber ctf0xff4e00} 0x0078ffmultimode" >> /var/svr/mm/cmds.txt
>mode.temp # clear mode.temp so it is possible to change game mode again.
echo "mode_lrctf" > current_mode.temp
BIT="0" #clear for voting expiration part
}
mode_wst() {
echo "LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "SP_LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "CYCLE_RUBBER -1"
sleep 3
cat /root/tron/servers/mm/main/wst.cfg > /root/tron/servers/mm/main/config/settings_custom.cfg
kill -1 `ps aux | grep "run-mm" | grep "armagetronad-dedicated" | awk '{print $2}'`
echo "CONSOLE_MESSAGE \n0x0078ffNext game mode is 0xffff00WST\n"
echo "SERVER_NAME 0x00ff06tru's 0xff4e00{0xc6ff00wst0xff4e00} 0x0078ffmultimode" >> /var/svr/mm/cmds.txt
>mode.temp # clear mode.temp so it is possible to change game mode again.
echo "mode_wst" > current_mode.temp
BIT="0" #clear for voting expiration part
}
mode_wc() {
echo "LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "SP_LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "CYCLE_RUBBER -1"
sleep 3
cat /root/tron/servers/mm/main/wildcat.cfg > /root/tron/servers/mm/main/config/settings_custom.cfg
kill -1 `ps aux | grep "run-mm" | grep "armagetronad-dedicated" | awk '{print $2}'`
echo "CONSOLE_MESSAGE \n0x0078ffNext game mode is 0xffff00Wildcat\n"
echo "SERVER_NAME 0x00ff06tru's 0xff4e00{0xc6ff00wc0xff4e00} 0x0078ffmultimode" >> /var/svr/mm/cmds.txt
>mode.temp # clear mode.temp so it is possible to change game mode again.
echo "mode_wc" > current_mode.temp
BIT="0" #clear for voting expiration part
}
mode_tori() {
echo "LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "SP_LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "CYCLE_RUBBER -1"
sleep 3
cat /root/tron/servers/mm/main/tori-kumi.cfg > /root/tron/servers/mm/main/config/settings_custom.cfg
kill -1 `ps aux | grep "run-mm" | grep "armagetronad-dedicated" | awk '{print $2}'`
echo "CONSOLE_MESSAGE \n0x0078ffNext game mode is 0xffff00Tori-Kumi\n"
echo "SERVER_NAME 0x00ff06tru's 0xff4e00{0xc6ff00tori0xff4e00} 0x0078ffmultimode" >> /var/svr/mm/cmds.txt
>mode.temp # clear mode.temp so it is possible to change game mode again.
echo "mode_tori" > current_mode.temp
BIT="0" #clear for voting expiration part
}
mode_fc() {
echo "LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "SP_LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "CYCLE_RUBBER -1"
sleep 3
cat /root/tron/servers/mm/main/fc.cfg > /root/tron/servers/mm/main/config/settings_custom.cfg
kill -1 `ps aux | grep "run-mm" | grep "armagetronad-dedicated" | awk '{print $2}'`
echo "CONSOLE_MESSAGE \n0x0078ffNext game mode is 0xffff00Fight Club\n"
echo "SERVER_NAME 0x00ff06tru's 0xff4e00{0xc6ff00fc0xff4e00} 0x0078ffmultimode" >> /var/svr/mm/cmds.txt
>mode.temp # clear mode.temp so it is possible to change game mode again.
echo "mode_fc" > current_mode.temp
BIT="0" #clear for voting expiration part
}
mode_ctfs() {
echo "LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "SP_LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "CYCLE_RUBBER -1"
sleep 3
cat /root/tron/servers/mm/main/ctfs.cfg > /root/tron/servers/mm/main/config/settings_custom.cfg
kill -1 `ps aux | grep "run-mm" | grep "armagetronad-dedicated" | awk '{print $2}'`
echo "CONSOLE_MESSAGE \n0x0078ffNext game mode is 0xffff00CTFS\n"
echo "SERVER_NAME 0x00ff06tru's 0xff4e00{0xc6ff00ctfs0xff4e00} 0x0078ffmultimode" >> /var/svr/mm/cmds.txt
>mode.temp # clear mode.temp so it is possible to change game mode again.
echo "mode_ctfs" > current_mode.temp
BIT="0" #clear for voting expiration part
}
mode_cap() {
echo "LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "SP_LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "CYCLE_RUBBER -1"
sleep 3
cat /root/tron/servers/mm/main/cap.cfg > /root/tron/servers/mm/main/config/settings_custom.cfg
kill -1 `ps aux | grep "run-mm" | grep "armagetronad-dedicated" | awk '{print $2}'`
echo "CONSOLE_MESSAGE \n0x0078ffNext game mode is 0xffff00Crosseyed and Painless\n"
echo "SERVER_NAME 0x00ff06tru's 0xff4e00{0xc6ff00cap0xff4e00} 0x0078ffmultimode" >> /var/svr/mm/cmds.txt
>mode.temp # clear mode.temp so it is possible to change game mode again.
echo "mode_cap" > current_mode.temp
BIT="0" #clear for voting expiration part
}
mode_df() {
echo "LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "SP_LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "CYCLE_RUBBER -1"
sleep 3
cat /root/tron/servers/mm/main/df.cfg > /root/tron/servers/mm/main/config/settings_custom.cfg
kill -1 `ps aux | grep "run-mm" | grep "armagetronad-dedicated" | awk '{print $2}'`
echo "CONSOLE_MESSAGE \n0x0078ffNext game mode is 0xffff00Loose DF\n"
echo "SERVER_NAME 0x00ff06tru's 0xff4e00{0xc6ff00df0xff4e00} 0x0078ffmultimode" >> /var/svr/mm/cmds.txt
>mode.temp # clear mode.temp so it is possible to change game mode again.
echo "mode_df" > current_mode.temp
BIT="0" #clear for voting expiration part
}
mode_fort() {
echo "LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "SP_LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "CYCLE_RUBBER -1"
sleep 3
cat /root/tron/servers/mm/main/fort.cfg > /root/tron/servers/mm/main/config/settings_custom.cfg
kill -1 `ps aux | grep "run-mm" | grep "armagetronad-dedicated" | awk '{print $2}'`
echo "CONSOLE_MESSAGE \n0x0078ffNext game mode is 0xffff00Fortress\n"
echo "SERVER_NAME 0x00ff06tru's 0xff4e00{0xc6ff00fort0xff4e00} 0x0078ffmultimode" >> /var/svr/mm/cmds.txt
>mode.temp # clear mode.temp so it is possible to change game mode again.
echo "mode_fort" > current_mode.temp
BIT="0" #clear for voting expiration part
}
mode_ctf() {
echo "LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "SP_LIMIT_TIME 0" >> /var/svr/mm/cmds.txt
echo "CYCLE_RUBBER -1"
sleep 3
cat /root/tron/servers/mm/main/ctf.cfg > /root/tron/servers/mm/main/config/settings_custom.cfg
kill -1 `ps aux | grep "run-mm" | grep "armagetronad-dedicated" | awk '{print $2}'`
echo "CONSOLE_MESSAGE \n0x0078ffNext game mode is 0xffff00CTF\n"
echo "SERVER_NAME 0x00ff06tru's 0xff4e00{0xc6ff00ctf0xff4e00} 0x0078ffmultimode" >> /var/svr/mm/cmds.txt
>mode.temp # clear mode.temp so it is possible to change mode again.
echo "mode_ctf" > current_mode.temp
BIT="0" #clear for voting expiration part
}

while true
 do
 line=""
 read line
#build name base and show players's won matches position

if [ "${line:0:14}" == "PLAYER_ENTERED" ]
 then
	# get real name
    	WORDS=`echo "$line" | wc -w` #generate cut range step 1
	CUT_WORDS=`seq 4 $WORDS` #generate cut range step 2
	CUT_WORDS=`echo $CUT_WORDS | sed 's/ /,/g'` #generate cut range step 3
	echo "$line" | cut -d' ' -f`echo $CUT_WORDS` > namebase_realname # current player name to file
	CURRENT_NAME_G=`cat namebase_realname` # got name from this file with gaps
	#CURRENT_NAME=`echo "$CURRENT_NAME_G" | sed 's/ /_/g'` #gaps confuse /rank statistic, get rid of gaps

        SINGLE_ID=`echo "$line" | cut -d' ' -f2` #got Game name
	SINGLE_IP=`echo "$line" | cut -d' ' -f3` #got Player's IP to check with ip_list.txt and show or not to show statistic when PLAYER_ENTERED found in ladderlog
	ROW_TO_DATABASE=`echo "$SINGLE_ID $SINGLE_IP"` # THIS is data to NAMEBASE

	#current game mode to display
	MODE=`cat current_mode.temp`
	if [ "$MODE" == "mode_fort" ]; then
		CURRENT_MODE="Fortress"
	elif [ "$MODE" == "mode_df" ]; then
		CURRENT_MODE="Loose Dog Fight"
	elif [ "$MODE" == "mode_ctf" ]; then
		CURRENT_MODE="Capture The Flag"
	elif [ "$MODE" == "mode_ctfs" ]; then
		CURRENT_MODE="Capture The Flag Shooting"
	elif [ "$MODE" == "mode_cap" ]; then
		CURRENT_MODE="Crosseyed and Painless"
	elif [ "$MODE" == "mode_fc" ]; then
		CURRENT_MODE="Fight Club"
	elif [ "$MODE" == "mode_tori" ]; then
		CURRENT_MODE="Tori-Kumi"
	elif [ "$MODE" == "mode_wc" ]; then
		CURRENT_MODE="Wildcat"
	elif [ "$MODE" == "mode_wst" ]; then
		CURRENT_MODE="WST"
	elif [ "$MODE" == "mode_lrctf" ]; then
		CURRENT_MODE="Low Rubber Capture The Flag"
	elif [ "$MODE" == "mode_4teamctf" ]; then
		CURRENT_MODE="4 Team Capture The Flag"
	fi
	#welcome message
	echo "PLAYER_MESSAGE \"$SINGLE_ID\" \"0xffff00Welcome to 0xff4eddmultimode 0xffff00server!\n0xffed44View available commands over: 0xff4edd/list\n0xffff00Current game mode is 0xff4edd${CURRENT_MODE}\n\""
	###

	#next I do for /last command to get PLAYER_ENTERED at the end of namebase. ALSO he can have changed IP
	cat $NAMEBASE | grep "^$SINGLE_ID" > /dev/null 2>&1 #found ID in name base or not
	if [ $? -ne 0 ] # if player with such name has never been on server before
         then
    	    echo "$ROW_TO_DATABASE" >> "$NAMEBASE"
    	else 	# if he was here, remove previous record from base and put this with new name
    	    cat $NAMEBASE | grep -v "^$SINGLE_ID" > new_base.txt #got rid of row with the same Game name
    	    mv new_base.txt $NAMEBASE
    	    echo "$ROW_TO_DATABASE" >> "$NAMEBASE" # and put new record at the end of name base
	fi

	#show players's statistic on enter and create ip_list.txt for : 1) he just entered so show him welcome message with his won_matches position
	#2) put game name and real name with gaps into ip_list.txt for /location command
	cat ip_list.txt | grep "$SINGLE_IP" > /dev/null 2>&1
	if [ $? -ne 0 ] # if he is not in ip_list.txt yet
		 then
			echo "$SINGLE_IP $SINGLE_ID $CURRENT_NAME_G" >> ip_list.txt
	fi
	
	cat online_player.txt | grep "$SINGLE_IP" > /dev/null 2>&1
	if [ $? -ne 0 ]; then # if he is not in online_player.txt yet
		echo "$SINGLE_IP $SINGLE_ID online_ihpfix" >> online_player.txt
	fi	

	# manage won_matches.temp (match_winner; last)
	cat won_matches.temp | grep -v "$SINGLE_ID" > won_matches.temporary
	cat won_matches.temporary > won_matches.temp
	echo "$SINGLE_ID 0 still here" >> won_matches.temp
fi

#for ip_list clearing its ip  when player left and as a resutl clearing the whole ip_list.txt at the end of game

### if player goes to spectator mode, his IP still in ip_list.txt so in result when he comes back from spec he dont get Welcome Message and rating position

##unsolved##
##no any events in ladderlog when server suddenly crashes so seems to be impossible for players to get statistic information on enter first time after crash, of course if they were on server right in the moment of server's crashing

if [ "${line:0:11}" == "PLAYER_LEFT" ]
 then
    SINGLE_ID=`echo "$line" | awk '{print $2}'` #GLOBAL_ID or Game name of leaving player
    PLAYERS_IP_ON_LEFT=`echo "$line" | awk '{print $3}'`
    cat ip_list.txt | grep "$PLAYERS_IP_ON_LEFT" > /dev/null
    if [ $? -eq 0 ]
     then
        cat ip_list.txt | grep -v "$PLAYERS_IP_ON_LEFT" > ip_list.temp
        cat ip_list.temp > ip_list.txt
    fi
    cat online_player.txt | grep "$PLAYERS_IP_ON_LEFT" > /dev/null 2>&1
    if [ $? -eq 0 ]; then
	cat online_player.txt | grep -v "$PLAYERS_IP_ON_LEFT" > online_player.temp
	cat online_player.temp > online_player.txt
    fi
    #mangage won_matches.temp (match_winner; /last)
    WON=`cat won_matches.temp | grep "$SINGLE_ID" | cut -d' ' -f2` #how many matches he won
    cat won_matches.temp | grep -v "$SINGLE_ID" > won_matches.temporary
    cat won_matches.temporary > won_matches.temp
    echo "$SINGLE_ID $WON left" >> won_matches.temp

   #manage /bug section: removed number of messages player already sent
   cat bug.temp | grep "$SINGLE_ID" > /dev/null 2>&1
   if [ $? -eq 0 ]; then
   	cat bug.temp | grep -v "$SINGLE_ID" > bug.temp2
   	cat bug.temp2 > bug.temp
   fi
	cat online_player.txt | grep "$SINGLE_ID" > /dev/null 2>&1
	if [ $? -eq 0 ]; then
		cat online_player.txt | grep -v "$SINGLE_ID" > online_player.temp
		cat online_player.temp > online_player.txt
	fi
	EMPTY=`cat mode.temp`
	if [ -n "$EMPTY" ]; then
		cat votes.txt | grep -v "$PLAYERS_IP_ON_LEFT" > votes.temp
		cat votes.temp > votes.txt
                if [ "$EMPTY" == "mode_fort" ]; then
                        CURRENT_MODE="Fortress"
                elif [ "$EMPTY" == "mode_df" ]; then
                        CURRENT_MODE="Loose Dog Fight"
                elif [ "$EMPTY" == "mode_ctf" ]; then
                        CURRENT_MODE="Capture The Flag"
                elif [ "$EMPTY" == "mode_ctfs" ]; then
                        CURRENT_MODE="Capture The Flag Shooting"
                elif [ "$EMTPY" == "mode_cap" ]; then
                        CURRENT_MODE="Crosseyed and Painless"
                elif [ "$EMPTY" == "mode_fc" ]; then
                        CURRENT_MODE="Fight Club"
                elif [ "$EMPTY" == "mode_tori" ]; then
                        CURRENT_MODE="Tori-Kumi"
                elif [ "$EMPTY" == "mode_wc" ]; then
                        CURRENT_MODE="Wildcat"
                elif [ "$EMPTY" == "mode_wst" ]; then
                        CURRENT_MODE="WST"
                elif [ "$EMPTY" == "mode_lrctf" ]; then
                        CURRENT_MODE="Low Rubber Capture The Flag"
		elif [ "$EMPTY" == "mode_4teamctf" ]; then
			CURRENT_MODE="4 Team Capture The Flag"
                fi
                NUMBER_OF_PLAYERS=`cat online_player.txt | cut -d' ' -f3 | grep "online_ihpfix" | wc -l`
                #NEEDS YES
                if [ "$NUMBER_OF_PLAYERS" -le 2 ]; then
                        NEEDS_YES="2"
                elif [ "$NUMBER_OF_PLAYERS" -le 8 ]; then
                        NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*65/100;print needs" | bc | xargs printf "%1.0f"`
                elif [ "$NUMBER_OF_PLAYERS" -le 12 ]; then
                        NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*59/100;print needs" | bc | xargs printf "%1.0f"`
                fi
                #NEEDS NO
                if [ "$NUMBER_OF_PLAYERS" -le 9 ]; then
                        NEEDS_NO=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*55/100;print needs" | bc | xargs printf "%1.0f"`
                elif [ "$NUMBER_OF_PLAYERS" -le 12 ]; then
                        NEEDS_NO=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*50/100;print needs" | bc | xargs printf "%1.0f"`
                fi
                #done yes or no
                DONE_YES_VOTES=`cat votes.txt | grep "^yes" | wc -l`
                DONE_NO_VOTES=`cat votes.txt | grep "^no" | wc -l`
                if [ "$DONE_NO_VOTES" -ge "$NEEDS_NO" ]; then #cancel
                                echo "CONSOLE_MESSAGE \n0x0078ffSome players left and affected the voting!\n0x7ce757Currently 0xff4e00$DONE_NO_VOTES 0x7ce757votes against 0xffff00$CURRENT_MODE 0x7ce757with 0xff4e00$NEEDS_NO 0x7ce757required to cancel\n0x7ce757Vote for 0xffff00$CURRENT_MODE 0xff4e00Canceled!"
                                >votes.txt # game mode changed, no more votes nesessary to count
                                >mode.temp
                elif [ "$DONE_YES_VOTES" -ge "$NEEDS_YES" ]; then #accept
                                echo "CONSOLE_MESSAGE \n0x0078ffSome players left and affected the voting!\n0x7ce757Currently 0xff4e00$DONE_YES_VOTES 0x7ce757votes for 0xffff00$CURRENT_MODE 0x7ce757with 0xff4e00$NEEDS_YES 0x7ce757required\n0x7ce757Vote for 0xffff00$CURRENT_MODE 0x7ce757Successful! 0xff4e00Game mode changed..."
                                $EMPTY #var contains mode name which is also function name to perform
                                >votes.txt
                fi
	fi
fi

#anyway if some of players who was on server when it crashed is not shown right after, clear ip_list file their ips at the end of the first game
if [ "${line:0:8}" == "GAME_END" ]
 then
     if [ -n ip_list.txt ] #if file is not empty
     then
        >ip_list.txt # recreate ip_list.txt
     fi
     if [ -n online_player.txt ]; then #if file is not empty
	>online_player.txt # recreate online_player.txt
     fi
     >votes.txt
     >mode.temp
     BIT="0" # if everybody left during voting so nothing happend to clear bit (no chaning/no expiration), clear now
fi

#currently only modifying namebase.txt properly to keep it up-to-date during game
if [ "${line:0:14}" = "PLAYER_RENAMED" ]; then
	echo "$line" > temp.txt
	read JUNK GNAME R_G_NAME IP_NAME JUNK R_NAME < temp.txt
	IP=`echo "$line" | cut -d' ' -f4`
	echo "$GNAME" | grep ".*@.*" > /dev/null 2>&1
	RES=$?
	echo "$R_G_NAME" | grep ".*@.*" > /dev/null 2>&1
	RES1=$?
	[ "$RES" -eq 0 ] && [ "$RES1" -eq 0 ]; #means rename action when logged in
	RES2=$?
	if [ "$RES2" -ne 0 ]; then # if player is not logged in
		if [ "$RES1" -eq 0 ]; then #login action
			NAME_IP=`cat $NAMEBASE | grep "^$GNAME"`
			cat $NAMEBASE | grep -v "^$GNAME" > new_base.txt
			cat new_base.txt > $NAMEBASE
			echo "$NAME_IP $R_G_NAME" >> $NAMEBASE

			cat ip_list.txt | grep "$GNAME" > line_iplist.temp
			read IP JUNK REAL_NAME < line_iplist.temp
			cat ip_list.txt | grep -v "$GNAME" > ip_list.temp
			cat ip_list.temp > ip_list.txt
			echo "$IP $R_G_NAME $REAL_NAME" >> ip_list.txt

			cat online_player.txt | grep "$GNAME" > line_online_player.temp
			read IP JUNK STATUS < line_online_player.temp
			cat online_player.txt | grep -v "$GNAME" > online_player.temp
			cat online_player.temp > online_player.txt
			echo "$IP $R_G_NAME $STATUS" >> online_player.txt
		elif [ "$RES" -eq 0 ]; then #logout
			cat $NAMEBASE | grep -v "$GNAME" > new_base.txt
			cat new_base.txt > $NAMEBASE
			echo "$R_G_NAME $IP" >> $NAMEBASE

			cat ip_list.txt | grep "$GNAME" > line_iplist.temp
			read IP JUNK REAL_NAME < line_iplist.temp
			cat ip_list.txt | grep -v "$GNAME" > ip_list.temp
			cat ip_list.temp > ip_list.txt
			echo "$IP $R_G_NAME $REAL_NAME" >> ip_list.txt

			cat online_player.txt | grep "$GNAME" > line_online_player.temp
			read IP JUNK STATUS < line_online_player.temp
			cat online_player.txt | grep -v "$GNAME" > online_player.temp
			cat online_player.temp > online_player.txt
			echo "$IP $R_G_NAME $STATUS" >> online_player.txt
		else	# rename action but not logged in
			cat $NAMEBASE | grep -v "^$GNAME" > new_base.txt
			cat new_base.txt > $NAMEBASE
			echo "$R_G_NAME $IP" >> $NAMEBASE
			
			cat ip_list.txt | grep "$IP_NAME" > line_iplist.temp
			read JUNK JUNK REAL_NANE < line_iplist.temp
			cat ip_list.txt | grep -v "$IP_NAME" > ip_list.temp
			cat ip_list.temp > ip_list.txt
			echo "$IP_NAME $R_G_NAME $REAL_NAME" >> ip_list.txt
			cat online_player.txt | grep "$IP_NAME" > line_online_player.temp
			read JUNK JUNK STATUS < line_online_player.temp
			cat online_player.txt | grep -v "$IP_NAME" > online_player.temp
			cat online_player.temp > online_player.txt	
			echo "$IP_NAME $R_G_NAME $STATUS" >> online_player.txt
		fi
	fi

fi

if [ "${line:0:9}" == "NEW_ROUND" ]; then
	#first expiration part
        EMPTY=`cat mode.temp` #if there is voting in process
        if [ -n "$EMPTY" ]; then
                if [ "x${BIT}" = "x3" ]; then #it was ++ every round, third round now = expire
                        echo "CONSOLE_MESSAGE \n0xff4d00Voting Canceled! You can try to change game mode again\n0x7ce757Reason: 0xff4d00Expired\n"
                        >votes.txt # no more voting
                        >mode.temp #unlocked, so people can try to change game mode again
                        BIT="0" # voting canceled, clear bit, so next voting count starts from 0 again
                else
                        BIT=`expr $BIT + 1` #when voting started, BIT was defined in function of previous game mode as 0
                fi
	fi
	MODE=`cat current_mode.temp`
	if [ "$MODE" == "mode_4teamctf" ]; then # spawn teleport zones
		#upside
		echo "spawn_zone teleport 377.7 -40 10 0 0 0 377.7 -312 abs"
		#downside
		echo "spawn_zone teleport 377.7 -350 10 0 0 0 377.7 -78 abs"
		#left
		echo "spawn_zone teleport 60 -195 10 0 0 0 640 -195 abs"
		#right
		echo "spawn_zone teleport 695 -195 10 0 0 0 115 -195 abs"
	fi
        if [ "$MODE" == "mode_fort" ]; then
                CURRENT_MODE="Fortress"
        elif [ "$MODE" == "mode_df" ]; then
                CURRENT_MODE="Loose Dog Fight"
        elif [ "$MODE" == "mode_ctf" ]; then
                CURRENT_MODE="Capture The Flag"
        elif [ "$MODE" == "mode_ctfs" ]; then
                CURRENT_MODE="Capture The Flag Shooting"
        elif [ "$MODE" == "mode_cap" ]; then
                CURRENT_MODE="Crosseyed and Painless"
        elif [ "$MODE" == "mode_fc" ]; then
                CURRENT_MODE="Fight Club"
        elif [ "$MODE" == "mode_tori" ]; then
                CURRENT_MODE="Tori-Kumi"
        elif [ "$MODE" == "mode_wc" ]; then
                CURRENT_MODE="Wildcat"
        elif [ "$MODE" == "mode_wst" ]; then
                CURRENT_MODE="WST"
        elif [ "$MODE" == "mode_lrctf" ]; then
                CURRENT_MODE="Low Rubber Capture The Flag"
	elif [ "$MODE" == "mode_4teamctf" ]; then
		CURRENT_MODE="4 Team Capture The Flag"
        fi
	echo "CONSOLE_MESSAGE 0x0078ffCurrent game mode is 0xffff00${CURRENT_MODE}"
	EMPTY=`cat mode.temp` # it will be empty if it was expired
	if [ -n "$EMPTY" ]; then
		if [ "$EMPTY" == "mode_fort" ]; then
                        CURRENT_MODE="Fortress"
                elif [ "$EMPTY" == "mode_df" ]; then
                        CURRENT_MODE="Loose Dog Fight"
                elif [ "$EMPTY" == "mode_ctf" ]; then
                        CURRENT_MODE="Capture The Flag"
                elif [ "$EMPTY" == "mode_ctfs" ]; then
                        CURRENT_MODE="Capture The Flag Shooting"
                elif [ "$EMTPY" == "mode_cap" ]; then
                        CURRENT_MODE="Crosseyed and Painless"
                elif [ "$EMPTY" == "mode_fc" ]; then
                        CURRENT_MODE="Fight Club"
                elif [ "$EMPTY" == "mode_tori" ]; then
                        CURRENT_MODE="Tori-Kumi"
                elif [ "$EMPTY" == "mode_wc" ]; then
                        CURRENT_MODE="Wildcat"
                elif [ "$EMPTY" == "mode_wst" ]; then
                        CURRENT_MODE="WST"
                elif [ "$EMPTY" == "mode_lrctf" ]; then
                        CURRENT_MODE="Low Rubber Capture The Flag"
		elif [ "$EMPTY" == "mode_4teamctf" ]; then
			CURRENT_MODE="4 Team Capture The Flag"
                fi
		echo "CONSOLE_MESSAGE 0xffff00Voting in progress! Vote 0xff4edd/y 0xffff00or 0xff4edd/n 0xffff00for 0x00ff06${CURRENT_MODE}\n"
	fi
fi

#works, edit won_matches.temp for /last command use (increase number of won matches for everybody who won it (means if he is in team))
if [ "${line:0:12}" == "MATCH_WINNER" ]; then
	WINNER_IDS=`echo "$line" | awk '{for(k=3; k<=NF; k++) printf $k " " }'` # got all players who won match
	NUMBER_OF_PLAYERS=`echo "$WINNER_IDS" | wc -w` # got number of players
	NUMBER="1"
	for i in `seq 1 $NUMBER_OF_PLAYERS`
	do
		PLAYER_WON_ID=`echo "$WINNER_IDS" | cut -d' ' -f\`echo "$NUMBER"\`` # work with 1 player on $NUMBER_OF_PLAYERS position
		NUMBER=`expr $NUMBER + 1` #increase number to work with another player at another iteration
		cat won_matches.temp | grep "$PLAYER_WON_ID" > /dev/null 2>&1
		if [ $? -eq 0 ]; then 		#if player already exist in won_matches.temp do:
			WHOLE_ROW=`cat won_matches.temp | grep "$PLAYER_WON_ID"` #found this player in won_matches.temp and his status and current score
			WON=`echo "$WHOLE_ROW" | cut -d' ' -f2` #how many matches this player won
			WON=`expr $WON + 1` #get increase number of his won matches per session to +1
			WHOLE_ROW=`echo "${WHOLE_ROW/#$PLAYER_WON_ID */$PLAYER_WON_ID $WON still here}"`
			cat won_matches.temp | grep -v "$PLAYER_WON_ID" > won_matches.temporary
			cat won_matches.temporary > won_matches.temp
			echo "$WHOLE_ROW" >> won_matches.temp
		else
			WHOLE_ROW="0"
			WHOLE_ROW=`echo "${WHOLE_ROW/#?/$PLAYER_WON_ID 1 still here}"`
			echo "$WHOLE_ROW" >> won_matches.temp
		fi
	done
fi

if [ "${line:0:12}" == "BASE_RESPAWN" ]; then
	WHO=`echo $line | cut -d' ' -f2`
	WHOM=`echo $line | cut -d' ' -f3`
	cat online_player.txt | grep "$WHOM" > /dev/null 2>&1
	if [ $? -eq 0 ]; then #he is in online_player.txt
		STATUS=`cat online_player.txt | grep "$WHOM" | cut -d' ' -f3`
		if [ "$STATUS" = "spectator_ihpfix" ]; then #he returned to ctf from spec and need change status from spec to online
			IP_FILE=`cat online_player.txt | grep "$WHOM" | cut -d' ' -f1,2`
			cat online_player.txt | grep -v "$WHOM" > online_player.temp
			cat online_player.temp > online_player.txt
			echo "$IP_FILE online_ihpfix" >> online_player.txt
		fi
	fi
fi

if [ "${line:0:18}" == "BASE_ENEMY_RESPAWN" ]; then
        WHO=`echo $line | cut -d' ' -f2`
        WHOM=`echo $line | cut -d' ' -f3`
        cat online_player.txt | grep "$WHOM" > /dev/null 2>&1
        if [ $? -eq 0 ]; then #he is in online_player.txt
                STATUS=`cat online_player.txt | grep "$WHOM" | cut -d' ' -f3`
                if [ "$STATUS" = "spectator_ihpfix" ]; then #he returned to ctf from spec and need change status from spec to online
                        IP_FILE=`cat online_player.txt | grep "$WHOM" | cut -d' ' -f1,2`
                        cat online_player.txt | grep -v "$WHOM" > online_player.temp
                        cat online_player.temp > online_player.txt
                        echo "$IP_FILE online_ihpfix" >> online_player.txt
                fi
        fi
fi


if [ "${line:0:13}" == "ONLINE_PLAYER" ]; then
	ID=`echo $line | cut -d' ' -f2` #name or id
	LAST_FIELD=`echo $line | cut -d' ' -f7` #will check if empty
	if [ -n "$LAST_FIELD" ]; then #non empty = online
		cat online_player.txt | grep "${ID}" > /dev/null 2>&1
		if [ $? -eq 0 ]; then # he is already in online_player.txt
			STATUS=`cat online_player.txt | grep "${ID}" | cut -d' ' -f3` #online or spectator he was previous round
			if [ "$STATUS" = "spectator_ihpfix" ]; then # he was spectator but now is online
				#he was spcetator and need to be change to online, remove old record
				cat online_player.txt | grep -v "${ID}" > online_player.temp
				cat online_player.temp > online_player.txt
				IP_FILE=`cat ip_list.txt | cut -d' ' -f1,2 | grep "${ID}"` #got his ip and in-game name
				echo "$IP_FILE online_ihpfix" >> online_player.txt
			fi
		else # he is not in online_player.txt yet but surely online!
			IP_FILE=`cat ip_list.txt | cut -d' ' -f1,2 | grep "${ID}"` #got his ip and in-game name
			echo "$IP_FILE online_ihpfix" >> online_player.txt
		fi	
	else # empty = spectator
		cat online_player.txt | grep "${ID}" > /dev/null 2>&1
		if [ $? -eq 0 ]; then # he is already in online_player.txt
			STATUS=`cat online_player.txt | grep "${ID}" | cut -d' ' -f3` #online or spectator he was previous round
			if [ "$STATUS" = "online_ihpfix" ]; then # he was onine but now is spectator
				#he was online and need to be change to spectator, remove old record
				cat online_player.txt | grep -v "${ID}" > online_player.temp
				cat online_player.temp > online_player.txt
				IP_FILE=`cat ip_list.txt | cut -d' ' -f1,2 | grep "${ID}"` #got his ip and in-game name
				echo "$IP_FILE spectator_ihpfix" >> online_player.txt
			fi
		else #he is not in online_player.txt yet but surely spectator!
			IP_FILE=`cat ip_list.txt | cut -d' ' -f1,2 | grep "${ID}"` #got his ip and in-game name
			echo "$IP_FILE spectator_ihpfix" >> online_player.txt		
		fi
	fi
fi

##################
# custom commands
if [ "${line:0:15}" == "INVALID_COMMAND" ]
 then
    STAT_REQUEST=`echo $line | awk '{print $2 $6}'` # getting players' command (var for the whole command)
    STAT_ID=`echo $line | awk '{print $3}'` # getting his global id, or game name if player is not logged in
    STAT_IP=`echo $line | awk '{print $4}'` #getting his IP
    STAT_ACCESS=`echo $line | awk '{print $5}'` #getting his ACCESS_LEVEL
    CUSTOM_COMMAND=`echo $line | awk '{print $2}'` # command without parameters
    PARAM_CHECK=`echo "$line" | awk '{print $6}'`
    if [ "$PARAM_CHECK" != "" ]; then # now we check if command parameter is not empty. If it is empty we dont need to have $CUSTOM_PARAMETER
       WC_PARAMS=`echo $line | wc -w` #generate cut range step 1
       WC_PARAMS=`seq 6 $WC_PARAMS` #generate cut range step 2
       WC_PARAMS=`echo $WC_PARAMS | sed 's/ /,/g'` #generate cut range step 3
       CUSTOM_PARAMETER=`echo $line | cut -d' ' -f\`echo $WC_PARAMS\`` # command's parameter
    fi
    if [ "$STAT_REQUEST" == "/rank" ]
     then
            K=1
    	    echo "PLAYER_MESSAGE \"$STAT_ID\" \"\n0x378098+------------------------------+---------+--------+\""
    	    sleep 0.05
    	    echo "PLAYER_MESSAGE \"$STAT_ID\" \"0x388098|0xffffff             TOP 20           0x388098| 0xffed44matches 0x388098| 0xffed44rounds0x378098 |\""
	    sleep 0.05
	    echo "PLAYER_MESSAGE \"$STAT_ID\" \"0x388098+------+-----------------------+---------+--------+\""
	    while [ "$K" != "21" ]
	    do
		USER_WON=`cat -n $WAY | awk '{print $1 " : " $2}' | grep "^$K :" | awk -F' : ' '{print $2}'` #how many mantches K player won
		USER_NAME=`cat -n "$WAY" | awk '{print $1 " : " $3}' | grep "^$K :" | awk -F' : ' '{print $2}'` #his global id or game name
		#USER_NAME_NEW=`echo "$USER_NAME" | sed 's/*/_/'`
		#USER_NAME_SHOW=`cat $NAMEBASE | grep "$USER_NAME_NEW" | awk '{print $2}' | tail -1` #his current name
		POS=`cat -n "$WAY" | grep "$USER_NAME" | awk '{print $1}'` #his position
		ROUNDS=`cat "$WON_ROUNDS" | grep "$USER_NAME" | cut -d' ' -f1` #how many rounds this player won
		ROUNDS=`echo "${ROUNDS}          "`
		POS=`echo "${POS}      "`
		USER_NAME_SHOW=`echo "${USER_NAME}                         "`
		USER_WON=`echo "${USER_WON}             "`
		if [ "$USER_NAME" == "$STAT_ID" ]
		 then
		    sleep 0.05
		    echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xffffff|  0xff4e00${POS:0:3} 0xffffff| 0x00ff00${USER_NAME_SHOW:0:21} 0xffffff| 0xff4e00${USER_WON:0:7} 0xffffff| 0xff4e00${ROUNDS:0:7}0xffffff|\""
		    sleep 0.05
		    echo "PLAYER_MESSAGE \"$STAT_ID\" \"+------+-----------------------+---------+--------+\""
		else
		    sleep 0.05
		    echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xffffff|  0xff4e00${POS:0:3} 0xffffff| 0x00baff${USER_NAME_SHOW:0:21} 0xffffff| 0xff4e00${USER_WON:0:7} 0xffffff| 0xff4e00${ROUNDS:0:7}0xffffff|\""
		    sleep 0.05
		    echo "PLAYER_MESSAGE \"$STAT_ID\" \"+------+-----------------------+---------+--------+\""
		fi
		if [ "$K" != "21" ]
	         then
	    	    K=`expr $K + 1`
		fi
	    done
	    echo ""
	    echo "PLAYER_MESSAGE \"$STAT_ID\" \"---------------------------------------------------\""
    elif [ "$STAT_REQUEST" == "/rankme" ] # show statistic only for single player
     then
       		cat $WAY | grep "$STAT_ID" > /dev/null 2>&1
		if [ $? -eq 0 ]
		 then
         		USER_WON=`cat $WAY | grep "$STAT_ID" | awk '{print $1}'` #how many mantches player won
			USER_ROUNDS=`cat $WON_ROUNDS | grep "$STAT_ID" | awk '{print $1}'` #how many rounds player won
			POS=`cat -n $WAY | grep "$STAT_ID" | awk '{print $1}'` #his position
         		if [ "${USER_WON: -2}" != 11 ]
                 	 then
                    		if [ "${USER_WON: -1}" == 1 ]
                     		 then
                        		matches="match"
                    		else
                        	matches="matches"
                    		fi
                	else
                    		matches="matches"
                	fi

			echo "PLAYER_MESSAGE \"$STAT_ID\" \"\""
			echo "PLAYER_MESSAGE \"$STAT_ID\" \"0x00ff00   $STAT_ID\""
			echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xffffff      position: 0xff4e00$POS\n0xffffff      won:\n0xff4e00      $USER_WON 0xffed44${matches}\n0xff4e00      $USER_ROUNDS 0xffed44rounds\n\""
		else
			echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xaaffff You don't have any statistic yet\""
		fi
     elif [ "$STAT_REQUEST" == "/location" ] #request without parameter, show usage
     then
	echo "PLAYER_MESSAGE \"$STAT_ID\" \"\n0xaaffffGetting approximate players's location\n0xffffff usage: 0xffaaff/location <pattern>\n0xaaffff where 0xffaaff<pattern> 0xaaffffis a part of player's in-game name or his GLOBAL_ID.\n\""
     elif [ "$STAT_REQUEST" == "/bug" ] #request without parameter, show usage
      then
	echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xaaffffUse 0xffaaff/bug 0xaaffffto send a bug report to server admin.\n0xaaffff   usage: 0xffaaff/bug <message>\""
     elif [ "$STAT_REQUEST" == "/last" ]; then
		echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xffaaff************************************************\n0xffaaff*0x00baff          Last 15 players played here         0xffaaff*\n0xffaaff************************************************\""
		for i in `seq 1 15`
		do
			LAST_ID=`tail -15 "$NAMEBASE" | cat -n | sed 's/^[[:space:]]\{1,\}//g' | grep "^$i[[:space:]]" | awk '{print $2}'`   # game name of player in current iteration
			WHOLE_ROW=`cat won_matches.temp | grep "$LAST_ID"`
			WON=`echo "$WHOLE_ROW" | cut -d' ' -f2` #score
			WON=`echo "${WON}   "`
			LAST_ID=`echo "${LAST_ID}                      "`
			STATUS=`echo "$WHOLE_ROW" | cut -d' ' -f3,4` #status
			STATUS=`echo "${STATUS}          "`
			echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xffaaff*0x3bffa5 ${LAST_ID:0:14} 0xeac75dwon 0xff4e00${WON:0:2} 0xeac65dmatches and 0xff4e00${STATUS:0:10} 0xffaaff*\""
		done
		echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xffaaff************************************************\""
     elif [ "$STAT_REQUEST" == "/list" ]; then
		echo "PLAYER_MESSAGE \"$STAT_ID\" \"<-------------------->\n<-0x7ce757Available commands0xffffff->\n<-------------------->\n\n0xff4e00/modes0xffffaa      Shows all available game modes\n0xff4e00/rank0xffffaa       Shows Top 20 won matches rating list\n0xff4e00/rankme0xffffaa     Shows your own statistic\n0xff4e00/location0xffffaa   Shows approximate players's location\n0xff4e00/last0xffffaa       Shows last 15 players played on this server\n0xff4e00/bug0xffffaa        File a bug\n0xff4e00/list0xffffaa       All available commands\n\""
     elif [ "$STAT_REQUEST" == "/modes" ]; then
		echo "PLAYER_MESSAGE \"$STAT_ID\" \"<---------------------->\n<-0x7ce757Available game modes0xffffff->\n<---------------------->\n\n0xff4e00/mode ctf          0xffff00Capture The Flag\n0xff4e00/mode fort         0xffff00Fortress\n0xff4e00/mode wst          0xffff00War Sumo Tournament\n0xff4e00/mode df           0xffff00Loose Dog Fight\n0xff4e00/mode ctfs         0xffff00Capture The Flag Shooting\n0xff4e00/mode lrctf        0xffff00Low Rubber Capture The Flag (5 Rubber)\n0xff4e00/mode cap          0xffff00Crosseyed and Painless\n0xff4e00/mode wc           0xffff00Wildcat\n0xff4e00/mode tori         0xffff00Tori-Kumi (Wildcat in sumo circle)\n0xff4e00/mode fc           0xffff00Fight Club\n\""
     elif [ "$CUSTOM_COMMAND" == "/location" ]
     then
		WC=`cat ip_list.txt | grep -i "$CUSTOM_PARAMETER" | wc -l`
		if [ $WC -gt 1 ]
	 	 then
			echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4e00Be more specific.\""
		elif [ "$WC" -eq 0 ]
	 	 then
			echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4e00No matches.\""
		else
			WCN=`cat ip_list.txt | grep -i "$CUSTOM_PARAMETER" | wc -w` # count words to get player name without ID and IP (step 1 for generate cut range)
			WCN=`seq 3 $WCN` # generate cut range step 2
			WCN=`echo $WCN | sed 's/ /,/g'` #generate cut range step 3
			cat ip_list.txt | grep -i "$CUSTOM_PARAMETER" | cut -d' ' -f`echo $WCN` > whois_name # file contains just a name
			NAME=`cat whois_name`
			PLAYER_IP=`cat ip_list.txt | grep -i "$CUSTOM_PARAMETER" | awk '{print $1}'` # getting IP of found player
			whois "$PLAYER_IP" | grep "^country" > /dev/null #if whois output contains country row, we have country code
			if [ $? -eq 0 ]; then
				COUNTRY=`whois "$PLAYER_IP" | grep  "^country" | tail -1 | sed 's/:/ /' | awk '{print $2}'` # country code
				WCNT=`cat country_codes.txt | grep -i ^$COUNTRY | wc -w` #generate cut range step 1
				WCNT=`seq 2 $WCNT` #generate cut range step 2
				WCNT=`echo $WCNT | sed 's/ /,/g'`
				cat country_codes.txt | grep -i ^$COUNTRY | cut -d' ' -f`echo $WCNT` > country_name
				COUNTRY_NAME=`cat country_name`
				echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4e00$NAME 0xaaffffseems to be in 0xff4e00$COUNTRY_NAME 0xaaffffright now. If you are sure it is wrong information, please make a note for an admin using 0xffaaff/bug <message>\""
			else
				echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4e00$NAME 0xaaffffseems to be in 0xff4e00USA 0xaaffffright now. If you are sure it is wrong information, please make a note for an admin using 0xffaaff/bug <message>\""
			fi
    		fi
    elif [ "$CUSTOM_COMMAND" == "/bug" ]; then
	echo "$STAT_ID" | grep "@" > /dev/null
	if [ $? -eq 0 ]; then
		bug() {
		NUMBER_OF_CHARS=`echo "$CUSTOM_PARAMETER" | wc -m`
		if [ "$NUMBER_OF_CHARS" -ge 16 ]; then
			PLAYER_IP=`cat ip_list.txt | grep "$STAT_ID" | cut -d' ' -f1`
                	echo -e "`date`\nIP: ${PLAYER_IP}\nName: $STAT_ID\nmessage: $CUSTOM_PARAMETER" > mail.txt
                	./mailer.sh | sendmail -vt > /dev/null 2>&1
                	echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xaaffff   Sending message...\""

			cat bug.temp | grep "$STAT_ID" > /dev/null 2>&1
			if [ $? -eq 0 ]; then
				BUG_LINE=`cat bug.temp | grep "$STAT_ID"` #got line from bug.temp
				NMSGS=`echo "$BUG_LINE" | cut -d' ' -f2` #how many messages are already sent by player
				NMSGS=`expr $NMSGS + 1` # +1 number of messages
				cat bug.temp | grep -v "$STAT_ID" > bug.temp2
				cat bug.temp2 > bug.temp
				echo "$STAT_ID $NMSGS" >> bug.temp
			else
			echo "$STAT_ID 1" >> bug.temp
			fi

                	sleep 0.5
                	echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xffaaff   Your message 0xff4e00has been sent0xffaaff. 0xffaaffThanks for your report.\""
		else
			echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4e00Too short message! Try again.\""
		fi
		}
		cat bug.temp | grep "$STAT_ID" > /dev/null 2>&1
		if [ $? -eq 0 ]; then
			BUGS=`cat bug.temp | grep "$STAT_ID" | cut -d' ' -f2` #count number of sent messages per session
			if [ "$BUGS" -ge 3 ]; then
				echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff0000SPAM PROTECTION: 0xffffffYou have already sent too many bug messages\""
			else
				bug  #function
			fi
		else
			bug #funcion
		fi
	else
		echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4e00Requires login!\""
	fi
    elif [ "$STAT_REQUEST" = "/cancelvote" ]; then # cancel voting
	if [ "$STAT_ACCESS" = "0" -o "$STAT_ACCESS" = "1" ]; then #admin or owner performed command
		EMPTY=`cat mode.temp`
		if [ -n "$EMPTY" ]; then
			echo "CONSOLE_MESSAGE \n0xff4d00All votes canceled by an administrator!\n"
                        >votes.txt # no more voting
                        >mode.temp #unlocked, so people can try to change game mode again
                        BIT="0" # voting canceled, clear bit, so next voting count starts from 0 again	
		else
			echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xccccccNothing to cancel!\""
		fi
	fi	
    elif [ "$STAT_REQUEST" = "/mode" ]; then
	echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xccccccYou must specify game mode you want to set vote for. Use /modes for help\""
    elif [ "$CUSTOM_COMMAND" = "/mode" ]; then
	if [ "$CUSTOM_PARAMETER" = "df" ]; then
		STATUS=`cat online_player.txt | grep "$STAT_ID" | cut -d' ' -f3`
		if [ "$STATUS" = "spectator_ihpfix" ]; then
			echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Spectators can not change game mode!\""
		else
			CURRENT_MODE=`cat current_mode.temp`
			if [ "$CURRENT_MODE" == "mode_df" ]; then
				echo "PLAYER_MESSAGE \"$STAT_ID\" \"\n0x7ce757You already play 0xff4e00Loose Dog Fight\n\""
			else
				LEN=`cat mode.temp` #get mode name (function name)
				if [ -z "$LEN" ]; then # mean that no any votes in action, then we can make new lock and start voting
					echo "mode_df" > mode.temp
					NUMBER_OF_PLAYERS=`cat online_player.txt | cut -d' ' -f3 | grep "online_ihpfix" | wc -l`
					if [ "$NUMBER_OF_PLAYERS" -eq 1 ]; then #only 1 player online, then change game mode and unlock
						echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Loose DF\n0x0078ffSingle player detected, vote accepted by default\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Loose DF 0x7ce757with 0xff4e001 0x7ce757required\n0x7ce757Vote for 0xffff00Loose DF 0x7ce757Successful! 0xff4e00Game mode changed...\n"
						mode_df #function
					else # there are more then 1 people on server, then make an output how to use /y and /n and exit. other stuff for /y and for /n command (they are dynamic)
                                        	echo "yes $STAT_ID $STAT_IP" > votes.txt
						#NEEDS YES
                                        	if [ "$NUMBER_OF_PLAYERS" -le 2 ]; then 
                                                	NEEDS_YES="2"
                                        	elif [ "$NUMBER_OF_PLAYERS" -le 8 ]; then
                                               		NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*65/100;print needs" | bc | xargs printf "%1.0f"`
                                        	elif [ "$NUMBER_OF_PLAYERS" -le 12 ]; then
                                                	NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*59/100;print needs" | bc | xargs printf "%1.0f"`
                                        	fi
                                        	echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Loose DF\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Loose DF 0x7ce757with 0xff4e00$NEEDS_YES 0x7ce757required\n0x7ce757Vote for 0xffff00Loose DF0x7ce757: 0xff4edd/y 0x7ce757or against: 0xff4edd/n\n"
					fi
				else
					echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Another voting in process...\""
				fi
			fi
		fi
	elif [ "$CUSTOM_PARAMETER" = "fort" ]; then
		STATUS=`cat online_player.txt | grep "$STAT_ID" | cut -d' ' -f3`
		if [ "$STATUS" = "spectator_ihpfix" ]; then
                        echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Spectators can not change game mode!\""
                else
			CURRENT_MODE=`cat current_mode.temp`
                	if [ "$CURRENT_MODE" == "mode_fort" ]; then
                        	echo "PLAYER_MESSAGE \"$STAT_ID\" \"\n0x7ce757You already play 0xff4e00Fortress\n\""
                	else
				LEN=`cat mode.temp` #get mode name (function name)
                		if [ -z "$LEN" ]; then # mean that no any votes in action, then we can make new lock and start voting
                        		echo "mode_fort" > mode.temp
                        		NUMBER_OF_PLAYERS=`cat online_player.txt | cut -d' ' -f3 | grep "online_ihpfix" | wc -l`
                        		if [ "$NUMBER_OF_PLAYERS" -eq 1 ]; then #only 1 player online, then change game mode and unlock
						echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Fortress\n0x0078ffSingle player detected, vote accepted by default\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Fortress 0x7ce757with 0xff4e001 0x7ce757required\n0x7ce757Vote for 0xffff00Fortress 0x7ce757Successful! 0xff4e00Game mode changed...\n"
						mode_fort #function
                        		else # there are more then 1 people on server, then make an output how to use /y and /n and exit. other stuff for /y and for /n command (they are dynamic)  
                                	        echo "yes $STAT_ID $STAT_IP" > votes.txt
						#NEEDS YES
                                        	if [ "$NUMBER_OF_PLAYERS" -le 2 ]; then 
                                                	NEEDS_YES="2"
                                        	elif [ "$NUMBER_OF_PLAYERS" -le 8 ]; then
                                                	NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*65/100;print needs" | bc | xargs printf "%1.0f"`
                                       		elif [ "$NUMBER_OF_PLAYERS" -le 12 ]; then
                                                	NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*59/100;print needs" | bc | xargs printf "%1.0f"`
                                        	fi
                                        	echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Fortress\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Fortress 0x7ce757with 0xff4e00$NEEDS_YES 0x7ce757required\n0x7ce757Vote for 0xffff00Fortress0x7ce757: 0xff4edd/y 0x7ce757or against: 0xff4edd/n\n"
                        		fi
                		else
                       			echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Another voting in process...\""
                		fi
			fi
		fi
	elif [ "$CUSTOM_PARAMETER" = "ctf" ]; then
		STATUS=`cat online_player.txt | grep "$STAT_ID" | cut -d' ' -f3`
                if [ "$STATUS" = "spectator_ihpfix" ]; then 
                        echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Spectators can not change game mode!\""
                else
			CURRENT_MODE=`cat current_mode.temp`
        	        if [ "$CURRENT_MODE" == "mode_ctf" ]; then
                	        echo "PLAYER_MESSAGE \"$STAT_ID\" \"\n0x7ce757You already play 0xff4e00Capture The Flag\n\""
                	else
				LEN=`cat mode.temp` #get mode name (function name)
                		if [ -z "$LEN" ]; then # mean that no any votes in action, then we can make new lock and start voting
                        		echo "mode_ctf" > mode.temp
                        		NUMBER_OF_PLAYERS=`cat online_player.txt | cut -d' ' -f3 | grep "online_ihpfix" | wc -l`
                        		if [ "$NUMBER_OF_PLAYERS" -eq 1 ]; then #only 1 player online, then change game mode and unlock
						echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Capture The Flag\n0x0078ffSingle player detected, vote accepted by default\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Capture The Flag 0x7ce757with 0xff4e001 0x7ce757required\n0x7ce757Vote for 0xffff00Capture The Flag 0x7ce757Successful! 0xff4e00Game mode changed...\n"
						mode_ctf #function
                        		else # there are more then 1 people on server, then make an output how to use /y and /n and exit. other stuff for /y and for /n command (they are dynamic)  
                                        	echo "yes $STAT_ID $STAT_IP" > votes.txt
						#NEEDS YES
                                        	if [ "$NUMBER_OF_PLAYERS" -le 2 ]; then 
                                                	NEEDS_YES="2"
                                        	elif [ "$NUMBER_OF_PLAYERS" -le 8 ]; then
                                                	NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*65/100;print needs" | bc | xargs printf "%1.0f"`
                                        	elif [ "$NUMBER_OF_PLAYERS" -le 12 ]; then
                                                	NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*59/100;print needs" | bc | xargs printf "%1.0f"`
                                        	fi
                                        	echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Capture The Flag\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Capture The Flag 0x7ce757with 0xff4e00$NEEDS_YES 0x7ce757required\n0x7ce757Vote for 0xffff00Capture The Flag0x7ce757: 0xff4edd/y 0x7ce757or against: 0xff4edd/n\n"
                        		fi
                		else
                        		echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Another voting in process...\""
                		fi
			fi
		fi
	elif [ "$CUSTOM_PARAMETER" = "cap" ]; then
		STATUS=`cat online_player.txt | grep "$STAT_ID" | cut -d' ' -f3`
                if [ "$STATUS" = "spectator_ihpfix" ]; then 
                        echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Spectators can not change game mode!\""
                else
			CURRENT_MODE=`cat current_mode.temp`
	                if [ "$CURRENT_MODE" == "mode_cap" ]; then
                	        echo "PLAYER_MESSAGE \"$STAT_ID\" \"\n0x7ce757You already play 0xff4e00Crosseyed and Painless\n\""
               		else
                		LEN=`cat mode.temp` #get mode name (function name)
                		if [ -z "$LEN" ]; then # mean that no any votes in action, then we can make new lock and start voting
                        		echo "mode_cap" > mode.temp
                        		NUMBER_OF_PLAYERS=`cat online_player.txt | cut -d' ' -f3 | grep "online_ihpfix" | wc -l`
                        		if [ "$NUMBER_OF_PLAYERS" -eq 1 ]; then #only 1 player online, then change game mode and unlock
                                		echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Crosseyed and Painless\n0x0078ffSingle player detected, vote accepted by default\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Crosseyed and Painless 0x7ce757with 0xff4e001 0x7ce757required\n0x7ce757Vote for 0xffff00Crosseyed and Painless 0x7ce757Successful! 0xff4e00Game mode changed...\n"
						mode_cap #function
                        		else # there are more then 1 people on server, then make an output how to use /y and /n and exit. other stuff for /y and for /n command (they are dynamic)  
                                	        echo "yes $STAT_ID $STAT_IP" > votes.txt
						#NEEDS YES
                                        	if [ "$NUMBER_OF_PLAYERS" -le 2 ]; then 
                                                	NEEDS_YES="2"
                                        	elif [ "$NUMBER_OF_PLAYERS" -le 8 ]; then
                                                	NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*65/100;print needs" | bc | xargs printf "%1.0f"`
                                        	elif [ "$NUMBER_OF_PLAYERS" -le 12 ]; then
                                                	NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*59/100;print needs" | bc | xargs printf "%1.0f"`
                                        	fi
                                        	echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Crosseyed and Painless\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Crosseyed and Painless 0x7ce757with 0xff4e00$NEEDS_YES 0x7ce757required\n0x7ce757Vote for 0xffff00Crosseyed and Painless0x7ce757: 0xff4edd/y 0x7ce757or against: 0xff4edd/n\n"
                        		fi
                		else
                        		echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Another voting in process...\""
                		fi
			fi
		fi
	elif [ "$CUSTOM_PARAMETER" = "ctfs" ]; then
		STATUS=`cat online_player.txt | grep "$STAT_ID" | cut -d' ' -f3`
                if [ "$STATUS" = "spectator_ihpfix" ]; then 
                        echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Spectators can not change game mode!\""
                else
	                CURRENT_MODE=`cat current_mode.temp`
        	        if [ "$CURRENT_MODE" == "mode_ctfs" ]; then
                	        echo "PLAYER_MESSAGE \"$STAT_ID\" \"\n0x7ce757You already play 0xff4e00Capture The Flag Shooting\n\""
               		else
				LEN=`cat mode.temp` #get mode name (function name)
                		if [ -z "$LEN" ]; then # mean that no any votes in action, then we can make new lock and start voting
                        		echo "mode_ctfs" > mode.temp
                        		NUMBER_OF_PLAYERS=`cat online_player.txt | cut -d' ' -f3 | grep "online_ihpfix" | wc -l`
                        		if [ "$NUMBER_OF_PLAYERS" -eq 1 ]; then #only 1 player online, then change game mode and unlock
                                		echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Capture The Flag Shooting\n0x0078ffSingle player detected, vote accepted by default\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Capture The Flag Shooting 0x7ce757with 0xff4e001 0x7ce757required\n0x7ce757Vote for 0xffff00Capture The Flag Shooting 0x7ce757Successful! 0xff4e00Game mode changed...\n"
						mode_ctfs #function
                        		else # there are more then 1 people on server, then make an output how to use /y and /n and exit. other stuff for /y and for /n command (they are dynamic)  
                                        	echo "yes $STAT_ID $STAT_IP" > votes.txt
						#NEEDS YES
                                        	if [ "$NUMBER_OF_PLAYERS" -le 2 ]; then 
                                               		NEEDS_YES="2"
                                        	elif [ "$NUMBER_OF_PLAYERS" -le 8 ]; then
                                                	NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*65/100;print needs" | bc | xargs printf "%1.0f"`
                                        	elif [ "$NUMBER_OF_PLAYERS" -le 12 ]; then
                                                	NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*59/100;print needs" | bc | xargs printf "%1.0f"`
	                                        fi
        	                                echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Capture The Flag Shooting\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Capture The Flag Shooting 0x7ce757with 0xff4e00$NEEDS_YES 0x7ce757required\n0x7ce757Vote for 0xffff00Capture The Flag Shooting0x7ce757: 0xff4edd/y 0x7ce757or against: 0xff4edd/n\n"
                	        	fi
                		else
                        		echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Another voting in process...\""
	                	fi
			fi
		fi
	elif [ "$CUSTOM_PARAMETER" = "fc" ]; then
		STATUS=`cat online_player.txt | grep "$STAT_ID" | cut -d' ' -f3`
                if [ "$STATUS" = "spectator_ihpfix" ]; then 
                        echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Spectators can not change game mode!\""
                else
	                CURRENT_MODE=`cat current_mode.temp`
        	        if [ "$CURRENT_MODE" == "mode_fc" ]; then
                	        echo "PLAYER_MESSAGE \"$STAT_ID\" \"\n0x7ce757You already play 0xff4e00Fight Club\n\""
                	else
				LEN=`cat mode.temp` #get mode name (function name)
                		if [ -z "$LEN" ]; then # mean that no any votes in action, then we can make new lock and start voting
                        		echo "mode_fc" > mode.temp
                        		NUMBER_OF_PLAYERS=`cat online_player.txt | cut -d' ' -f3 | grep "online_ihpfix" | wc -l`
	                        	if [ "$NUMBER_OF_PLAYERS" -eq 1 ]; then #only 1 player online, then change game mode and unlock
        	                        	echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Fight Club\n0x0078ffSingle player detected, vote accepted by default\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Fight Club 0x7ce757with 0xff4e001 0x7ce757required\n0x7ce757Vote for 0xffff00Fight Club 0x7ce757Successful! 0xff4e00Game mode changed...\n"
						mode_fc #function
                        		else # there are more then 1 people on server, then make an output how to use /y and /n and exit. other stuff for /y and for /n command (they are dynamic)  
                                	        echo "yes $STAT_ID $STAT_IP" > votes.txt
						#NEEDS YES
                                        	if [ "$NUMBER_OF_PLAYERS" -le 2 ]; then 
                                                	NEEDS_YES="2"
                                       		elif [ "$NUMBER_OF_PLAYERS" -le 8 ]; then
                                                	NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*65/100;print needs" | bc | xargs printf "%1.0f"`
	                                        elif [ "$NUMBER_OF_PLAYERS" -le 12 ]; then
        	                                        NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*59/100;print needs" | bc | xargs printf "%1.0f"`
                	                        fi
                        	                echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Fight Club\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Fight Club 0x7ce757with 0xff4e00$NEEDS_YES 0x7ce757required\n0x7ce757Vote for 0xffff00Fight Club0x7ce757: 0xff4edd/y 0x7ce757or against: 0xff4edd/n\n"
                        		fi
	                	else
        	                	echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Another voting in process...\""
                		fi
			fi
		fi
	elif [ "$CUSTOM_PARAMETER" = "tori" ]; then
		STATUS=`cat online_player.txt | grep "$STAT_ID" | cut -d' ' -f3`
                if [ "$STATUS" = "spectator_ihpfix" ]; then 
                        echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Spectators can not change game mode!\""
                else
	                CURRENT_MODE=`cat current_mode.temp`
        	        if [ "$CURRENT_MODE" == "mode_tori" ]; then
                	        echo "PLAYER_MESSAGE \"$STAT_ID\" \"\n0x7ce757You already play 0xff4e00Tori-Kumi\n\""
                	else
				LEN=`cat mode.temp` #get mode name (function name)
	                	if [ -z "$LEN" ]; then # mean that no any votes in action, then we can make new lock and start voting
        	                	echo "mode_tori" > mode.temp
                	        	NUMBER_OF_PLAYERS=`cat online_player.txt | cut -d' ' -f3 | grep "online_ihpfix" | wc -l`
                       			if [ "$NUMBER_OF_PLAYERS" -eq 1 ]; then #only 1 player online, then change game mode and unlock
                                		echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Tori-Kumi\n0x0078ffSingle player detected, vote accepted by default\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Tori-Kumi 0x7ce757with 0xff4e001 0x7ce757required\n0x7ce757Vote for 0xffff00Tori-Kumi 0x7ce757Successful! 0xff4e00Game mode changed...\n"
						mode_tori #function
	                        	else # there are more then 1 people on server, then make an output how to use /y and /n and exit. other stuff for /y and for /n command (they are dynamic)  
        	                                echo "yes $STAT_ID $STAT_IP" > votes.txt
						#NEEDS YES
                        	                if [ "$NUMBER_OF_PLAYERS" -le 2 ]; then 
                                	                NEEDS_YES="2"
                                        	elif [ "$NUMBER_OF_PLAYERS" -le 8 ]; then
                                                	NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*65/100;print needs" | bc | xargs printf "%1.0f"`
	                                        elif [ "$NUMBER_OF_PLAYERS" -le 12 ]; then
        	                                        NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*59/100;print needs" | bc | xargs printf "%1.0f"`
                	                        fi
                        	                echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Tori-Kumi\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Tori-Kumi 0x7ce757with 0xff4e00$NEEDS_YES 0x7ce757required\n0x7ce757Vote for 0xffff00Tori-Kumi0x7ce757: 0xff4edd/y 0x7ce757or against: 0xff4edd/n\n"
                        		fi
	                	else
        	                	echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Another voting in process...\""
                		fi
			fi
		fi
	elif [ "$CUSTOM_PARAMETER" = "wc" ]; then
		STATUS=`cat online_player.txt | grep "$STAT_ID" | cut -d' ' -f3`
                if [ "$STATUS" = "spectator_ihpfix" ]; then 
                        echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Spectators can not change game mode!\""
                else
	                CURRENT_MODE=`cat current_mode.temp`
        	        if [ "$CURRENT_MODE" == "mode_wc" ]; then
                	        echo "PLAYER_MESSAGE \"$STAT_ID\" \"\n0x7ce757You already play 0xff4e00Wildcat\n\""
                	else
				LEN=`cat mode.temp` #get mode name (function name)
	                	if [ -z "$LEN" ]; then # mean that no any votes in action, then we can make new lock and start voting
        	                	echo "mode_wc" > mode.temp
                	        	NUMBER_OF_PLAYERS=`cat online_player.txt | cut -d' ' -f3 | grep "online_ihpfix" | wc -l`
                        		if [ "$NUMBER_OF_PLAYERS" -eq 1 ]; then #only 1 player online, then change game mode and unlock
						echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Wildcat\n0x0078ffSingle player detected, vote accepted by default\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Wildcat 0x7ce757with 0xff4e001 0x7ce757required\n0x7ce757Vote for 0xffff00Wildcat 0x7ce757Successful! 0xff4e00Game mode changed...\n"
						mode_wc #function
	                        	else # there are more then 1 people on server, then make an output how to use /y and /n and exit. other stuff for /y and for /n command (they are dynamic)  
						echo "yes $STAT_ID $STAT_IP" > votes.txt
						#NEEDS YES
                        	                if [ "$NUMBER_OF_PLAYERS" -le 2 ]; then 
                                	                NEEDS_YES="2"
                                        	elif [ "$NUMBER_OF_PLAYERS" -le 8 ]; then
                                                	NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*65/100;print needs" | bc | xargs printf "%1.0f"`
	                                        elif [ "$NUMBER_OF_PLAYERS" -le 12 ]; then
        	                                        NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*59/100;print needs" | bc | xargs printf "%1.0f"`
                	                        fi
                        	                echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Wildcat\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Wildcat 0x7ce757with 0xff4e00$NEEDS_YES 0x7ce757required\n0x7ce757Vote for 0xffff00Wildcat0x7ce757: 0xff4edd/y 0x7ce757or against: 0xff4edd/n\n"
                        		fi
	               		else
        	                	echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Another voting in process...\""
                		fi
			fi
		fi
	elif [ "$CUSTOM_PARAMETER" = "lrctf" ]; then
		STATUS=`cat online_player.txt | grep "$STAT_ID" | cut -d' ' -f3`
                if [ "$STATUS" = "spectator_ihpfix" ]; then 
                        echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Spectators can not change game mode!\""
                else
	                CURRENT_MODE=`cat current_mode.temp`
        	        if [ "$CURRENT_MODE" == "mode_lrctf" ]; then
                	        echo "PLAYER_MESSAGE \"$STAT_ID\" \"\n0x7ce757You already play 0xff4e00Low Rubber Capture The Flag\n\""
                	else
                        	LEN=`cat mode.temp` #get mode name (function name)
                        	if [ -z "$LEN" ]; then # mean that no any votes in action, then we can make new lock and start voting
                                	echo "mode_lrctf" > mode.temp
                                	NUMBER_OF_PLAYERS=`cat online_player.txt | cut -d' ' -f3 | grep "online_ihpfix" | wc -l`
	                                if [ "$NUMBER_OF_PLAYERS" -eq 1 ]; then #only 1 player online, then change game mode and unlock
        	                                echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Low Rubber Capture The Flag\n0x0078ffSingle player detected, vote accepted by default\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Low Rubber Capture The Flag 0x7ce757with 0xff4e001 0x7ce757required\n0x7ce757Vote for 0xffff00Low Rubber Capture The Flag 0x7ce757Successful! 0xff4e00Game mode changed...\n"
                	                        mode_lrctf #function
                        	        else # there are more then 1 people on server, then make an output how to use /y and /n and exit. other stuff for /y and for /n command (they are dynamic)  
                                	        echo "yes $STAT_ID $STAT_IP" > votes.txt #auto defining as voted
                                        	#NEEDS YES
	                                        if [ "$NUMBER_OF_PLAYERS" -le 2 ]; then
        	                                        NEEDS_YES="2"
                	                        elif [ "$NUMBER_OF_PLAYERS" -le 8 ]; then
                        	                        NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*65/100;print needs" | bc | xargs printf "%1.0f"`
                                	        elif [ "$NUMBER_OF_PLAYERS" -le 12 ]; then
                                        	        NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*59/100;print needs" | bc | xargs printf "%1.0f"`
	                                        fi	
        	                                echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00Low Rubber Capture The Flag\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00Low Rubber Capture The Flag 0x7ce757with 0xff4e00$NEEDS_YES 0x7ce757required\n0x7ce757Vote for 0xffff00Low Rubber Capture The Flag0x7ce757: 0xff4edd/y 0x7ce757or against: 0xff4edd/n\n"
                	                fi
                        	else # there are votes in actions
                                	echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Another voting in process...\""
	                        fi
        	        fi
		fi
	elif [ "$CUSTOM_PARAMETER" = "4teamctf" ]; then
                STATUS=`cat online_player.txt | grep "$STAT_ID" | cut -d' ' -f3`
                if [ "$STATUS" = "spectator_ihpfix" ]; then
                        echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Spectators can not change game mode!\""
                else
                        CURRENT_MODE=`cat current_mode.temp`
                        if [ "$CURRENT_MODE" == "mode_4teamctf" ]; then
                                echo "PLAYER_MESSAGE \"$STAT_ID\" \"\n0x7ce757You already play 0xff4e004 Team Capture The Flag\n\""
                        else
                                LEN=`cat mode.temp` #get mode name (function name)
                                if [ -z "$LEN" ]; then # mean that no any votes in action, then we can make new lock and start voting
                                        echo "mode_4teamctf" > mode.temp
                                        NUMBER_OF_PLAYERS=`cat online_player.txt | cut -d' ' -f3 | grep "online_ihpfix" | wc -l`
                                        if [ "$NUMBER_OF_PLAYERS" -eq 1 ]; then #only 1 player online, then change game mode and unlock
                                                echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff004 Team Capture The Flag\n0x0078ffSingle player detected, vote accepted by default\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff004 Team Capture The Flag 0x7ce757with 0xff4e001 0x7ce757required\n0x7ce757Vote for 0xffff004 Team Capture The Flag 0x7ce757Successful! 0xff4e00Game mode changed...\n"
                                                mode_4teamctf #function
                                        else # there are more then 1 people on server, then make an output how to use /y and /n and exit. other stuff for /y and for /n command (they are dynamic)  
                                                echo "yes $STAT_ID $STAT_IP" > votes.txt #auto defining as voted
                                                #NEEDS YES
                                                if [ "$NUMBER_OF_PLAYERS" -le 2 ]; then
                                                        NEEDS_YES="2"
                                                elif [ "$NUMBER_OF_PLAYERS" -le 8 ]; then
                                                        NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*65/100;print needs" | bc | xargs printf "%1.0f"`
                                                elif [ "$NUMBER_OF_PLAYERS" -le 12 ]; then
                                                        NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*59/100;print needs" | bc | xargs printf "%1.0f"`
                                                fi
                                                echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff004 Team Capture The Flag\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff004 Team Capture The Flag 0x7ce757with 0xff4e00$NEEDS_YES 0x7ce757required\n0x7ce757Vote for 0xffff004 Team Capture The Flag0x7ce757: 0xff4edd/y 0x7ce757or against: 0xff4edd/n\n"
                                        fi
                                else # there are votes in actions
                                        echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Another voting in process...\""
                                fi
                        fi
                fi
	elif [ "$CUSTOM_PARAMETER" = "wst" ]; then
		STATUS=`cat online_player.txt | grep "$STAT_ID" | cut -d' ' -f3`
                if [ "$STATUS" = "spectator_ihpfix" ]; then 
                        echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Spectators can not change game mode!\""
                else
			CURRENT_MODE=`cat current_mode.temp`
	                if [ "$CURRENT_MODE" == "mode_wst" ]; then
        	                echo "PLAYER_MESSAGE \"$STAT_ID\" \"\n0x7ce757You already play 0xff4e00WST\n\""
                	else
				LEN=`cat mode.temp` #get mode name (function name)
	                	if [ -z "$LEN" ]; then # mean that no any votes in action, then we can make new lock and start voting
        	                	echo "mode_wst" > mode.temp
                	        	NUMBER_OF_PLAYERS=`cat online_player.txt | cut -d' ' -f3 | grep "online_ihpfix" | wc -l`
                        		if [ "$NUMBER_OF_PLAYERS" -eq 1 ]; then #only 1 player online, then change game mode and unlock
						echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00WST\n0x0078ffSingle player detected, vote accepted by default\n0x7ce757Currently 0xff4e001 0x7ce757votes for 0xffff00WST 0x7ce757with 0xff4e001 0x7ce757required\n0x7ce757Vote for 0xffff00WST 0x7ce757Successful! 0xff4e00Game mode changed...\n"
                                		mode_wst #function
	                        	else # there are more then 1 people on server, then make an output how to use /y and /n and exit. other stuff for /y and for /n command (they are dynamic)  
						echo "yes $STAT_ID $STAT_IP" > votes.txt
						#NEEDS YES
                        			if [ "$NUMBER_OF_PLAYERS" -le 2 ]; then
                                			NEEDS_YES="2"
		                        	elif [ "$NUMBER_OF_PLAYERS" -le 8 ]; then
                	                		NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*65/100;print needs" | bc | xargs printf "%1.0f"`
	                        		elif [ "$NUMBER_OF_PLAYERS" -le 12 ]; then
			                                NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*59/100;print needs" | bc | xargs printf "%1.0f"`
                			        fi
						echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757requested to change game mode to 0xffff00WST\n0x7ce757Currently 0xff4e001 0x7ce757 votes for 0xffff00WST 0x7ce757with 0xff4e00$NEEDS_YES 0x7ce757required\n0x7ce757Vote for 0xffff00WST0x7ce757: 0xff4edd/y 0x7ce757or against: 0xff4edd/n\n"
                        		fi
	               		else
        	                	echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Another voting in progress...\""
                		fi
			fi
		fi
	elif [ -n "$CUSTOM_PARAMETER" ]; then
		STATUS=`cat online_player.txt | grep "$STAT_ID" | cut -d' ' -f3`
                if [ "$STATUS" = "spectator_ihpfix" ]; then 
                        echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Spectators can not change game mode!\""
                else
			echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xccccccInvalid game mode declared\""
		fi
	fi
    elif [ "$STAT_REQUEST" == "/y" ]; then
	EMPTY=`cat mode.temp`
	STATUS=`cat online_player.txt | grep "$STAT_ID" | cut -d' ' -f3` #status of player who try to vote (spec or online)
	if [ "$STATUS" = "spectator_ihpfix" ]; then
		echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Spectators can not vote!\""
	else #he is not spectator
		if [ -n "$EMPTY" ]; then #there are polls in action
			cat votes.txt | grep "$STAT_IP" > /dev/null 2>&1
			if [ $? -eq 0 ]; then
				PLAYERS_VOTE=`cat votes.txt | grep "$STAT_ID" | awk '{print $1}'`
				echo  "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Vote rejected! You've already voted 0xffed44${PLAYERS_VOTE}0xff4d00.\n\""
			else
				if [ "$EMPTY" == "mode_fort" ]; then
                        		GAME_MODE="Fortress"
	                	elif [ "$EMPTY" == "mode_df" ]; then
        	                	GAME_MODE="Loose Dog Fight"
                		elif [ "$EMPTY" == "mode_ctf" ]; then
                        		GAME_MODE="Capture The Flag"
	                	elif [ "$EMPTY" == "mode_ctfs" ]; then
        	                	GAME_MODE="Capture The Flag Shooting"
                		elif [ "$EMTPY" == "mode_cap" ]; then
                        		GAME_MODE="Crosseyed and Painless"
	                	elif [ "$EMPTY" == "mode_fc" ]; then
        	                	GAME_MODE="Fight Club"
                		elif [ "$EMPTY" == "mode_tori" ]; then
                        		GAME_MODE="Tori-Kumi"
	                	elif [ "$EMPTY" == "mode_wc" ]; then
        	                	GAME_MODE="Wildcat"
                		elif [ "$EMPTY" == "mode_wst" ]; then
                        		GAME_MODE="WST"
				elif [ "$EMPTY" == "mode_lrctf" ]; then
					GAME_MODE="Low Rubber Capture The Flag"
				elif [ "$EMPTY" == "mode_4teamctf" ]; then
					GAME_MODE="4 Team Capture The Flag"
                		fi
				echo "yes $STAT_ID $STAT_IP" >> votes.txt
				NUMBER_OF_PLAYERS=`cat online_player.txt | cut -d' ' -f3 | grep "online_ihpfix" | wc -l`
				#NEEDS YES
				if [ "$NUMBER_OF_PLAYERS" -le 2 ]; then
					NEEDS_YES="2"
				elif [ "$NUMBER_OF_PLAYERS" -le 8 ]; then
					NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*65/100;print needs" | bc | xargs printf "%1.0f"`
				elif [ "$NUMBER_OF_PLAYERS" -le 12 ]; then
					NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*59/100;print needs" | bc | xargs printf "%1.0f"`
				fi
				#NEEDS NO
				if [ "$NUMBER_OF_PLAYERS" -le 9 ]; then
					NEEDS_NO=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*55/100;print needs" | bc | xargs printf "%1.0f"`
				elif [ "$NUMBER_OF_PLAYERS" -le 12 ]; then
					NEEDS_NO=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*50/100;print needs" | bc | xargs printf "%1.0f"`
				fi
				
				DONE_YES_VOTES=`cat votes.txt | grep "^yes" | wc -l`
				DONE_NO_VOTES=`cat votes.txt | grep "^no" | wc -l`
				if [ "$DONE_YES_VOTES" -ge "$NEEDS_YES" ]; then
					echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757voted 0xffff00YES0x7ce757.\n0x7ce757Currently 0xff4e00$DONE_YES_VOTES 0x7ce757votes for 0xffff00$GAME_MODE 0x7ce757with 0xff4e00$NEEDS_YES 0x7ce757required\n0x7ce757Vote for 0xffff00$GAME_MODE 0x7ce757Successful! 0xff4e00Game mode changed..."
					MODE=`cat mode.temp`
					$MODE #function (changes game mode to mode which is saved in mode.temp)
					>votes.txt # game mode changed, no more votes nesessary to count
				else
					echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757voted 0xffff00YES0x7ce757.\n0x7ce757Currently 0xff4e00$DONE_YES_VOTES 0x7ce757votes for 0xffff00$GAME_MODE 0x7ce757with 0xff4e00$NEEDS_YES 0x7ce757required to accept and 0xff4e00$DONE_NO_VOTES 0x7ce757votes against with 0xff4e00$NEEDS_NO 0x7ce757required to cancel"
				fi
			fi
		else
			echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4e00No polls in action...\""
		fi
	fi
    elif [ "$STAT_REQUEST" == "/n" ]; then
	EMPTY=`cat mode.temp`
	STATUS=`cat online_player.txt | grep "$STAT_ID" | cut -d' ' -f3` #status of player who try to vote (spec or online)
        if [ "$STATUS" = "spectator_ihpfix" ]; then
	        echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Spectators can not vote!\""
	else #he is not spectator
		if [ -n "$EMPTY" ]; then
			cat votes.txt | grep "$STAT_IP" > /dev/null 2>&1
			if [ $? -eq 0 ]; then
				PLAYERS_VOTE=`cat votes.txt | grep "$STAT_ID" | awk '{print $1}'`
				echo  "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4d00Vote rejected! You've already voted 0xffed44${PLAYERS_VOTE}0xff4d00.\n\""
			else #did not vote yet
				if [ "$EMPTY" == "mode_fort" ]; then
                                	GAME_MODE="Fortress"
                        	elif [ "$EMPTY" == "mode_df" ]; then
                                	GAME_MODE="Loose Dog Fight"
                        	elif [ "$EMPTY" == "mode_ctf" ]; then
                               		GAME_MODE="Capture The Flag"
                       		elif [ "$EMPTY" == "mode_ctfs" ]; then
                                	GAME_MODE="Capture The Flag Shooting"
                        	elif [ "$EMTPY" == "mode_cap" ]; then
                                	GAME_MODE="Crosseyed and Painless"
                        	elif [ "$EMPTY" == "mode_fc" ]; then
                                	GAME_MODE="Fight Club"
                       		elif [ "$EMPTY" == "mode_tori" ]; then
                                	GAME_MODE="Tori-Kumi"
                        	elif [ "$EMPTY" == "mode_wc" ]; then
                                	GAME_MODE="Wildcat"
                        	elif [ "$EMPTY" == "mode_wst" ]; then
                               		GAME_MODE="WST"
				elif [ "$EMPTY" == "mode_lrctf" ]; then
					GAME_MODE="Low Rubber Capture The Flag"
				elif [ "$EMPTY" == "mode_4teamctf" ]; then
					GAME_MODE="4 Team Capture The Flag"
                        	fi
                        	echo "no $STAT_ID $STAT_IP" >> votes.txt
                        	NUMBER_OF_PLAYERS=`cat online_player.txt | cut -d' ' -f3 | grep "online_ihpfix" | wc -l`
                        	#NEEDS YES
                        	if [ "$NUMBER_OF_PLAYERS" -le 2 ]; then
                                	NEEDS_YES="2"
                        	elif [ "$NUMBER_OF_PLAYERS" -le 8 ]; then
                                	NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*65/100;print needs" | bc | xargs printf "%1.0f"`
                        	elif [ "$NUMBER_OF_PLAYERS" -le 12 ]; then
                                	NEEDS_YES=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*59/100;print needs" | bc | xargs printf "%1.0f"`
                        	fi
                        	#NEEDS NO
                        	if [ "$NUMBER_OF_PLAYERS" -le 9 ]; then
                                	NEEDS_NO=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*55/100;print needs" | bc | xargs printf "%1.0f"`
                        	elif [ "$NUMBER_OF_PLAYERS" -le 12 ]; then
                                	NEEDS_NO=`echo "scale=1;needs=${NUMBER_OF_PLAYERS}*50/100;print needs" | bc | xargs printf "%1.0f"`
                        	fi

				DONE_YES_VOTES=`cat votes.txt | grep "^yes" | wc -l`
				DONE_NO_VOTES=`cat votes.txt | grep "^no" | wc -l`
			
				if [ "$DONE_NO_VOTES" -ge "$NEEDS_NO" ]; then
					echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757voted 0xffff00NO0x7ce757.\n0x7ce757Currently 0xff4e00$DONE_NO_VOTES 0x7ce757votes against 0xffff00$GAME_MODE 0x7ce757with 0xff4e00$NEEDS_NO 0x7ce757required to cancel\n0x7ce757Vote for 0xffff00$GAME_MODE 0xff4e00Canceled!\n"
                                	>votes.txt # no more voting
					>mode.temp #unlocked, so people can try to change game mode again
				else
					echo "CONSOLE_MESSAGE 0xff4e00$STAT_ID 0x7ce757voted 0xffff00NO0x7ce757.\n0x7ce757Currently 0xff4e00$DONE_YES_VOTES 0x7ce757votes for 0xffff00$GAME_MODE 0x7ce757with 0xff4e00$NEEDS_YES 0x7ce757required to accept and 0xff4e00$DONE_NO_VOTES 0x7ce757votes against with 0xff4e00$NEEDS_NO 0x7ce757required to cancel"
				fi
			fi
		else
			echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xff4e00No polls in action...\""
		fi
	fi
    else
		echo "PLAYER_MESSAGE \"$STAT_ID\" \"0xccccccError!\""
    fi
fi

done
