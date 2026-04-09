# 02_Remove_Duplicates.py

def remove_duplicates(input_string):
    result = ""

    for char in input_string:
        if char not in result:
            result += char

    return result


# ----------- User Input -----------

user_input = input("Enter a string: ")

if user_input.strip() == "":
    print("Input cannot be empty!")
else:
    output = remove_duplicates(user_input)
    print("Output:", output)