Router.configure layoutTemplate: 'main'
Router.route '/', 'posts'
Router.route '/posts/:_id', (->
  item = Posts.findOne(_id: @params._id)
  @render 'post', data: item
  return
), name: 'post.show'
