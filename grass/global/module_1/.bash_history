cd cityapp/scripts/modules/module_1a
./cityapp_module_1a_processing.sh 
./cityapp_module_1a_processing.sh 
./cityapp_module_1a.sh 
exit
v.db.addtable map=m1b_temp_connectors@module_1 columns=avg_speed INT
db.columns table=m1b_temp_connectors
r.patch input=m1b_highways_and_points_zones,m1b_temp output=m1b_highways_and_points_temp --overwrite --quiet
v.extract -r input=m1b_highways_and_points where=avg_speed>0 output=m1b_temp_connections --overwrite
v.extract  input=m1b_highways_and_points where=avg_speed>0 output=m1b_temp_connections --overwrite
v.extract -r input=m1b_highways_and_points where=avg_speed>0 output=m1b_temp_connections --overwrite
v.extract -r input=m1b_highways_and_points where=avg_speed=0 output=m1b_temp_connections --overwrite
v.extract -r input=m1b_highways_and_points where=avg_speed>0 output=m1b_temp_connections --overwrite
v.extract -r input=m1b_highways_and_points where=avg_speed>0 output=m1b_temp_connectors --overwrite
v.db.update map=m1b_temp_connectors column=avg_speed value=10 
v.db.addcolumn map=m1b_temp_connectors column=avg_speed INT
v.db.addcolumn map=m1b_temp_connectors columns=avg_speed INT
v.db.addcolumn map=m1b_temp_connectors columns=avg_speed INTEGER
v.db.addcolumn map=m1b_temp_connectors columns='avg_speed INT'
v.db.update map=m1b_temp_connectors column=avg_speed value=10 
v.net input=highways points=$FROM_POINT output=m1b_highways_and_points operation=connect threshold=$CONNECT_DISTANCE --overwrite
v.net input=highways points=$FROM_POINT output=m1b_highways_and_points operation=connect threshold=0.003 --overwrite
