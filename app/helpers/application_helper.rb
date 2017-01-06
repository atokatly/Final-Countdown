module ApplicationHelper

  def pitch_order
    pitch_votes = {}
    @pitches = Pitch.all
    @pitches.each do |pitch|
        pitch.title
        total = 0
        pitch.preferences.each do |vote|
          total += vote.rank
         end
           pitch_votes[pitch.title] = total
          total
     end
     pitch_votes
     order_votes = pitch_votes.sort_by {|k,v| v}.reverse
   end

end
