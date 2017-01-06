module ApplicationHelper

    def current_round
      round = Round.find_by(active_round:true)
    end

    def pitch_order
      pitch_votes = {}
      @active_round = Round.find_by(active_round:true)
      @round_id = @active_round.id
      @pitches = Pitch.all

      @pitches.each do |pitch|
        project = pitch.title
        p project
        @round_pitches = pitch.preferences.where(round_id:@round_id)
        p @round_pitches
        total = 0
         @round_pitches.each do |pitch|
           p pitch
              total += pitch.rank
              pitch_votes[project] = total
              total
            end
            pitch_votes
            order_votes = pitch_votes.sort_by {|k,v| v}.reverse
            p total
          end
        pitch_votes
      end

end
