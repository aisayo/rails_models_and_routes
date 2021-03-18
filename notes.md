# Models and Routes 

## Create models 

- Manually create a file, populate dependencies
- Rails generator: Rails g model 

- how can I create model instances
 - seeds.rb 
 - manually create data in our console 
 - faker gem (seeds file)


# Rails request/response flow?

- client side sends a request
- receiving server sends to router 
- router will send to appropriate controller#action
- controller will interact with model, model with db
- retrieve data and send that to view 


# Resources 
- [Groups in Gemfile](https://bundler.io/guides/groups.html)
- [Concerns Folder](https://blog.appsignal.com/2020/09/16/rails-concers-to-concern-or-not-to-concern.html)
- [Abstract Classes](https://medium.com/@jeremy_96642/deep-rails-how-to-use-abstract-classes-6aee9b686e75)
