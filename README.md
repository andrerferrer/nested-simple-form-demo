## Goal
This is an app to teach how to implement associations in rails forms using the simple_form gem

## Disclaimer
You need to install the gem 'simple_form'

## How to
### 1. Add this to your simple form 

```erb
	<%= form.input :category_id, collection: @categories %>
```

If you want to be more verbose:
```erb
	<%= form.input :category_id, collection: @categories, label_method: :title, value_method: :id, label: "Restaurant Categories", include_blank: false %>
```