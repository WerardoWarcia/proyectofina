class Utils
  @randomInt: (min,max) ->
    Math.floor(Math.random() * (max - min + 1)) + min

  @collisionsRect: (obj1, obj2) ->
    if (obj1.x < obj2.x + obj2.width && obj1.x + obj1.width > obj2.x && obj1.y < obj2.y + obj2.height && obj1.height + obj1.y > obj2.y)
      true

  @collistionCircle: (obj1,obj2) ->
    dx = obj1.x - obj2.x
    dy = obj1.y - obj2.y
    distance = Math.sqrt(dx * dx + dy * dy)
            
    if distance < obj1.radius + obj2.radius
      true

  @collisionBound: (stage, obj)->
    true

module.exports = Utils
