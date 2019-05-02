class AnimatedRegion extends Marionette.Region

  showAnimation:(view,options)=>
    @options = options or {}
    @animationType = options.animationType or 'default'
    @options.preventDestroy = true
    @oldView = @currentView
    @show view, _.extend(options, preventDestroy: true)
    null

  attachHtml:(view)=>
    @oldView = @currentView
    @newView = view
    switch @options.animationType
      when 'flip'
        @flip()
        break
      when 'slide'
        @slide()
        break


  flip:()=>
    TweenMax.to @oldView.$el, 0.5,
      css:
        rotationY:90
      ease:Power2.easeIn
      onComplete: ()=>
        @el.innerHTML = ''
        TweenMax.set @oldView.$el,
                    rotationY:0

        TweenMax.set @newView.$el,
                    rotationY:-90

        @el.appendChild @newView.el

        TweenMax.to @newView.$el, 0.5,
                    rotationY:0
                    ease:Power2.easeOut
                    onComplete:=>@oldView.destroy()

    null

  slide:()=>
    @newView.$el.children().css('position','relative')
    @oldView.$el.children().css('position','relative')
    TweenMax.to @oldView.$el.children(), 0.5,
      left: "110%",
      ease: Power2.easeInOut
      onComplete: ()=>
        @el.innerHTML = ''
        TweenMax.set @oldView.$el.children(),
                    left:0

        TweenMax.set @newView.$el.children(),
                    left:'-110%'

        @el.appendChild @newView.el

        TweenMax.to @newView.$el.children(), 0.5,
                    left:0
                    ease:Power2.easeInOut
                    onComplete:=>@oldView.destroy()







module.exports = AnimatedRegion
