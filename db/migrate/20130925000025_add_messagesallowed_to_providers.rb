class AddMessagesallowedToProviders < ActiveRecord::Migration
  def change
    add_column :providers, :messagesallowd, :bool
  end
end
