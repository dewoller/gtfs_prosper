source('_drake.R')

loadd(routes)
loadd(stops)
loadd(stop_times)
loadd(stops_meshblocks)
loadd(trips)

routes %>%
  inner_join( trips ) %>%
  distinct( route_id, trip_id) %>%
  inner_join( stop_times ) %>%
  distinct( route_id, stop_id) %>%
  mutate(g_stop_id = as.character(stop_id)) %>%
  inner_join( stops_meshblocks ) %>%


