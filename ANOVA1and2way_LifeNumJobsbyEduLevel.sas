*Problem 2 [10 marks]
One measure of the health of a national economy is how quickly it creates jobs. One aspect of this
issue is the number of jobs individual hold. As	part of a study on job tenure, a survey
was conducted wherein Americans aged between 17 and 45 were asked how many jobs they 
have held in their lifetimes. Also recorded were gender and educational attainment. 
 The categories are:
     Less than high school (E1)
     High school (E2)
     Some college/university but not degree   (E3)
     At least one university    (E4)
   
File: Comparing the Lifetime Number of Jobs by Educational Level	 (Organize 
        Data by Gender and Education)

 A. Test to determine whether there is interaction between gender and education 
               in holding jobs.									
 B. Test to determine whether there are differences in holding jobs between men
                and women.
 C. Test to determine whether there are differences in holding jobs between the 
                educational levels.;
                

ods graphics on;
Title "Two-way Anova Analysis to determine whether job tenure varies by Education Level and Gender";
Proc glm data=WORK.JOBSBY_EDU_GENDER_A3;
 Class Education Gender;
 Model Jobs = Education Gender Education*Gender /ss3;
 Lsmeans Education*Gender / slice=Education;
Run;
Quit;
Ods graphics off;


