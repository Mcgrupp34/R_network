library(igraph)

edges <- read.csv("PATH")
nodes <- read.csv("PATH")

head(edges)
head(nodes)

my_graph <- graph_from_data_frame(d = edges, vertices = nodes, directed =
                                      FALSE)
plot(my_graph)

degree(my_graph)
V(my_graph)$vertex_degree <- degree(my_graph)
plot(my_graph, vertex.size=V(my_graph)$vertex_degree)
plot(my_graph, layout = layout.fruchterman.reingold(my_graph))

station_degree <- degree(my_graph)
write.csv(station_degree, file = "FILE_NAME.csv")

degree(my_graph)
V(my_graph)$vertex_degree <- degree(my_graph)
plot(my_graph, vertex.size=V(my_graph)$vertex_degree)

neighbors(my_graph, "80")

betweenness(my_graph, normalized = FALSE)

station_between <- betweenness(my_graph, normalized = FALSE)
write.csv(station_between, file = "FILE_NAME.csv")

eig_g <- eigen_centrality(my_graph)
write.csv(eig_g, file = "FILE_NAME.csv")
eig_g_sort <- sort(eig_g[[1]], decreasing=T)

edge_density(my_graph)

mean_distance(my_graph)
