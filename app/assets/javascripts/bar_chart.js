var clothing_article_data = [
  {"name": "Locke", "value": 4},
  {"name": "Reyes", "value": 8},
  {"name": "Ford", "value": 15},
  {"name": "Jarrah", "value": 16},
  {"name": "Shephard", "value": 23},
  {"name": "Kwon", "value": 42}
];

// var maxValue = 0;
// for (var i=0; i < clothing_article_data.length; i++) {
//   if(clothing_article_data[i].value > maxValue) {
//     maxValue = clothing_article_data[i].value;
//   }
// }

// var x = d3.scale.linear();
// x.domain([0, maxValue]);
// x.range([0, 420]);
// console.log(x);

// var chart = d3.select(".bar_chart");
// var dataBound = chart.selectAll("div").data(clothing_article_data);
// var enterBar = dataBound.enter().append("div");
// enterBar.style("width", function(d) { return x(d.value) + "px"; });
// enterBar.text(function(d) { return d.name; });


$(document).ready(function() {

  function bar_graph_making() {
    var maxValue = 0;
    for (var i=0; i < clothing_article_data.length; i++) {
      if(clothing_article_data[i].value > maxValue) {
        maxValue = clothing_article_data[i].value;
      }
    }

    var x = d3.scale.linear()
        .domain([0, maxValue])
        .range([0, 420]);

    d3.select(".bar_chart")
      .selectAll("div")
        .data(clothing_article_data)
      .enter().append("div")
        .style("width", function(d) { return x(d.value) + "px"; })
        .style("height", "30px")
        .text(function(d) { return d.name; });
  }
  bar_graph_making();
  
});