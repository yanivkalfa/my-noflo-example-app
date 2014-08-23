var noflo = require("noflo");

var graph = noflo.graph.createGraph("example");

graph.addNode("show", 'Showing');

/*
graph.addEdge("Read", "out", "Display", "in");

graph.addInitial("asdasd", "Read", "source");
*/

var network = noflo.createNetwork(graph);
