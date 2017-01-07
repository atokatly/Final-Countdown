module ApplicationHelper

  def current_round
    round = Round.find_by(active_round:true)
  end

  #move to userhelper
    def pitch_order
      pitch_votes = {}
      @active_round = current_round
      @round_id = @active_round.id
      @pitches = Pitch.all

      @pitches.each do |pitch|
        project = pitch.title
        @round_pitches = pitch.preferences.where(round_id:@round_id)
        total = 0
         @round_pitches.each do |pitch|
              total += pitch.rank
              pitch_votes[project] = total
              total
            end
            pitch_votes
            order_votes = pitch_votes.sort_by {|k,v| v}.reverse
          end
        pitch_votes
      end

      def change_current_round_status(old_round)
        old_round.active_round=false
      end

      def round_number
        round = current_round.round_num
        if round == 0
          return 1
        elsif round == 1
          return 2
        else
          return 0
        end
      end
end
