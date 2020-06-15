clc

for i = 1: length(Roll_nos_choices)
    if Roll_nos_choices(i) == Roll_nos_CGPA(i)
        
        sprintf('Roll no %.f ,matched in both files',Roll_nos_choices(i));
    else
        Error_Prone = sprintf('Info about Roll no %.f or %.f are missing in either one of the file',Roll_nos_choices(i),Roll_nos_CGPA(i))
        error('Error, exiting');
    end
end

txt_without_headings = txt(2:end,:);
sorted_txt = txt_without_headings(sort_index,:);



for i = 1: N_students-1
    
    for j = 2: total_choices
        
        if contains(sorted_txt(i,j),txt3(j-1,2))
            Assigned_proj_roll_nos = [txt3(j-1,2) sorted_Roll_nos(i)]
            txt3(j-1,2) = {'Assigned'};
            
            break
            
        end
        
    end
    
end