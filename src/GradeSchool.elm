module GradeSchool exposing (addStudent, allStudents, empty, studentsInGrade)

import Dict exposing (Dict)


type alias Grade =
    Int


type alias Student =
    String


type alias Students =
    List Student


type alias Roster =
    Dict Grade Students


empty : Roster
empty =
    Dict.empty


addStudent : Grade -> Student -> Roster -> Roster
addStudent grade student roster =
    Dict.update grade (addToStudentsList student) roster


addToStudentsList : Student -> Maybe Students -> Maybe Students
addToStudentsList newStudent students =
    students
        |> Maybe.withDefault []
        |> (::) newStudent
        -- Now, eager sort
        |> List.sort
        |> Just


studentsInGrade : Grade -> Roster -> Students
studentsInGrade grade roster =
    Dict.get grade roster |> Maybe.withDefault []


allStudents : Roster -> List ( Grade, Students )
allStudents roster =
    Dict.toList roster
