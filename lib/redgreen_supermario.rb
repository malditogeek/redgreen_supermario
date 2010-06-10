module Color
  class << self
    alias_method :orig_color, :color
  end
  def self.color(color)
   Thread.new {
      case color
        when :green  then system("/usr/bin/afplay #{File.expand_path('../../sounds/smb_coin.wav', __FILE__)}")
        when :yellow then system("/usr/bin/afplay #{File.expand_path('../../sounds/smb_bump.wav', __FILE__)}")
        when :red    then system("/usr/bin/afplay #{File.expand_path('../../sounds/smb_bowserfalls.wav', __FILE__)}")
      end
    }
    self.orig_color(color)
  end
end
