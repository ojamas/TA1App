# 
# Web Application for Students to apply for TA and Grader positions within Computer Science Department
# 
# Authors: Adam Gordon & Orin James
# Advisor: Professor Mohammad Irfan
# Date Created: 5/16/2015
# Last Update: 5/16/2015
# Home Page: /students/new (form for student application)
# Other Pages:
#           /students/index (application confirmation page)
#           /students/admin (view for finding potential TAs for use by Admins, requires authentication)
#           /students/destroy (page confirming clearing of database tables)


class StudentsController < ApplicationController
  # requires authentication for admin page (name = admin, password = cs123)
  http_basic_authenticate_with :name => "admin", :password => "cs123", :only => :admin
  # requires authentication for clearing database tables (destroy method) (name = admin, password = destroy)
  http_basic_authenticate_with :name => "admin", :password => "destroy", :only => :destroy
  
  def new
    @student = Student.new
    @language_proficiency = LanguageProficiency.new
    @willing_to_ta_languages = WillingToTaLanguage.new
    @taken = Taken.new
    @willing_to_ta = WillingToTa.new
    @willing_to_grade = WillingToGrade.new
    @past_ta = PastTa.new
  end
  
  # method for convenient viewing of data
  def admin
    @courses = Course.all
    @student = Student.all
    @taken = Taken.all
    @willing_to_ta = WillingToTa.all
    @willing_to_grade = WillingToGrade.all
    @willing_to_ta_languages = WillingToTaLanguage.all
    @past_ta = PastTa.all
    @language_proficiency = LanguageProficiency.all
  end
  
  # method for storing of Form values
  def create
    puts "create method"
    student_id = params[:student_id]
    
    #================================================================================================================
    #============================================= Student Handlers =================================================
    #================================================================================================================
    
    student_map = {"student_id" => student_id, "student_name" => params[:student_name],
      "major" => params[:major], "minor" => params[:minor], "other_information" => params[:other_information], 
      "class_year_st" => params[:class_year_id], "hours_st" => params[:hours], "qr_st" => params[:qr]}
        
    newStudentRow = Student.new(student_map)
    
    #================================================================================================================
    #========================================= Language Proficiency Handlers ========================================
    #================================================================================================================
    
    java_proficiency_map = {"student_id_lp" => student_id, "language_lp" => "Java",
      "proficiency_level_lp" => params[:java_proficiency]} 
    newJavaProficiencyRow = LanguageProficiency.new(java_proficiency_map)
    
    python_proficiency_map = {"student_id_lp" => student_id, "language_lp" => "Python",
      "proficiency_level_lp" => params[:python_proficiency]}    
    newPythonProficiencyRow = LanguageProficiency.new(python_proficiency_map)

    c_proficiency_map = {"student_id_lp" => student_id, "language_lp" => "C",
      "proficiency_level_lp" => params[:c_proficiency]}    
    newCProficiencyRow = LanguageProficiency.new(c_proficiency_map)
    
    cpp_proficiency_map = {"student_id_lp" => student_id, "language_lp" => "C++",
      "proficiency_level_lp" => params[:cpp_proficiency]}    
    newCPPProficiencyRow = LanguageProficiency.new(cpp_proficiency_map)
    
    objective_c_proficiency_map = {"student_id_lp" => student_id, "language_lp" => "Objective-C",
      "proficiency_level_lp" => params[:objective_c_proficiency]}    
    newObjectiveCProficiencyRow = LanguageProficiency.new(objective_c_proficiency_map)
    
    ruby_proficiency_map = {"student_id_lp" => student_id, "language_lp" => "Ruby",
      "proficiency_level_lp" => params[:ruby_proficiency]}    
    newRubyProficiencyRow = LanguageProficiency.new(ruby_proficiency_map)
    
    other_proficiency_map = {"student_id_lp" => student_id, "language_lp" => params[:other],
      "proficiency_level_lp" => params[:other_proficiency]}    
    newOtherProficiencyRow = LanguageProficiency.new(other_proficiency_map)

    
    if !params[:java_proficiency].nil?
        newJavaProficiencyRow.save
    end
    if !params[:python_proficiency].nil?
        newPythonProficiencyRow.save
    end
    if !params[:c_proficiency].nil?
        newCProficiencyRow.save
    end
    if !params[:cpp_proficiency].nil?
        newCPPProficiencyRow.save
    end
    if !params[:objective_c_proficiency].nil?
        newObjectiveCProficiencyRow.save
    end
    if !params[:ruby_proficiency].nil?
        newRubyProficiencyRow.save
    end
    if !params[:other_proficiency].nil?
        newOtherProficiencyRow.save
    end
    
    #================================================================================================================
    # ==================================== Willing To TA Language Handlers ==========================================
    #================================================================================================================
 
    java_wttl_map = {"student_id_wttl" => student_id, "language_wttl" => "Java"}
    newJavaWTTLRow = WillingToTaLanguage.new(java_wttl_map)
    if !params[:java_wttl].nil?
      newJavaWTTLRow.save
    end
    python_wttl_map = {"student_id_wttl" => student_id, "language_wttl" => "Python"}
    newPythonWTTLRow = WillingToTaLanguage.new(python_wttl_map)
    if !params[:python_wttl].nil?
      newPythonWTTLRow.save
    end
    c_wttl_map = {"student_id_wttl" => student_id, "language_wttl" => "C"}
    newCWTTLRow = WillingToTaLanguage.new(c_wttl_map)
    if !params[:c_wttl].nil?
      newCWTTLRow.save
    end
    cpp_wttl_map = {"student_id_wttl" => student_id, "language_wttl" => "C++"}
    newCPPWTTLRow = WillingToTaLanguage.new(cpp_wttl_map)
    if !params[:cpp_wttl].nil?
      newCPPWTTLRow.save
    end
    objective_c_wttl_map = {"student_id_wttl" => student_id, "language_wttl" => "Objective-C"}
    newObjectiveCWTTLRow = WillingToTaLanguage.new(objective_c_wttl_map)
    if !params[:objective_c_wttl].nil?
      newObjectiveCWTTLRow.save
    end
    ruby_wttl_map = {"student_id_wttl" => student_id, "language_wttl" => "Ruby"}
    newRubyWTTLRow = WillingToTaLanguage.new(ruby_wttl_map)
    if !params[:ruby_wttl].nil?
      newRubyWTTLRow.save
    end
    other_wttl_map = {"student_id_wttl" => student_id, "language_wttl" => "Other"}
    newOtherWTTLRow = WillingToTaLanguage.new(other_wttl_map)
    if !params[:other_wttl].nil?
      newOtherWTTLRow.save
    end
    #================================================================================================================
    #========================================= Course Taken Handlers ================================================
    #================================================================================================================
    
    c1101_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 1101, "grade_taken" => params[:c1101_grade],
      "instructor_taken" => params[:c1101_instructor]}
    new1101TakenRow = Taken.new(c1101_taken_map)
    if !params[:c1101_taken].nil?
      new1101TakenRow.save
    end
    
    c2101_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 2101, "grade_taken" => params[:c2101_grade],
      "instructor_taken" => params[:c2101_instructor]}
    new2101TakenRow = Taken.new(c2101_taken_map)
    if !params[:c2101_taken].nil?
      new2101TakenRow.save
    end
    
    c2200_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 2200, "grade_taken" => params[:c2200_grade],
      "instructor_taken" => params[:c2200_instructor]}
    new2200TakenRow = Taken.new(c2200_taken_map)
    if !params[:c2200_taken].nil?
      new2200TakenRow.save
    end
    
    c2210_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 2210, "grade_taken" => params[:c2210_grade],
      "instructor_taken" => params[:c2210_instructor]}
    new2210TakenRow = Taken.new(c2210_taken_map)
    if !params[:c2210_taken].nil?
      new2210TakenRow.save
    end
    
    c2300_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 2300, "grade_taken" => params[:c2300_grade],
      "instructor_taken" => params[:c2300_instructor]}
    new2300TakenRow = Taken.new(c2300_taken_map)
    if !params[:c2300_taken].nil?
      new2300TakenRow.save
    end
    
    c2310_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 2310, "grade_taken" => params[:c2310_grade],
      "instructor_taken" => params[:c2310_instructor]}
    new2310TakenRow = Taken.new(c2310_taken_map)
    if !params[:c2310_taken].nil?
      new2310TakenRow.save
    end
    
    c2325_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 2325, "grade_taken" => params[:c2325_grade],
      "instructor_taken" => params[:c2325_instructor]}
    new2325TakenRow = Taken.new(c2325_taken_map)
    if !params[:c2325_taken].nil?
      new2325TakenRow.save
    end
    
    c2400_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 2400, "grade_taken" => params[:c2400_grade],
      "instructor_taken" => params[:c2400_instructor]}
    new2400TakenRow = Taken.new(c2400_taken_map)
    if !params[:c2400_taken].nil?
      new2400TakenRow.save
    end
    
    c2505_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 2505, "grade_taken" => params[:c2505_grade],
      "instructor_taken" => params[:c2505_instructor]}
    new2505TakenRow = Taken.new(c2505_taken_map)
    if !params[:c2505_taken].nil?
      new2505TakenRow.save
    end
    
    c3215_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 3215, "grade_taken" => params[:c3215_grade],
      "instructor_taken" => params[:c3215_instructor]}
    new3215TakenRow = Taken.new(c3215_taken_map)
    if !params[:c3215_taken].nil?
      new3215TakenRow.save
    end
    
    c3225_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 3225, "grade_taken" => params[:c3225_grade],
      "instructor_taken" => params[:c3225_instructor]}
    new3225TakenRow = Taken.new(c3225_taken_map)
    if !params[:c3225_taken].nil?
      new3225TakenRow.save
    end
    
    c3235_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 3235, "grade_taken" => params[:c3235_grade],
      "instructor_taken" => params[:c3235_instructor]}
    new3235TakenRow = Taken.new(c3235_taken_map)
    if !params[:c3235_taken].nil?
      new3235TakenRow.save
    end
    
    c3250_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 3250, "grade_taken" => params[:c3250_grade],
      "instructor_taken" => params[:c3250_instructor]}
    new3250TakenRow = Taken.new(c3250_taken_map)
    if !params[:c3250_taken].nil?
      new3250TakenRow.save
    end
    
    c3300_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 3300, "grade_taken" => params[:c3300_grade],
      "instructor_taken" => params[:c3300_instructor]}
    new3300TakenRow = Taken.new(c3300_taken_map)
    if !params[:c3300_taken].nil?
      new3300TakenRow.save
    end
    
    c3310_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 3310, "grade_taken" => params[:c3310_grade],
      "instructor_taken" => params[:c3310_instructor]}
    new3310TakenRow = Taken.new(c3310_taken_map)
    if !params[:c3310_taken].nil?
      new3310TakenRow.save
    end
    
    c3350_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 3350, "grade_taken" => params[:c3350_grade],
      "instructor_taken" => params[:c3350_instructor]}
    new3350TakenRow = Taken.new(c3350_taken_map)
    if !params[:c3350_taken].nil?
      new3350TakenRow.save
    end
    
    c3355_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 3355, "grade_taken" => params[:c3355_grade],
      "instructor_taken" => params[:c3355_instructor]}
    new3355TakenRow = Taken.new(c3355_taken_map)
    if !params[:c3355_taken].nil?
      new3355TakenRow.save
    end
    
    c3400_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 3400, "grade_taken" => params[:c3400_grade],
      "instructor_taken" => params[:c3400_instructor]}
    new3400TakenRow = Taken.new(c3400_taken_map)
    if !params[:c3400_taken].nil?
      new3400TakenRow.save
    end
    
    c3415_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 3415, "grade_taken" => params[:c3415_grade],
      "instructor_taken" => params[:c3415_instructor]}
    new3415TakenRow = Taken.new(c3415_taken_map)
    if !params[:c3415_taken].nil?
      new3415TakenRow.save
    end
    
    c3425_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 3425, "grade_taken" => params[:c3425_grade],
      "instructor_taken" => params[:c3425_instructor]}
    new3425TakenRow = Taken.new(c3425_taken_map)
    if !params[:c3425_taken].nil?
      new3425TakenRow.save
    end
    
    c3435_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 3435, "grade_taken" => params[:c3435_grade],
      "instructor_taken" => params[:c3435_instructor]}
    new3435TakenRow = Taken.new(c3435_taken_map)
    if !params[:c3435_taken].nil?
      new3435TakenRow.save
    end
    
    c3440_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 3440, "grade_taken" => params[:c3440_grade],
      "instructor_taken" => params[:c3440_instructor]}
    new3440TakenRow = Taken.new(c3440_taken_map)
    if !params[:c3440_taken].nil?
      new3440TakenRow.save
    end
    
    c4000_taken_map = {"student_id_taken" => student_id, "course_id_taken" => 4000, "grade_taken" => params[:c4000_grade],
      "instructor_taken" => params[:c4000_instructor]}
    new4000TakenRow = Taken.new(c4000_taken_map)
    if !params[:c4000_taken].nil?
      new4000TakenRow.save
    end
    
    #================================================================================================================
    #======================================= Willing to TA Course Handlers ==========================================
    #================================================================================================================
    
    c1101_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 1101}
    new1101WTTARow = WillingToTa.new(c1101_wtta_map)
    if !params[:c1101_wtta].nil?
      new1101WTTARow.save
    end
    
    c2101_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 2101}
    new2101WTTARow = WillingToTa.new(c2101_wtta_map)
    if !params[:c2101_wtta].nil?
      new2101WTTARow.save
    end
    
    c2200_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 2200}
    new2200WTTARow = WillingToTa.new(c2200_wtta_map)
    if !params[:c2200_wtta].nil?
      new2200WTTARow.save
    end
    
    c2210_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 2210}
    new2210WTTARow = WillingToTa.new(c2210_wtta_map)
    if !params[:c2210_wtta].nil?
      new2210WTTARow.save
    end
    
    c2300_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 2300}
    new2300WTTARow = WillingToTa.new(c2300_wtta_map)
    if !params[:c2300_wtta].nil?
      new2300WTTARow.save
    end
    
    c2310_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 2310}
    new2310WTTARow = WillingToTa.new(c2310_wtta_map)
    if !params[:c2310_wtta].nil?
      new2310WTTARow.save
    end
    
    c2325_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 2325}
    new2325WTTARow = WillingToTa.new(c2325_wtta_map)
    if !params[:c2325_wtta].nil?
      new2325WTTARow.save
    end
    
    c2400_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 2400}
    new2400WTTARow = WillingToTa.new(c2400_wtta_map)
    if !params[:c2400_wtta].nil?
      new2400WTTARow.save
    end
    
    c2505_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 2505}
    new2505WTTARow = WillingToTa.new(c2505_wtta_map)
    if !params[:c2505_wtta].nil?
      new2505WTTARow.save
    end
    
    c3215_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 3215}
    new3215WTTARow = WillingToTa.new(c3215_wtta_map)
    if !params[:c3215_wtta].nil?
      new3215WTTARow.save
    end
    
    c3225_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 3225}
    new3225WTTARow = WillingToTa.new(c3225_wtta_map)
    if !params[:c3225_wtta].nil?
      new3225WTTARow.save
    end
    
    c3235_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 3235}
    new3235WTTARow = WillingToTa.new(c3235_wtta_map)
    if !params[:c3235_wtta].nil?
      new3235WTTARow.save
    end
    
    c3250_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 3250}
    new3250WTTARow = WillingToTa.new(c3250_wtta_map)
    if !params[:c3250_wtta].nil?
      new3250WTTARow.save
    end
    
    c3300_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 3300}
    new3300WTTARow = WillingToTa.new(c3300_wtta_map)
    if !params[:c3300_wtta].nil?
      new3300WTTARow.save
    end
    
    c3310_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 3310}
    new3310WTTARow = WillingToTa.new(c3310_wtta_map)
    if !params[:c3310_wtta].nil?
      new3310WTTARow.save
    end
    
    c3350_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 3350}
    new3350WTTARow = WillingToTa.new(c3350_wtta_map)
    if !params[:c3350_wtta].nil?
      new3350WTTARow.save
    end
    
    c3355_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 3355}
    new3355WTTARow = WillingToTa.new(c3355_wtta_map)
    if !params[:c3355_wtta].nil?
      new3355WTTARow.save
    end
    
    c3400_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 3400}
    new3400WTTARow = WillingToTa.new(c3400_wtta_map)
    if !params[:c3400_wtta].nil?
      new3400WTTARow.save
    end
    
    c3415_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 3415}
    new3415WTTARow = WillingToTa.new(c3415_wtta_map)
    if !params[:c3415_wtta].nil?
      new3415WTTARow.save
    end
    
    c3425_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 3425}
    new3425WTTARow = WillingToTa.new(c3425_wtta_map)
    if !params[:c3425_wtta].nil?
      new3425WTTARow.save
    end
    
    c3435_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 3435}
    new3435WTTARow = WillingToTa.new(c3435_wtta_map)
    if !params[:c3435_wtta].nil?
      new3435WTTARow.save
    end
    
    c3440_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 3440}
    new3440WTTARow = WillingToTa.new(c3440_wtta_map)
    if !params[:c3440_wtta].nil?
      new3440WTTARow.save
    end
    
    c4000_wtta_map = {"student_id_wtta" => student_id, "course_id_wtta" => 4000}
    new4000WTTARow = WillingToTa.new(c4000_wtta_map)
    if !params[:c4000_wtta].nil?
      new4000WTTARow.save
    end
    
    #================================================================================================================
    #======================================= Willing To Grade Handlers ==============================================
    #================================================================================================================
    
    c1101_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 1101}
    new1101WTGRow = WillingToGrade.new(c1101_wtg_map)
    if !params[:c1101_wtg].nil?
      new1101WTGRow.save
    end
    
    c2101_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 2101}
    new2101WTGRow = WillingToGrade.new(c2101_wtg_map)
    if !params[:c2101_wtg].nil?
      new2101WTGRow.save
    end
    
    c2200_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 2200}
    new2200WTGRow = WillingToGrade.new(c2200_wtg_map)
    if !params[:c2200_wtg].nil?
      new2200WTGRow.save
    end
    
    c2210_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 2210}
    new2210WTGRow = WillingToGrade.new(c2210_wtg_map)
    if !params[:c2210_wtg].nil?
      new2210WTGRow.save
    end
    
    c2300_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 2300}
    new2300WTGRow = WillingToGrade.new(c2300_wtg_map)
    if !params[:c2300_wtg].nil?
      new2300WTGRow.save
    end
    
    c2310_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 2310}
    new2310WTGRow = WillingToGrade.new(c2310_wtg_map)
    if !params[:c2310_wtg].nil?
      new2310WTGRow.save
    end
    
    c2325_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 2325}
    new2325WTGRow = WillingToGrade.new(c2325_wtg_map)
    if !params[:c2325_wtg].nil?
      new2325WTGRow.save
    end
    
    c2400_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 2400}
    new2400WTGRow = WillingToGrade.new(c2400_wtg_map)
    if !params[:c2400_wtg].nil?
      new2400WTGRow.save
    end
    
    c2505_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 2505}
    new2505WTGRow = WillingToGrade.new(c2505_wtg_map)
    if !params[:c2505_wtg].nil?
      new2505WTGRow.save
    end
    
    c3215_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 3215}
    new3215WTGRow = WillingToGrade.new(c3215_wtg_map)
    if !params[:c3215_wtg].nil?
      new3215WTGRow.save
    end
    
    c3225_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 3225}
    new3225WTGRow = WillingToGrade.new(c3225_wtg_map)
    if !params[:c3225_wtg].nil?
      new3225WTGRow.save
    end
    
    c3235_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 3235}
    new3235WTGRow = WillingToGrade.new(c3235_wtg_map)
    if !params[:c3235_wtg].nil?
      new3235WTGRow.save
    end
    
    c3250_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 3250}
    new3250WTGRow = WillingToGrade.new(c3250_wtg_map)
    if !params[:c3250_wtg].nil?
      new3250WTGRow.save
    end
    
    c3300_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 3300}
    new3300WTGRow = WillingToGrade.new(c3300_wtg_map)
    if !params[:c3300_wtg].nil?
      new3300WTGRow.save
    end
    
    c3310_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 3310}
    new3310WTGRow = WillingToGrade.new(c3310_wtg_map)
    if !params[:c3310_wtg].nil?
      new3310WTGRow.save
    end
    
    c3350_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 3350}
    new3350WTGRow = WillingToGrade.new(c3350_wtg_map)
    if !params[:c3350_wtg].nil?
      new3350WTGRow.save
    end
    
    c3355_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 3355}
    new3355WTGRow = WillingToGrade.new(c3355_wtg_map)
    if !params[:c3355_wtg].nil?
      new3355WTGRow.save
    end
    
    c3400_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 3400}
    new3400WTGRow = WillingToGrade.new(c3400_wtg_map)
    if !params[:c3400_wtg].nil?
      new3400WTGRow.save
    end
    
    c3415_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 3415}
    new3415WTGRow = WillingToGrade.new(c3415_wtg_map)
    if !params[:c3415_wtg].nil?
      new3415WTGRow.save
    end
    
    c3425_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 3425}
    new3425WTGRow = WillingToGrade.new(c3425_wtg_map)
    if !params[:c3425_wtg].nil?
      new3425WTGRow.save
    end
    
    c3435_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 3435}
    new3435WTGRow = WillingToGrade.new(c3435_wtg_map)
    if !params[:c3435_wtg].nil?
      new3435WTGRow.save
    end
    
    c3440_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 3440}
    new3440WTGRow = WillingToGrade.new(c3440_wtg_map)
    if !params[:c3440_wtg].nil?
      new3440WTGRow.save
    end
    
    c4000_wtg_map = {"student_id_wtg" => student_id, "course_id_wtg" => 4000}
    new4000WTGRow = WillingToGrade.new(c4000_wtg_map)
    if !params[:c4000_wtg].nil?
      new4000WTGRow.save
    end
    
    #================================================================================================================
    #=========================================== Past TA/Grader Handlers ============================================
    #================================================================================================================
    
    c1101_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 1101}
    new1101PTARow = PastTa.new(c1101_pta_map)
    if !params[:c1101_pta].nil?
      new1101PTARow.save
    end
    
    c2101_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 2101}
    new2101PTARow = PastTa.new(c2101_pta_map)
    if !params[:c2101_pta].nil?
      new2101PTARow.save
    end
    
    c2200_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 2200}
    new2200PTARow = PastTa.new(c2200_pta_map)
    if !params[:c2200_pta].nil?
      new2200PTARow.save
    end
    
    c2210_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 2210}
    new2210PTARow = PastTa.new(c2210_pta_map)
    if !params[:c2210_pta].nil?
      new2210PTARow.save
    end
    
    c2300_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 2300}
    new2300PTARow = PastTa.new(c2300_pta_map)
    if !params[:c2300_pta].nil?
      new2300PTARow.save
    end
    
    c2310_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 2310}
    new2310PTARow = PastTa.new(c2310_pta_map)
    if !params[:c2310_pta].nil?
      new2310PTARow.save
    end
    
    c2325_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 2325}
    new2325PTARow = PastTa.new(c2325_pta_map)
    if !params[:c2325_pta].nil?
      new2325PTARow.save
    end
    
    c2400_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 2400}
    new2400PTARow = PastTa.new(c2400_pta_map)
    if !params[:c2400_pta].nil?
      new2400PTARow.save
    end
    
    c2505_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 2505}
    new2505PTARow = PastTa.new(c2505_pta_map)
    if !params[:c2505_pta].nil?
      new2505PTARow.save
    end
    
    c3215_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 3215}
    new3215PTARow = PastTa.new(c3215_pta_map)
    if !params[:c3215_pta].nil?
      new3215PTARow.save
    end
    
    c3225_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 3225}
    new3225PTARow = PastTa.new(c3225_pta_map)
    if !params[:c3225_pta].nil?
      new3225PTARow.save
    end
    
    c3235_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 3235}
    new3235PTARow = PastTa.new(c3235_pta_map)
    if !params[:c3235_pta].nil?
      new3235PTARow.save
    end
    
    c3250_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 3250}
    new3250PTARow = PastTa.new(c3250_pta_map)
    if !params[:c3250_pta].nil?
      new3250PTARow.save
    end
    
    c3300_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 3300}
    new3300PTARow = PastTa.new(c3300_pta_map)
    if !params[:c3300_pta].nil?
      new3300PTARow.save
    end
    
    c3310_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 3310}
    new3310PTARow = PastTa.new(c3310_pta_map)
    if !params[:c3310_pta].nil?
      new3310PTARow.save
    end
    
    c3350_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 3350}
    new3350PTARow = PastTa.new(c3350_pta_map)
    if !params[:c3350_pta].nil?
      new3350PTARow.save
    end
    
    c3355_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 3355}
    new3355PTARow = PastTa.new(c3355_pta_map)
    if !params[:c3355_pta].nil?
      new3355PTARow.save
    end
    
    c3400_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 3400}
    new3400PTARow = PastTa.new(c3400_pta_map)
    if !params[:c3400_pta].nil?
      new3400PTARow.save
    end
    
    c3415_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 3415}
    new3415PTARow = PastTa.new(c3415_pta_map)
    if !params[:c3415_pta].nil?
      new3415PTARow.save
    end
    
    c3425_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 3425}
    new3425PTARow = PastTa.new(c3425_pta_map)
    if !params[:c3425_pta].nil?
      new3425PTARow.save
    end
    
    c3435_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 3435}
    new3435PTARow = PastTa.new(c3435_pta_map)
    if !params[:c3435_pta].nil?
      new3435PTARow.save
    end
    
    c3440_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 3440}
    new3440PTARow = PastTa.new(c3440_pta_map)
    if !params[:c3440_pta].nil?
      new3440PTARow.save
    end
    
    c4000_pta_map = {"student_id_pta" => student_id, "course_id_pta" => 4000}
    new4000PTARow = PastTa.new(c4000_pta_map)
    if !params[:c4000_pta].nil?
      new4000PTARow.save
    end
    
    # Confirms whether form values have been successfully stored in database
    if (newStudentRow.save)
      puts "~~~~~~~~~~~~~~~~~~SUCCESS~~~~~~~~~~~~~~~~~~~~~~~"
      redirect_to action: 'index'     # index.html.erb shows only a Confirmation Page for application
    else
      puts "~~~~~~~~~~~~~~~~~~~~FAILURE~~~~~~~~~~~~~~~~~~~~~~~"
      render action: 'new'
    end
  end
  
  def index  
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  # method for clearing necessary database tables
  def destroy
    Student.delete_all
    Taken.delete_all
    WillingToTa.delete_all
    WillingToGrade.delete_all
    WillingToTaLanguage.delete_all
    PastTa.delete_all
    LanguageProficiency.delete_all
    
    #shows page confirming tables cleared
    render action: 'destroy'
  end
  
end
