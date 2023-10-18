#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

#CLEAT THE DATABASE
echo "$($PSQL "TRUNCATE TABLE games, teams")"

#When you run your insert_data.sh script, 
#it should add each unique team to the teams table. There should be 24 rows

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  echo $YEAR $ROUND $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS
  if [[ $WINNER != winner ]];
  then

    WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
    if [[ -z $WINNER_ID ]]; then
      INSERT_WINNER="$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")"
      WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
    fi


    OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"
    if [[ -z $OPPONENT_ID ]]; then
      INSERT_OPPONENT="$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT') RETURNING team_id")"
      OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"
    fi
    
    INSERT_GAME_DATA="$($PSQL "INSERT INTO games(winner_id, opponent_id, winner_goals, opponent_goals, year, round) VALUES($WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS, $YEAR, '$ROUND')")"
  fi

done
    echo "$($PSQL "SELECT * FROM teams")"
#When you run your insert_data.sh script, 
#it should insert a row for each line in the games.csv file (other than the top line of the file). 
#There should be 32 rows. Each row should have every column filled in with the appropriate info. 
#Make sure to add the correct ID's from the teams table (you cannot hard-code the values)