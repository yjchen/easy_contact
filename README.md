## EasyContact

This is a very simple contact system for Rails. Because it is so simple, you should fork and modify it for your own purpose.

This gem is used in my other projects, thus, it will be kept updated, albeit slowly.

## Install

    rails generate easy_contact:migration
    rake db:migrate
    rake db:test:prepare

## Basic Usage

  You need to define __acts_as_contactable__ in a contact model like this:

    class User < ActiveRecord::Base
      acts_as_contactable
    end

  You can manage contact information like this:

    user.addresses
    user.phones

## Entry

  Each information is stored in an entry, no matter it is an address or a phone number. EasyContact use STI to create classes of address and phone. An entry contains these fields:

    type: string
    label: string
    content: text
    extra: string
    addition: string
    country: string
    locale: string
    primary: boolean
  
  All of them are in string format. The **type** defines this entry an address or a phone number. The use of other fields depend on the type.

  **country** is used in address and phone type. It is set as 2-letter abbreviation of country like US, UK.

  **locale** set the language of this entry. A person might have English and Chinese name.

  **primary** specify the main entry of a type, for example, the main address of a person.

### Name

  It doesn't care the order of first and last name, or suffix and middle name. Just a string of the name this person use. Thus, it is your choice to put the name as 'John Doe' or 'Doe, John'.

    Content: string of name
    Label: 'fullname', 'nickname'
    Extra: not in use
    Addition: not in use

### Address

  It is in a free form for address. Think the address in the name card. 

    Content: string of address
    Label: 'home', 'office'
    Extra: not in use
    Addition: not in use

### Phone

  It is in a free form of address. Thus, you can use 1-545-8342 or (545)8743. There is no need to put country code. The code can be derived from country field.

    Content: string of phone number
    Label: 'home', 'office'
    Extra: not in use
    Addition: not in use

### Employment

  It is in a free form of employment

    Content: string of employer (company, organization)
    Label: no predefined
    Extra: title of this employment
    Addition: year during this employment in free form, ex. 1998-2001.

### Birthday

  It is in seconds. Use __to_i__ to convert a date into seconds. Time zone is ignored. To avoid problem, always use UTC even if you are not born in UTC time zone.

    Content: string in seconds
    Label: no predefined
    Extra: not in use
    Addition: not in use

### Email

  It is in a free form of email

    Content: string of email
    Label: no predefined
    Extra: not in use
    Addition: not in use

### Website

  It is in a free form of website

    Content: string of email
    Label: no predefined
    Extra: not in use
    Addition: not in use

### Instant Messenger

  It is in a free form of website

    Content: string of instant messenger ID
    Label: 'google talk', 'skype', 'yahoo', 'msn', 'jabber'
    Extra: not in use
    Addition: not in use

## License

MIT
