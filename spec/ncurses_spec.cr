require "./spec_helper"

describe Ncurses do
  # TODO: Write tests
  describe "#initscr" do
    it "Initializes." do
      LibCurses.initscr
    end
  end
end
