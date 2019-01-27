from time import localtime, strftime

def get_time_index():
    time_index = strftime("%Y_%m_%d_%H_%M_%S", localtime())
    return time_index
