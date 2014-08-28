zenti.directive "realtimeChart", () ->
  restrict: 'EA'
  link: (scope, element, attrs) ->
    getRandomInt = (min, max) ->
      Math.floor(Math.random() * (max - min + 1)) + min
    n = 20
    width = element.parents('.box-row').width()
    data = []
    for i in [0..n]
      data.push(0)
    height = 150
    x = d3.scale.linear()
      .domain([1, n - 2])
      .range([0, width])
    y = d3.scale.linear()
      .domain([0, 100])
      .range([height, 0])
    line = d3.svg.area()
      .interpolate("basis")
      .x((d, i) ->
        x(i)
      )
      .y0(height)
      .y1((d, i) ->
        y(d)
      )
    svg = d3.select("." + attrs.class).append("svg")
      .attr("width", width)
      .attr("height", height)
      .append("g")
      .attr("transform", "translate(" + 20 + ")")
    path = svg.append("g")
      .attr("clip-path", "url(#clip)")
      .append("path")
      .datum(data)
      .attr("class", "line")
      .attr("d", line)

    tick = ->
      randomInt = getRandomInt(10, 90)
      data.push randomInt
      path
        .attr("d", line)
        .attr("transform", null)
        .transition()
        .duration(500)
        .ease("linear")
        .attr("transform", "translate(" + x(0) + ",0)")
        .each("end", tick)
      data.shift()
      return

    do tick


    return
