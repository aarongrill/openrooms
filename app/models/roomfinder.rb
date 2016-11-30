class RoomFinder
  attr_accessor :day, :period, :rooms

#OPENROOMS = {"Monday A 1" => [501, 412, 404],
#  "Monday A 2" => [404, 501,666],
#  "Monday A 3" => [123,456,789] }

OPENROOMS = {"A" => {
                    "Monday" => {
                        "1" => [501, 412, 404],
                        "2" => [404, 6787, 6756],
                        "3" => [567, 654, 321],
                        "4B" => [201,301,401]
                    },
                    "Tuesday" => {

                    },
                    "Wednesday" => {

                    }
                  },
              "B" => {
                      "Monday" => {
                        "4B" => [111,222,333]
                      }
              }
          }
  def initialize (day, period, week)
      self.rooms = OPENROOMS[week][day][period]
  end

end
