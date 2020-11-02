class ResetAllTagCacheCounters < ActiveRecord::Migration[6.0]
  def up
    Tag.all.each do |tag|
      tag.reset_counters(tag.id, :listings)
    end
  end

  def down
  end
  
end
