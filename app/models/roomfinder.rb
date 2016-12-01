class RoomFinder
  attr_accessor :week, :day, :period, :rooms

#OPENROOMS = {"Monday A 1" => [501, 412, 404],
#  "Monday A 2" => [404, 501,666],
#  "Monday A 3" => [123,456,789] }

OPENROOMS = {"A" => {
                    "Monday" => {
                        "1" => [501, 412, 404],
                        "2" => [404, 6787, 6756],
                        "3" => [567, 654, 321],
                        "4A" => [201,301,401],
                        "4B" => [201,301,401],
                        "5A" => [201,301,401],
                        "5B" => [201,301,401],
                        "6A" => [201,301,401],
                        "6B" => [201,301,401],
                        "7" => [201,301,401],
                        "8" => [201,301,401]
                    },
                    "Tuesday" => {
                      "1" => [501, 412, 404],
                      "2" => [404, 6787, 6756],
                      "3" => [567, 654, 321],
                      "4A" => [201,301,401],
                      "4B" => [201,301,401],
                      "5A" => [201,301,401],
                      "5B" => [201,301,401],
                      "6A" => [201,301,401],
                      "6B" => [201,301,401],
                      "7" => [201,301,401],
                      "8" => [201,301,401]
                    },
                    "Wednesday" => {
                      "1" => [501, 412, 404],
                      "2" => [404, 6787, 6756],
                      "3" => [567, 654, 321],
                      "4A" => [201,301,401],
                      "4B" => [201,301,401],
                      "5A" => [201,301,401],
                      "5B" => [201,301,401],
                      "6A" => [201,301,401],
                      "6B" => [201,301,401],
                      "7" => [201,301,401],
                      "8" => [201,301,401]
                    },
                    "Thursday" => {
                      "1" => [501, 412, 404],
                      "2" => [404, 6787, 6756],
                      "3" => [567, 654, 321],
                      "4A" => [201,301,401],
                      "4B" => [201,301,401],
                      "5A" => [201,301,401],
                      "5B" => [201,301,401],
                      "6A" => [201,301,401],
                      "6B" => [201,301,401],
                      "7" => [201,301,401],
                      "8" => [201,301,401]
                    },
                    "Friday" => {
                      "1" => [501, 412, 404],
                      "2" => [404, 6787, 6756],
                      "3" => [567, 654, 321],
                      "4A" => [201,301,401],
                      "4B" => [201,301,401],
                      "5A" => [201,301,401],
                      "5B" => [201,301,401],
                      "6A" => [201,301,401],
                      "6B" => [201,301,401],
                      "7" => [201,301,401],
                      "8" => [201,301,401]
                    }
                  },
              "B" => {
                "Monday" => {
                    "1" => [501, 412, 404],
                    "2" => [404, 6787, 6756],
                    "3" => [567, 654, 321],
                    "4A" => [201,301,401],
                    "4B" => [201,301,401],
                    "5A" => [201,301,401],
                    "5B" => [201,301,401],
                    "6A" => [201,301,401],
                    "6B" => [201,301,401],
                    "7" => [201,301,401],
                    "8" => [201,301,401]
                },
                "Tuesday" => {
                  "1" => [501, 412, 404],
                  "2" => [404, 6787, 6756],
                  "3" => [567, 654, 321],
                  "4A" => [201,301,401],
                  "4B" => [201,301,401],
                  "5A" => [201,301,401],
                  "5B" => [201,301,401],
                  "6A" => [201,301,401],
                  "6B" => [201,301,401],
                  "7" => [201,301,401],
                  "8" => [201,301,401]
                },
                "Wednesday" => {
                  "1" => [501, 412, 404],
                  "2" => [404, 6787, 6756],
                  "3" => [567, 654, 321],
                  "4A" => [201,301,401],
                  "4B" => [201,301,401],
                  "5A" => [201,301,401],
                  "5B" => [201,301,401],
                  "6A" => [201,301,401],
                  "6B" => [201,301,401],
                  "7" => [201,301,401],
                  "8" => [201,301,401]
                },
                "Thursday" => {
                  "1" => [501, 412, 404],
                  "2" => [404, 6787, 6756],
                  "3" => [567, 654, 321],
                  "4A" => [201,301,401],
                  "4B" => [201,301,401],
                  "5A" => [201,301,401],
                  "5B" => [201,301,401],
                  "6A" => [201,301,401],
                  "6B" => [201,301,401],
                  "7" => [201,301,401],
                  "8" => [201,301,401]
                },
                "Friday" => {
                  "1" => [501, 412, 404],
                  "2" => [404, 6787, 6756],
                  "3" => [567, 654, 321],
                  "4A" => [201,301,401],
                  "4B" => [201,301,401],
                  "5A" => [201,301,401],
                  "5B" => [201,301,401],
                  "6A" => [201,301,401],
                  "6B" => [201,301,401],
                  "7" => [201,301,401],
                  "8" => [201,301,401]
              }
          }
        }
  def initialize (week, day, period)
    self.week = week
    self.day = day
    self.period = period
      self.rooms = OPENROOMS[week][day][period]
  end

end
