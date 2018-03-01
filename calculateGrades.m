load classGrades
gradesOnly = namesAndGrades(:,2:end);
assignmentMeans = nanmean(gradesOnly);
meanMatrix = ones(1,15)' * assignmentMeans;
curvedGrads = 3.5 * (gradesOnly ./ meanMatrix);
check = nanmean(curvedGrads);
curvedGrads(curvedGrads>5) = 5;
totalGrade = ceil(nanmean(curvedGrads,2));
letters = 'FDCBA';
letterGrades = letters(totalGrade);
disp(letterGrades)
