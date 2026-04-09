# 01_Time_Converter.py

def convert_minutes(minutes):
    hours = minutes // 60
    mins = minutes % 60

    if hours == 0:
        return f"{mins} minutes"
    elif mins == 0:
        return f"{hours} hrs"
    elif hours == 1:
        return f"{hours} hr {mins} minutes"
    else:
        return f"{hours} hrs {mins} minutes"


# ----------- User Input -----------

try:
    minutes = int(input("Enter number of minutes: "))
    
    if minutes < 0:
        print("Please enter a positive number.")
    else:
        result = convert_minutes(minutes)
        print("Output:", result)

except ValueError:
    print("Invalid input! Please enter a valid number.")