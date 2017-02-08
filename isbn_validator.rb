@@ -73,7 +73,12 @@ def contains_nonvalids?(num)


 
  


 
 def correct_x?(num) 


 
  


 
-	num.upcase.index("X") == num.length - 1 


 
+	if num.upcase.include? "X" 


 
+ 


 
+		num.upcase.index("X") == num.length - 1 


 
+	end 


 
+	 


 
+	true 


 
 end 


 
  


 
 def is_valid_ISBN_10?(num) 
 
@@ -118,7 +123,7 @@ def is_valid_ISBN?(num)


 
 end 


 
  


 
 #puts remove_spaces_and_dashes("0471958697") 


 
-#print correct_x?("877195869x") 


 
-#print correct_checksum?("0471958697") 


 
+print correct_x?("0471958697") 


 
+print correct_checksum?("0471958697") 


 
 # puts calculate_checksum("9782207258040") 


 
 # print calculate_checksum("9780470059029")  