r.in.gdal -o input=/home/titusz/cityapp/geoserver_data/odisha/dem/n17_e080_1arc_v3.tif output=n17_e080_1arc_v3
r.colors map=n17_e080_1arc_v3@module_10 color=elevation
r.mask -r
cd cityapp/scripts/modules/module_10/
./cityapp_module_10_processing_1.1.sh 
r.in.gdal -o input=/home/titusz/cityapp/geoserver_data/odisha/dem/n17_e081_1arc_v3.tif output=n17_e081_1arc_v3
r.mask -r
r.patch --overwrite input=n17_e081_1arc_v3@module_10,n17_e080_1arc_v3@module_10 output=odisha_dem
r.patch --overwrite input=n17_e081_1arc_v3@module_10,n17_e080_1arc_v3@module_10 output=odisha_dem
r.patch --overwrite input=n17_e081_1arc_v3,n17_e080_1arc_v3 output=odisha_dem
r.patch --overwrite input=n17_e081_1arc_v3,n17_e080_1arc_v3 output=odisha_dem
r.patch --overwrite input=dem_1,dem_2,dem_3,dem_4,dem_5,dem_6,dem_7,dem_8,dem_9,dem_10,dem_11,dem_12,dem_13,dem_14,dem_15,dem_16,dem_17,dem_18,dem_19,dem_20    output=odisha_dem
r.patch --overwrite input=dem_1,dem_2,dem_3,dem_4,dem_5,dem_6,dem_7,dem_8,dem_9,dem_10,dem_11,dem_12,dem_13,dem_14,dem_15,dem_16,dem_17,dem_18,dem_19,dem_20  output=odisha_dem
r.patch --overwrite input=dem_1,dem_2,dem_3,dem_4,dem_5,dem_6,dem_7,dem_8,dem_9,dem_10,dem_11,dem_12,dem_13,dem_14,dem_15,dem_16,dem_17,dem_18,dem_19,dem_20 output=odisha_dem
r.patch --overwrite input=dem_20,dem_21,dem_22,dem_23,dem_24,dem_25,dem_26,dem_27,dem_28,dem_29,dem_30,dem_31,dem_32,dem_33,dem_34, output=odisha_dem
r.patch --overwrite input=dem_20,dem_21,dem_22,dem_23,dem_24,dem_25,dem_26,dem_27,dem_28,dem_29,dem_30,dem_31,dem_32,dem_33,dem_34,odisha_dem output=dem_odisha
g.remove -f type=raster pattern=dem_*
g.remove -f type=raster name=n17_e080_1arc_v3@module_10,n17_e081_1arc_v3@module_10
r.patch --overwrite input=dem_20,dem_21,dem_22,dem_23,dem_24,dem_25,dem_26,dem_27,dem_28,dem_29,dem_30,dem_31,dem_32,dem_33,dem_34,odisha_dem output=dem_odisha
g.remove -f type=raster pattern=dem_
g.remove -f type=raster pattern=dem_*
g.remove -f type=raster name=odisha_dem@module_10
