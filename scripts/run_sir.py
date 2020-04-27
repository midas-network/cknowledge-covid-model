import sys
import covid.util as util

if __name__ == "__main__": 
    place = sys.argv[1]
    data = util.load_state_data()

    start='2020-03-15'

    util.run_place(data, place, start=start)
    util.gen_forecasts(data, place, start=start, show=False)