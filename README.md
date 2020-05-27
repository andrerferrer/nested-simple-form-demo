## Goal
This is an app to teach how to implement associations in Ruby on Rails forms using the `simple_form` gem

## Disclaimer
You need to install the [`gem 'simple_form'`](https://github.com/heartcombo/simple_form)

## How to
### 1. Add this to your simple form 

```erb
	<%= form.input :category_id, collection: @categories %>
```

If you want to be more verbose:
```erb
	<%= form.input :category_id, collection: @categories, label_method: :title, value_method: :id, label: "Restaurant Categories", include_blank: false %>
```

## Good Links
* [Simple Form Documentation with Bootstrap](http://simple-form-bootstrap.plataformatec.com.br/)
* [Simple Form Documentation](http://simple-form.plataformatec.com.br/)
