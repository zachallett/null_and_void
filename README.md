Null And Void
================================

**Create Null Objects with Ease**

<img src="http://cdn.memegenerator.net/instances/300x/34275719.jpg" align="right" />

Using the Null Object pattern in Ruby is rather easy so why create a gem?

I found myself using the same implementation around the Null Object pattern over
and over. Rather than duplicating the logic in every one of my projects,
I decided to package it up as a gem.

In the process of doing research to make sure I was implementing this gem the
best way possible, I came across [an article by Avdi
Grimm](http://devblog.avdi.org/2011/05/30/null-objects-and-falsiness). In the
article Avdi brings up a lot of the same ideas I was implementing in my gem.
Additionally, he had come up with some [other](#helpermethods)
[nicities](#maybies) that I hadn't thought of.

<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

Installation
--------------------------------

    gem install null_and_void

Usage
--------------------------------

Whenever you want to return a Null Object you can do something like:

```ruby
def first_tps_line_item
  TpsReport.line_items.first || NullAndVoid::NullObject.instance
end
```

Alternatively, you can [define your own Null Objects](#defineyourownnullobjects)
such as:

```ruby
def first_tps_line_item
  TpsReport.line_items.first || NullTpsLineItem.instance
end
```

If you decide to [use the mixin](#includeintoyourobjectsoptional) you can call
the `as_null_object` method on the class and use convention to figure out which
Null Object you want:

```ruby
def first_tps_line_item
  TpsReport.line_items.first || TpsLineItem.as_null_object
end
```

In this case it will return a `NullTpsLineItem` if it's defined and otherwise
will return a `NullAndVoid::NullObject`.

Implementation
--------------------------------

### Method Implementation #####################################################

With the exception of those defined below, any calls to any methods on a Null
Object that inherits from `NullAndVoid::NullObject` will result in itself.

**Example:**

```ruby
null_object = NullAndVoid::NullObject.instance

null_object == null_object.foobar # => true
```

### Helper Methods ############################################################

Many common Ruby methods are implemented as 'noops' such as:

```ruby
null_object = NullUser.instance

null_object.to_i      # => 0
null_object.to_int    # => 0
null_object.to_f      # => 0.0
null_object.to_r      # => (0/1)
null_object.to_a      # => []
null_object.to_ary    # => []
null_object.to_hash   # => {}
null_object.to_html   # => ''
null_object.to_json   # => ''
null_object.to_xml    # => ''
null_object.to_model  # => User.new
null_object.to_s      # => ''
```

### Falsity ###################################################################

`NullAndVoid::NullObject` attempts to be falsey whenever possible however it's
my opinion that this is an anti-pattern and only the basic attempts are made to
make this work.  For example:

```ruby
null_object = NullAndVoid::NullObject.instance

!null_object          # => true
null_object.nil?      # => true
null_object.blank?    # => true
null_object.present?  # => false
```

### Singleton Implementation ##################################################

`NullAndVoid::NullObject` is a singleton, all calls to an implementation of it
will result in the same object.  Therefore:

```ruby
NullUser.instance == User.new.as_null_object == User.as_null_object # => true
```

### Define Your Own Null Objects ##############################################

When implementing a Null Object for a specific class that you own, simply
include `NullAndVoid::Nullified` like so:

```ruby
require 'null_and_void/nullified'

class NullUser
  include NullAndVoid::Nullified

  def admin?
    false
  end
end
```

### Maybies ###################################################################

Sometimes you don't have control over the API you're calling and rather than
doing the sane thing by always returning the same type no matter what, instead
it returns nils.

When this happens, you could do this:

```ruby
call_some_method_that_could_return_nils || NullAndVoid::NullObject.instance
```

Or instead, you can simply wrap the method call in `NullAndVoid::Maybe` and it
will handle that for you. For example:

```ruby
NullAndVoid::Maybe(call_some_method_that_could_return_nils)
```

If you'd like to return a specific class of Null Object, you can pass it via an
options hash like so:

```ruby
NullAndVoid::Maybe(call_some_method_that_could_return_nils,
                   :as => NullMyCustomObject)
```

Of course at this point it's even more verbose than just using `||` but it's
included for completeness.

### Include Into Your Objects (Optional) ######################################

You can add Null Object creation to your class by including
`NullAndVoid::ModelSupport`.

```ruby
class User
  include NullAndVoid::ModelSupport

  def admin?
    type == 'admin'
  end
end
```

This will endow your class with two methods `.as_null_object` and
`#as_null_object`. Both of which return either the Null Object for that class
(eg `NullUser`) or the generic `NullAndVoid::NullObject`.

Now, when calling:

```ruby
User.as_null_object
```

or:

```ruby
User.new.as_null_object
```

Will return:

```ruby
NullUser.instance
```

Issues
------

If you have problems, please create a [Github issue](issues).

Credits
-------

![thekompanee](http://www.thekompanee.com/public_files/kompanee-github-readme-logo.png)

null_and_void is maintained by [The Kompanee, Ltd.](http://www.thekompanee.com)

The names and logos for The Kompanee are trademarks of The Kompanee, Ltd.

License
-------

null_and_void is Copyright &copy; 2013 The Kompanee. It is free software, and may be redistributed under the terms specified in the LICENSE file.
