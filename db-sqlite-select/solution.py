import sqlite3
import sys

OK = 0
WA = 1
PE = 4
RE = 5
CF = 6

def get_rows_by_select(query):
    con = sqlite3.connect('../db.sqlite')
    cur = con.cursor()
    result = cur.execute(' '.join(query)).fetchall()
    con.close()
    return result


if __name__ == "__main__":
    try:
        with open('teacher_solution.sql', 'r') as f:
            teacher_solution = f.readlines()
        with open('student_solution.sql', 'r') as f:
            student_solution = f.readlines()

        teacher_result = get_rows_by_select(teacher_solution)
        student_result = get_rows_by_select(student_solution)

        if teacher_result == student_result:
            sys.exit(OK)
        else:
            sys.exit(WA)
    except Exception as e:
        print(e)
        sys.exit(RE)
