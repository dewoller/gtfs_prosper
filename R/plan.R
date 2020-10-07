the_plan <-
  drake_plan(
    gtfs = read_gtfs('data/SEQ_GTFS.zip'),
    gtfs_obj = gtfs_as_sf(gtfs),

    route = get_route_geometry(gtfs_obj),
    routes=read_csv('data/seq/routes.txt'),
    stops=read_csv('data/seq/stops.txt', col_types=
                   cols(
                        stop_id = col_character(),
                        stop_code = col_character(),
                        stop_name = col_character(),
                        stop_desc = col_logical(),
                        stop_lat = col_double(),
                        stop_lon = col_double(),
                        zone_id = col_character(),
                        stop_url = col_character(),
                        location_type = col_double(),
                        parent_station = col_character(),
                        platform_code = col_character()
                   )
                   ),
    stop_times=read_csv('data/seq/stop_times.txt'),
    trips=read_csv('data/seq/trips.txt'),
    stops_meshblocks=read_csv('data/Stops_Meshblocks.csv') %>% 
      janitor::clean_names(),


0
)
