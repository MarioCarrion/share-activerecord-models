# share-activerecord-models

This is a barebones repository describing how to use the **rails** gem for allowing you to use migrations, generators and at the same time to allow you share your ActiveRecord models.

I like PostgreSQL, therefore I like scenic so make sure you have your daemon running and then:

`rake db:create`
`rake db:migrate`
`rake db:test:prepare`
`rspec`

Try using the regular generators:

`rails generate migration CreateYolos`
`rails generate scenic:view yolo_products --materialized`
