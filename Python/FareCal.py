Rates = { "Economy" : 10, "Premium" : 18, "SUV" : 25}

def calculate_fare(km, vehicle, hr):
    if vehicle not in Rates:
        print("Service is not Available")
        return None

    base_price = km * Rates[vehicle]

    if hour >=17 and hour <=20 :
        surge=1.5    
    else:
        surge=1
    
    final_price= base_price * surge
    return final_price

try:
    distance = float(input("Enter distance in km : "))
    vehicle_type = input("Enter vehicle type (Economy/Premium/SUV) : ")
    hour = int(input("Enter Hour of day (0-23) : "))

    res=calculate_fare(distance,vehicle_type,hour)

    if res is not None:
        print("/n---- Ride Receipt ----")
        print("Distance : ", distance, "km")
        print("Vehicle : ",vehicle_type)
        print("Hour : ",hour)
        print("Total Fare : ₹",res) 

except:
    print("Input is invalid, re-enter the correct values ")
