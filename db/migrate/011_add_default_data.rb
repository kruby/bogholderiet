class AddDefaultData < ActiveRecord::Migration
  
def self.up
Menu.create( :name => 'Menus', :title => 'Menus', :body => 'Link til Menus', :active => 'true' )
Menu.create( :name => 'Contents', :title => 'Contents', :body => 'Link til Contents', :active => 'true' )
Menu.create( :name => 'Newsarchives', :title => 'Newsarchives', :body => 'Link til Newsarchives', :active => 'true' )
Menu.create( :name => 'Users', :title => 'Users', :body => 'Link til Users', :active => 'true' )
Menu.create( :name => 'Pages', :title => 'Pages', :body => 'Link til Pages', :active => 'true' )
Menu.create( :name => 'Posts', :title => 'Posts', :body => 'Link til Posts', :active => 'true' )
Menu.create( :name => 'Bloggen', :title => 'Bloggen', :body => 'Link til bloggen', :active => 'true' )
Menu.create( :name => 'Relations', :title => 'Relations', :body => 'Link til Relationer', :active => 'true' )
Menu.create( :name => 'Assets', :title => 'Assets', :body => 'Link til Assets', :active => 'true' )
Page.create( :name => 'Forside', :title => 'Forside',
:body => 'h1. Velkommen på forsiden

Her har vi forsiden', :active => 'true' )

Page.create( :name => 'Om os', :title => 'Om os',
:body => 'h1. Om os

Her kan du høre mere om os', :active => 'true' )

Page.create( :name => 'Kontakt', :title => 'Kontakt',
:body => 'h1. Kontakt

Sådan kommer du i kontakt med os:', :active => 'true' )

Post.create( :title => 'Første indlæg', :body => 'Hermed mit første bidrag til bloggen.', :user_id => 1, :active => 'true' )



Content.update(1, {:controller_name => 'menus', :category => 'Admin', :position => '90', :active => 'true'})
Content.update(2, {:controller_name => 'contents', :category => 'Admin', :position => '100', :active => 'true'})
Content.update(3, {:controller_name => 'newsarchives', :category => 'Editor', :position => '120', :active => 'true'})
Content.update(4, {:controller_name => 'users', :category => 'Admin', :position => '130', :active => 'true'})
Content.update(5, {:controller_name => 'pages', :category => 'Admin', :position => '140', :active => 'true'})
Content.update(6, {:controller_name => 'posts', :category => 'Admin', :position => '150', :active => 'true'})
Content.update(7, {:controller_name => 'bloggen', :category => 'User', :position => '160', :active => 'true'})
Content.update(8, {:controller_name => 'relations', :category => 'Editor', :position => '170', :active => 'true'})
Content.update(9, {:controller_name => 'assets', :category => 'Admin', :position => '180', :active => 'true'})
Content.update(10, {:controller_name => 'pages', :category => 'Admin', :position => '1', :parent_id => '5', :active => 'true', :admin => 'false', :redirect => 'true', :controller_redirect => 'viewer', :action_redirect => 'forside'})
Content.update(11, {:controller_name => 'pages', :category => 'Admin', :position => '2', :parent_id => '5', :active => 'true', :admin => 'false', :redirect => 'true', :controller_redirect => 'viewer', :action_redirect => 'show'})
Content.update(12, {:controller_name => 'pages', :category => 'Admin', :position => '3', :parent_id => '5', :active => 'true', :admin => 'false', :redirect => 'true', :controller_redirect => 'viewer', :action_redirect => 'show'})

end

def self.down
ActiveRecord::Base.connection.execute('TRUNCATE pages')
ActiveRecord::Base.connection.execute('TRUNCATE menus')
ActiveRecord::Base.connection.execute('TRUNCATE contents')
end

end