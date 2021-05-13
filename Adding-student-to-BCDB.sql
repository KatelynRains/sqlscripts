

Insert into Students (Firstname, Lastname, Address, City, StateCode, Zip, AssessmentScore)
Values ('Katelyn', 'Rains', '921 highknoll ct', 'Villa Hills', 'KY', '41017', 90);

Insert into Assessments(StudentId, Topic, score)
values ((Select Id from Students where Firstname = 'Katelyn'), 'Git', 100);