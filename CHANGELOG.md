Version v1.5.0 - May 12, 2015
================================================================================

Added
--------------------------------------------------------------------------------
  * id to Persistable

Version v1.4.0 - May 12, 2015
================================================================================

Added
--------------------------------------------------------------------------------
  * NullAndVoid::Persistable

Version v1.3.2 - May 5, 2015
================================================================================

Fixed
--------------------------------------------------------------------------------
  * to_json to accept arguments

Version v1.3.1 - March 26, 2015
================================================================================

Added
--------------------------------------------------------------------------------
  * deploy script
  * circle.yml
  * Rubygems settings
  * Rubocop config

Uncategorized
--------------------------------------------------------------------------------
  * Add badges
  * Fix spec for better matching on Travis
  * Add Travis Integration
  * Convert to RSpec 3.0 and integrate CodeClimate test reporter

Version v1.3.0 - March 1, 2014
================================================================================

  * Remove dependency on ActiveSupport
  * Fix README type
  * Fix Image on README
  * Update README.md

Version v1.2 - April 17, 2013
================================================================================

  * Allow Null Objects to be rationalized
  * Null Objects can be converted into Complex numbers
  * Allow null objects to inspect themselves
  * Fix spelling mistake
  * Upgrade rspectacular

Version v1.1.4 - April 17, 2013
================================================================================

  * Date.today has been deprecated in gemspecs
  * Calling #to_json on a null object should return the string 'null' and not an
    empty string

Version v1.1.3 - February 7, 2013
================================================================================

  * Fix ModelSupport to call .instance instead of .new when creating a new
    NullObject

Version v1.1.2 - February 7, 2013
================================================================================

  * Singleton is not scoped to NullAndVoid

Version v1.1.1 - February 3, 2013
================================================================================

  * Fix paths to modules in NullAndVoid::Nullified

Version v1.1.0 - February 3, 2013
================================================================================

  * Add Introspectable#null_object?

Version v1.0.0 - February 3, 2013
================================================================================

  * Turn maybies into a module rather than adding it directly to NullAndVoid
  * Fix wording on the 'Maybies' section of the README so that it sounds better
  * Fix README punctuation
  * Github prefers anchors with dashes in place of spaces
  * Add a link for the Null Object pattern wikipedia article
  * Add 'maybies'
  * Reword some of the README so that it sounds like I actually know English
  * Add the master require statement
  * Use the new Nullified module in the base NullObject class
  * Add NullAndVoid::Nullified
  * Add NullAndVoid::ModelSupport
  * Add ModelSupport
  * Rename Falsification to Falsifiable
  * Add Falsification to the base NullObject
  * Add Falsification#!
  * Add Falsification#nil?
  * Add Falsification#present?
  * Add Falsification#blank?
  * Add the Falsification module
  * Add Convertible#to_model to covert the Null Object into the object it is
    impersonating if possible
  * Add activesupport as a dependency so we can work with module strings in
    Convertible#to_model
  * Wrap the Convertible test class in a module named FooBar so we can test
    #to_model properly
  * Add Convertible.to_s which returns an empty String
  * Add Convertible.to_xml which returns an empty String
  * Add Convertible.to_json which returns an empty String
  * Add Convertible.to_html which returns an empty String
  * Add Convertible.to_hash which returns an empty Hash
  * Alias Convertible#to_ary to #to_a
  * Add Convertible.to_a which returns an empty Array
  * Add Convertible.to_r which returns 0/1
  * Add Convertible.to_f which returns 0.0
  * Alias Convertible#to_int to #to_i
  * Add Convertible.to_i which returns 0
  * Make the base NullObject 'Convertible
  * Add the Convertible module
  * Move the method missing bit into a 'Stubbable' module
  * Allow NullObject to return itself for all unknown method calls
  * Make NullObject a Singleton
  * Install rspec and rspectacular
  * Add .rvmrc
  * First pass at a README
  * Create gem
  * First commit

