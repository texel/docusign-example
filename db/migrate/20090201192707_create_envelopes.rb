class CreateEnvelopes < ActiveRecord::Migration
  def self.up
    create_table :envelopes do |t|
      t.string   :account_id
      t.string   :recipient
      t.string   :subject
      t.string   :email_blurb
      
      t.string   :document_file_name
      t.string   :document_content_type
      t.integer  :document_file_size
      t.datetime :document_updated_at
      
      t.string   :state
      
      t.timestamps
    end
  end

  def self.down
    drop_table :envelopes
  end
end
