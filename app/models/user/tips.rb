class User

  def mark_as_read(tip_id)
    value = read_tips.to_i | encode_tip(tip_id)
    update_attribute :read_tips, value.to_s
  end
  
  def mark_as_unread(tip_id)
    value = (read_tips.to_i | encode_tip(tip_id)) - encode_tip(tip_id)
    update_attribute :read_tips, value.to_s
  end

  def mark_all_as_read
    update_attribute :read_tips, "all"
  end

  def mark_all_as_unread
    update_attribute :read_tips, "0"
  end

  def has_read?(tip_id)
    read_all? or (read_tips.to_i & encode_tip(tip_id)) != 0
  end

  private

    def encode_tip(tip_id)
      2**tip_id
    end

    def read_all?
      read_tips == "all"
    end

end