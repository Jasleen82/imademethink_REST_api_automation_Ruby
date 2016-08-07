#!/usr/bin/env ruby
require 'rubygems'
require 'json'
require 'rest-client'
require 'net/http'
require 'uri'

class ClassRubyRESTAPITesting

  def initialize
    # puts 'Init Cls Ruby API Testing Rest Client'
  end


  private def fill_SignupGET
    hMapLocal = Hash.new
    hMapLocal["str_signup_GET_url"]=                 				  "http://localhost:8080/imademethink/restfulapi/account_basic/signup"
    hMapLocal["str_signup_GET_method"]=                 			"GET"
    hMapLocal["str_signup_GET_response_key1"]=         				"Activity status"
    hMapLocal["str_signup_GET_response_key2"]=         				"Additional message"
    hMapLocal["str_signup_GET_response_key3"]=         				"Payload"
    hMapLocal["str_signup_GET_response_payload_key_emailid"]=     	"signup_emailid"
    hMapLocal["str_signup_GET_response_payload_key_firstname"]=   	"signup_firstname"
    hMapLocal["str_signup_GET_response_payload_key_lastname"]=    	"signup_lastname"
    hMapLocal["str_signup_GET_response_payload_key_gender"]=      	"signup_gender"
    hMapLocal["str_signup_GET_response_payload_key_password"]=    	"signup_password"
    hMapLocal["str_signup_GET_response_payload_key_secret_question_1"]=            "signup_secret_question_1"
    hMapLocal["str_signup_GET_response_payload_key_secret_question_2"]=            "signup_secret_question_2"
    hMapLocal["str_signup_GET_response_payload_key_secret_question_answer_1"]=     "signup_secret_question_1_answer"
    hMapLocal["str_signup_GET_response_payload_key_secret_question_answer_2"]=     "signup_secret_question_2_answer"
    return hMapLocal
  end

  private def fill_SignupPOST
    hMapLocal = Hash.new
    hMapLocal["str_signup_POST_url"]=          		  "http://localhost:8080/imademethink/restfulapi/account_basic/signup"
    hMapLocal["str_signup_POST_method"]=            "POST"
    hMapLocal["str_signup_POST_response_key1"]=     "Activity status"
    hMapLocal["str_signup_POST_response_key2"]=     "Additional message"
    hMapLocal["str_signup_POST_response_key3"]=     "Payload"
    return hMapLocal
  end

  private def fill_ActivateGET
    hMapLocal = Hash.new
    hMapLocal["str_activate_GET_url"]=               "http://localhost:8080/imademethink/restfulapi/account_basic/activate"
    hMapLocal["str_activate_GET_method"]=            "GET"
    hMapLocal["str_activate_GET_response_key1"]=     "Activity status"
    hMapLocal["str_activate_GET_response_key2"]=     "Additional message"
    hMapLocal["str_activate_GET_response_key3"]=     "Payload"
    return hMapLocal
  end

  private def fill_SigninPOST
    hMapLocal = Hash.new
    hMapLocal["str_signin_POST_url"]=            	  "http://localhost:8080/imademethink/restfulapi/account_basic/signin"
    hMapLocal["str_signin_POST_method"]=            "POST"
    hMapLocal["str_signin_POST_response_key1"]=     "Activity status"
    hMapLocal["str_signin_POST_response_key2"]=     "Additional message"
    hMapLocal["str_signin_POST_response_key3"]=     "Payload"
    return hMapLocal
  end

  private def fill_SignoutDELETE
    hMapLocal = Hash.new
    hMapLocal["str_signout_DELETE_url"]=            "http://localhost:8080/imademethink/restfulapi/account_basic/signout"
    hMapLocal["str_signout_DELETE_method"]=         "DELETE"
    hMapLocal["str_signout_DELETE_response_key1"]=  "Activity status"
    hMapLocal["str_signout_DELETE_response_key2"]=  "Additional message"
    hMapLocal["str_signout_DELETE_response_key3"]=  "Payload"
    return hMapLocal
  end

  private def fill_GetAccountProfileDetailGET
    hMapLocal = Hash.new
    hMapLocal["str_getaccountprofiledetail_GET_url"]=             "http://localhost:8080/imademethink/restfulapi/account_basic/get_account_profile_details"
    hMapLocal["str_getaccountprofiledetail_GET_method"]=          "GET"
    hMapLocal["str_getaccountprofiledetail_GET_response_key1"]=   "Activity status"
    hMapLocal["str_getaccountprofiledetail_GET_response_key2"]=   "Additional message"
    hMapLocal["str_getaccountprofiledetail_GET_response_key3"]=   "Payload"

    hMapLocal["str_getaccountprofiledetail_GET_key_emailid"]=     "Basic account: email id"
    hMapLocal["str_getaccountprofiledetail_GET_key_firstname"]=   "Basic account: first name"
    hMapLocal["str_getaccountprofiledetail_GET_key_lastname"]=    "Basic account: last name"
    hMapLocal["str_getaccountprofiledetail_GET_key_gender"]=      "Basic account: gender"

    return hMapLocal
  end

  private def fill_ModifyAccountProfileDetailPUT
    hMapLocal = Hash.new
    hMapLocal["str_modifyaccountprofiledetail_PUT_url"]=              "http://localhost:8080/imademethink/restfulapi/account_basic/modify_account_profile_details"
    hMapLocal["str_modifyaccountprofiledetail_PUT_method"]=           "PUT"
    hMapLocal["str_modifyaccountprofiledetail_PUT_response_key1"]=    "Activity status"
    hMapLocal["str_modifyaccountprofiledetail_PUT_response_key2"]=    "Additional message"
    hMapLocal["str_modifyaccountprofiledetail_PUT_response_key3"]=    "Payload"

    return hMapLocal
  end

  private def fill_ForgetPasswordGetSecretQuestionGET
    hMapLocal = Hash.new
    hMapLocal["str_forgetpasswordgetsecretquestion_GET_url"]=             "http://localhost:8080/imademethink/restfulapi/account_basic/forget_password_get_secret_question"
    hMapLocal["str_forgetpasswordgetsecretquestion_GET_method"]=          "GET"
    hMapLocal["str_forgetpasswordgetsecretquestion_GET_response_key1"]=   "Activity status"
    hMapLocal["str_forgetpasswordgetsecretquestion_GET_response_key2"]=   "Additional message"
    hMapLocal["str_forgetpasswordgetsecretquestion_GET_response_key3"]=   "Payload"

    hMapLocal["str_forgetpasswordgetsecretquestion_GET_key_question1"]=   "Basic account: secret question 1"
    hMapLocal["str_forgetpasswordgetsecretquestion_GET_key_question2"]=   "Basic account: secret question 2"

    return hMapLocal
  end

  private def fill_ResetPasswordPUT
    hMapLocal = Hash.new
    hMapLocal["str_resetpassword_PUT_url"]=                "http://localhost:8080/imademethink/restfulapi/account_basic/reset_password"
    hMapLocal["str_resetpassword_PUT_method"]=             "PUT"
    hMapLocal["str_resetpassword_PUT_response_key1"]=      "Activity status"
    hMapLocal["str_resetpassword_PUT_response_key2"]=      "Additional message"
    hMapLocal["str_resetpassword_PUT_response_key3"]=      "Payload"

    return hMapLocal
  end

  private def fill_BasicUserDetails( strTempEmailId, strTempPassword)
    hMapLocal = Hash.new
    hMapLocal["str_signup_POST_response_payload_key_emailid"]=                                  "signup_emailid"
    hMapLocal["str_signup_POST_response_payload_value_emailid"]=                                strTempEmailId
    hMapLocal["str_signin_POST_response_payload_key_emailid"]=                                  "signin_emailid"
    hMapLocal["str_signin_POST_response_payload_value_emailid"]=                                strTempEmailId
    hMapLocal["str_signout_DELETE_response_payload_key_emailid"]=                               "signout_emailid"
    hMapLocal["str_signout_DELETE_response_payload_value_emailid"]=                             strTempEmailId
    hMapLocal["str_getaccountprofiledetail_GET_response_payload_key_emailid"]=                  "signin_emailid"
    hMapLocal["str_getaccountprofiledetail_GET_response_payload_value_emailid"]=                strTempEmailId
    hMapLocal["str_modifyaccountprofiledetail_PUT_response_payload_key_emailid"]=               "signin_emailid"
    hMapLocal["str_modifyaccountprofiledetail_PUT_response_payload_value_emailid"]=             strTempEmailId
    hMapLocal["str_resetpassword_PUT_response_payload_key_emailid"]=                            "signup_emailid"
    hMapLocal["str_resetpassword_PUT_response_payload_value_emailid"]=                          strTempEmailId

    hMapLocal["str_signup_POST_response_payload_key_password"]=                                 "signup_password"
    hMapLocal["str_signup_POST_response_payload_value_password"]=                               strTempPassword
    hMapLocal["str_signin_POST_response_payload_key_password"]=                                 "signin_password"
    hMapLocal["str_signin_POST_response_payload_value_password"]=                               strTempPassword
    hMapLocal["str_getaccountprofiledetail_GET_response_payload_key_password"]=                 "signin_password"
    hMapLocal["str_getaccountprofiledetail_GET_response_payload_value_password"]=               strTempPassword
    hMapLocal["str_modifyaccountprofiledetail_PUT_response_payload_key_password"]=              "signin_password"
    hMapLocal["str_modifyaccountprofiledetail_PUT_response_payload_value_password"]=            strTempPassword

    hMapLocal["str_signup_POST_response_payload_key_firstname"]=                                "signup_firstname"
    hMapLocal["str_signup_POST_response_payload_value_firstname"]=                              "Sheldon"
    hMapLocal["str_modifyaccountprofiledetail_PUT_response_payload_key_firstname"]=             "signin_firstname"
    hMapLocal["str_modifyaccountprofiledetail_PUT_response_payload_value_firstname"]=           "Sheldon"

    hMapLocal["str_signup_POST_response_payload_key_lastname"]=                                 "signup_lastname"
    hMapLocal["str_signup_POST_response_payload_value_lastname"]=                               "Cooper"
    hMapLocal["str_modifyaccountprofiledetail_PUT_response_payload_key_lastname"]=              "signin_lastname"
    hMapLocal["str_modifyaccountprofiledetail_PUT_response_payload_value_lastname"]=            "Cooper"

    hMapLocal["str_signup_POST_response_payload_key_gender"]=                                   "signup_gender"
    hMapLocal["str_signup_POST_response_payload_value_gender"]=                                 "m"
    hMapLocal["str_modifyaccountprofiledetail_PUT_response_payload_key_gender"]=                "signin_gender"
    hMapLocal["str_modifyaccountprofiledetail_PUT_response_payload_value_gender"]=              "m"

    hMapLocal["str_signup_POST_response_payload_key_secret_question_1"]=                        "signup_secret_question_1"
    hMapLocal["str_signup_POST_response_payload_value_secret_question_1"]=                      "What is the brand of your toothpaste"
    hMapLocal["str_signup_POST_response_payload_key_secret_question_2"]=                        "signup_secret_question_2"
    hMapLocal["str_signup_POST_response_payload_value_secret_question_2"]=                      "What was the name of your babysitter"

    hMapLocal["str_signup_POST_response_payload_key_secret_question_answer_1"]=                 "signup_secret_question_1_answer"
    hMapLocal["str_signup_POST_response_payload_value_secret_question_answer_1"]=               "Pune"
    hMapLocal["str_forgetpassword_PUT_response_payload_key_secret_question_answer_1"]=          "signup_secret_question_1_answer"
    hMapLocal["str_forgetpassword_PUT_response_payload_value_secret_question_answer_1"]=        "Pune"
    hMapLocal["str_signup_POST_response_payload_key_secret_question_answer_2"]=                 "signup_secret_question_2_answer"
    hMapLocal["str_signup_POST_response_payload_value_secret_question_answer_2"]=               "Toystory"
    hMapLocal["str_forgetpassword_PUT_response_payload_key_secret_question_answer_2"]=          "signup_secret_question_2_answer"
    hMapLocal["str_forgetpassword_PUT_response_payload_value_secret_question_answer_2"]=        "Toystory"

    # other user details
    hMapLocal["str_basic_account_activation_key"]=                                              "account_basic_activatation_key"
    hMapLocal["str_basic_account_activation_value"]=                                            ""

    hMapLocal["str_basic_account_session_key"]=                                                 "session_id"
    hMapLocal["str_basic_account_session_value"]=                                               ""

    hMapLocal["str_basic_account_latest_session_key"]=                                          "latest_session_key"
    hMapLocal["str_basic_account_latest_session_value"]=                                        ""

    return hMapLocal
  end

  private def fill_ErrorResponse
    hMapLocal = Hash.new
    hMapLocal["str_key_ErrorMessage"]=         "Error message"
    hMapLocal["str_key_ExceptionType"]=        "Exception type"
    hMapLocal["str_key_InternalErrorCode"]=    "Internal error code"

    return hMapLocal
  end

  # helper methods general

  private def setup_Connection_General(urlTemp,  corerequest)
    hMapLocal_corerequest_header = Hash.new

    hMapLocal_corerequest_header["User-Agent"] = "Mozilla/5.0"
    hMapLocal_corerequest_header["Content-Type"] = "application/json"
    hMapLocal_corerequest_header["Accept"] = "application/json"
    hMapLocal_corerequest_header["Connection"] = "keep-alive"

    return hMapLocal_corerequest_header
  end

  private def setup_Connection_General_special(urlTemp, corerequest, mediatypeContent, mediatypeResponse)
    hMapLocal_corerequest_header = Hash.new

    hMapLocal_corerequest_header["User-Agent"] = "Mozilla/5.0"
    hMapLocal_corerequest_header["Content-Type"] = mediatypeContent
    hMapLocal_corerequest_header["Accept"] = mediatypeResponse
    hMapLocal_corerequest_header["Connection"] = "keep-alive"

    return hMapLocal_corerequest_header.to_json
  end

  private def setup_Connection_POST(urlTemp, corerequest)
    hMapLocal_corerequest_header = Hash.new

    hMapLocal_corerequest_header["User-Agent"] = "Mozilla/5.0"
    hMapLocal_corerequest_header["Content-Type"] = "application/x-www-form-urlencoded"
    hMapLocal_corerequest_header["Accept"] = "application/json"
    hMapLocal_corerequest_header["Connection"] = "keep-alive"

    return hMapLocal_corerequest_header.to_json
  end

  private def handle_ClientSideError(nResponseCodeTemp)
    if 400 ==  nResponseCodeTemp then puts "ERROR     : This is a bad request." end
    if 404 ==  nResponseCodeTemp then puts "ERROR     : This page / resource is not found." end
    if 401 ==  nResponseCodeTemp then puts "ERROR     : This request is not authorized." end
    if 403 ==  nResponseCodeTemp then puts "ERROR     : This request is not forbiden." end
  end

  private def handle_ServerSideError(nResponseCodeTemp)
    if 500 ==  nResponseCodeTemp then puts "ERROR     : Internal server error." end
    if 503 ==  nResponseCodeTemp then puts "ERROR     : Service unavailable or some maintenance is going on." end
  end

  private def handle_ErrorResponse( objJSONTemp, objHashMapErrorRespTemp)
    print "\nFollowing error response received: \n"
    print objHashMapErrorRespTemp["str_key_ErrorMessage"].to_s.strip      ,":",objJSONTemp[objHashMapErrorRespTemp["str_key_ErrorMessage"].to_s],      "\n"
    print objHashMapErrorRespTemp["str_key_ExceptionType"].to_s.strip     ,":",objJSONTemp[objHashMapErrorRespTemp["str_key_ExceptionType"].to_s],     "\n"
    print objHashMapErrorRespTemp["str_key_InternalErrorCode"].to_s.strip ,":",objJSONTemp[objHashMapErrorRespTemp["str_key_InternalErrorCode"].to_s], "\n"
  end

  private def parse_StringResponse(responseInString)
    # parsing the response and json conversion
    objJSONTemp = JSON.parse(responseInString)
    return objJSONTemp
  end


  def GET_signup_details(objHashMapSignupGETTemp, objHashMapErrorRespTemp)

    puts("----------------------------------------------------------------------------")
    urlTemp                    = objHashMapSignupGETTemp["str_signup_GET_url"].to_s
    formParamTemp              = ''
    responseTemp               = nil
    uriParsedTemp              = URI.parse(urlTemp)
    httpTemp                   = Net::HTTP.new(uriParsedTemp.host, uriParsedTemp.port)
    httpTemp.read_timeout      = 10
    requestTemp                = Net::HTTP::Get.new(uriParsedTemp.request_uri)
    requestTemp["User-Agent"]  = "Mozilla/5.0"
    requestTemp["Content-Type"]= "application/json"
    requestTemp["Accept"]      = "application/json"
    requestTemp["Connection"]  = "keep-alive"

    begin
      responseTemp = httpTemp.request(requestTemp)
    rescue  Exception => exx
      if    ["Errno::ECONNREFUSED"].include? exx.class.to_s then puts 'Web application is not running.\n'
      elsif ["Errno::ECONNRESET","Errno::EINVAL","Timeout::Error","some additional error code here"].include? exx.class.to_s
        puts "Exception occured: exception class is " + exx.class.to_s + " exception message is " + exx.message.to_s
      else    puts "Unknown exception while invoking this request " + exx.class.to_s + "***" + exx.message.to_s
      end
      return
    end

    #  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    # response handling
    responseCodeTemp         = responseTemp.code
    responseInStringTemp     = responseTemp.body.to_s
    strContentTypeOfResponse = responseTemp["content-type"]

    puts("Response Code               : HTTP " + responseCodeTemp.to_s)
    puts("Content type of response is : " + strContentTypeOfResponse.to_s)

    if not strContentTypeOfResponse.to_s.include? 'application/json'
      print("Content type of response expected is : " + 'application/json' + "\n")
      print("Please check what is the issue from server side.\n")
      return
    end

    if (responseCodeTemp.to_i >= 400 && responseCodeTemp.to_i < 500)
      # Client side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ClientSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i >= 500 && responseCodeTemp.to_i < 600 )
      # Server side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ServerSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i == 200)
      print("\nFollowing success response received from web application.\n")

      objJSON = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      print(objHashMapSignupGETTemp["str_signup_GET_response_key1"].to_s + ":" + objJSON[objHashMapSignupGETTemp["str_signup_GET_response_key1"].to_s]+"\n")
      print(objHashMapSignupGETTemp["str_signup_GET_response_key2"].to_s + ":" + objJSON[objHashMapSignupGETTemp["str_signup_GET_response_key2"].to_s]+"\n")
      print(objHashMapSignupGETTemp["str_signup_GET_response_key3"].to_s + ":" + "\n")

      objJSON_internal = objJSON[objHashMapSignupGETTemp["str_signup_GET_response_key3"].to_s]
      print("     " + objHashMapSignupGETTemp["str_signup_GET_response_payload_key_emailid"].to_s       + ":" + objJSON_internal[objHashMapSignupGETTemp["str_signup_GET_response_payload_key_emailid"].to_s]  + "\n")
      print("     " + objHashMapSignupGETTemp["str_signup_GET_response_payload_key_firstname"].to_s     + ":" + objJSON_internal[objHashMapSignupGETTemp["str_signup_GET_response_payload_key_firstname"].to_s]  + "\n")
      print("     " + objHashMapSignupGETTemp["str_signup_GET_response_payload_key_lastname"].to_s      + ":" + objJSON_internal[objHashMapSignupGETTemp["str_signup_GET_response_payload_key_lastname"].to_s]  + "\n")
      print("     " + objHashMapSignupGETTemp["str_signup_GET_response_payload_key_gender"].to_s        + ":" + objJSON_internal[objHashMapSignupGETTemp["str_signup_GET_response_payload_key_gender"].to_s]  + "\n")
      print("     " + objHashMapSignupGETTemp["str_signup_GET_response_payload_key_password"].to_s      + ":" + objJSON_internal[objHashMapSignupGETTemp["str_signup_GET_response_payload_key_password"].to_s]  + "\n")
      print("     " + objHashMapSignupGETTemp["str_signup_GET_response_payload_key_secret_question_1"].to_s   + ":" + objJSON_internal[objHashMapSignupGETTemp["str_signup_GET_response_payload_key_secret_question_1"].to_s]  + "\n")
      print("     " + objHashMapSignupGETTemp["str_signup_GET_response_payload_key_secret_question_2"].to_s   + ":" + objJSON_internal[objHashMapSignupGETTemp["str_signup_GET_response_payload_key_secret_question_2"].to_s]  + "\n")
      print("     " + objHashMapSignupGETTemp["str_signup_GET_response_payload_key_secret_question_answer_1"].to_s   + ":" + objJSON_internal[objHashMapSignupGETTemp["str_signup_GET_response_payload_key_secret_question_answer_1"].to_s]  + "\n")
      print("     " + objHashMapSignupGETTemp["str_signup_GET_response_payload_key_secret_question_answer_2"].to_s   + ":" + objJSON_internal[objHashMapSignupGETTemp["str_signup_GET_response_payload_key_secret_question_answer_2"].to_s]  + "\n")

      obj_json_Links = objJSON["Links"]    # objJSON[objHashMapSignupGETTemp["Links"]]
      print("Links:  \n")
      print("     Link documentation: " +  obj_json_Links["Link documentation"].to_s + "\n")
      print("     Actual signup: "      +  obj_json_Links["Actual signup"].to_s + "\n")
    else
      print("Following invalid HTTP code received : " + responseCodeTemp.to_s)
    end

    print("\n----------------------------------------------------------------------------")
  end

  def POST_signup_actual(objHashMapBasicUserDetailsTemp, objHashMapSignupPOSTTemp, objHashMapErrorRespTemp)

    puts("----------------------------------------------------------------------------")
    formParamTemp                = Array.new
    formParamTemp << [  objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_key_emailid"].to_s, objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_value_emailid"].to_s ]
    formParamTemp << [  objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_key_firstname"].to_s, objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_value_firstname"].to_s ]
    formParamTemp << [  objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_key_lastname"].to_s, objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_value_lastname"].to_s ]
    formParamTemp << [  objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_key_gender"].to_s, objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_value_gender"].to_s ]
    formParamTemp << [  objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_key_password"].to_s, objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_value_password"].to_s ]
    formParamTemp << [  objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_key_secret_question_1"].to_s, objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_value_secret_question_1"].to_s ]
    formParamTemp << [  objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_key_secret_question_2"].to_s, objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_value_secret_question_2"].to_s ]
    formParamTemp << [  objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_key_secret_question_answer_1"].to_s, objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_value_secret_question_answer_1"].to_s ]
    formParamTemp << [  objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_key_secret_question_answer_2"].to_s, objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_value_secret_question_answer_2"].to_s ]

    urlTemp                    = objHashMapSignupPOSTTemp["str_signup_POST_url"].to_s # + '-random-string-'
    responseTemp               = nil
    urlParsedTemp              = URI.parse(urlTemp)
    httpTemp                   = Net::HTTP.new(urlParsedTemp.host, urlParsedTemp.port)
    httpTemp.read_timeout      = 10
    requestTemp                = Net::HTTP::Post.new(urlParsedTemp.request_uri)
    requestTemp["User-Agent"]  = "Mozilla/5.0"
    requestTemp["Content-Type"]= "application/x-www-form-urlencoded"
    requestTemp["Accept"]      = "application/json"
    requestTemp["Connection"]  = "keep-alive"
    requestTemp.body           =  URI.encode_www_form(formParamTemp)

    begin
      responseTemp = httpTemp.request(requestTemp)
    rescue  Exception => exx
      if    ["Errno::ECONNREFUSED"].include? exx.class.to_s then puts 'Web application is not running.\n'
      elsif ["Errno::ECONNRESET","Errno::EINVAL","Timeout::Error","some additional error code here"].include? exx.class.to_s
        puts "Exception occured: exception class is " + exx.class.to_s + " exception message is " + exx.message.to_s
      else    puts "Unknown exception while invoking this request " + exx.class.to_s + "***" + exx.message.to_s
      end
      return
    end

    #  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    # response handling
    responseCodeTemp         = responseTemp.code
    responseInStringTemp     = responseTemp.body.to_s
    strContentTypeOfResponse = responseTemp["content-type"]

    puts("Response Code               : HTTP " + responseCodeTemp.to_s)
    puts("Content type of response is : " + strContentTypeOfResponse.to_s)

    if not strContentTypeOfResponse.to_s.include? 'application/json'
      print("Content type of response expected is : " + 'application/json' + "\n")
      print("Please check what is the issue from server side.\n")
      return
    end

    if (responseCodeTemp.to_i >= 400 && responseCodeTemp.to_i < 500)
      # Client side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ClientSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i >= 500 && responseCodeTemp.to_i < 600 )
      # Server side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ServerSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i == 201)
      print("\nFollowing success response received from web application.\n")

      objJSON = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      print(objHashMapSignupPOSTTemp["str_signup_POST_response_key1"].to_s + ":" + objJSON[objHashMapSignupPOSTTemp["str_signup_POST_response_key1"].to_s]+"\n")
      print(objHashMapSignupPOSTTemp["str_signup_POST_response_key2"].to_s + ":" + objJSON[objHashMapSignupPOSTTemp["str_signup_POST_response_key2"].to_s]+"\n")
      print(objHashMapSignupPOSTTemp["str_signup_POST_response_key3"].to_s + ":" + objJSON[objHashMapSignupPOSTTemp["str_signup_POST_response_key3"].to_s]+"\n")

      # insert activation key in basic user hashmap variable
      @@objHashMapBasicUserDetails["str_basic_account_activation_value"] =  objJSON[objHashMapSignupPOSTTemp["str_signup_POST_response_key3"].to_s]
    else
      print("Following invalid HTTP code received : " + responseCodeTemp.to_s)
    end

    print("\n----------------------------------------------------------------------------")
  end

  def GET_activate_basic_account(objHashMapBasicUserDetailsTemp,objHashMapActivateGET, objHashMapErrorRespTemp)

    puts("----------------------------------------------------------------------------")
    if @@objHashMapBasicUserDetails["str_basic_account_activation_value"].to_s.empty?
      puts("This test can not be performed as activation code is empty.")
      return
    end

    # build the query param string using string builder first
    urlTemp = objHashMapActivateGET["str_activate_GET_url"] + "?"
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_key_emailid"].to_s + "=")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_signup_POST_response_payload_value_emailid"].to_s)
    urlTemp.concat("&")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_basic_account_activation_key"] + "=")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_basic_account_activation_value"])

    formParamTemp              = ''
    responseTemp               = nil
    urlParsedTemp              = URI.parse(urlTemp)
    httpTemp                   = Net::HTTP.new(urlParsedTemp.host, urlParsedTemp.port)
    httpTemp.read_timeout      = 10
    requestTemp                = Net::HTTP::Get.new(urlParsedTemp.request_uri)
    requestTemp["User-Agent"]  = "Mozilla/5.0"
    requestTemp["Content-Type"]= "application/json"
    requestTemp["Accept"]      = "application/json"
    requestTemp["Connection"]  = "keep-alive"

    begin
      responseTemp = httpTemp.request(requestTemp)
    rescue  Exception => exx
      if    ["Errno::ECONNREFUSED"].include? exx.class.to_s then puts 'Web application is not running.\n'
      elsif ["Errno::ECONNRESET","Errno::EINVAL","Timeout::Error","some additional error code here"].include? exx.class.to_s
        puts "Exception occured: exception class is " + exx.class.to_s + " exception message is " + exx.message.to_s
      else    puts "Unknown exception while invoking this request " + exx.class.to_s + "***" + exx.message.to_s
      end
      return
    end

    #  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    # response handling
    responseCodeTemp         = responseTemp.code
    responseInStringTemp     = responseTemp.body.to_s
    strContentTypeOfResponse = responseTemp["content-type"]

    puts("Response Code               : HTTP " + responseCodeTemp.to_s)
    puts("Content type of response is : " + strContentTypeOfResponse.to_s)

    if not strContentTypeOfResponse.to_s.include? 'application/json'
      print("Content type of response expected is : " + 'application/json' + "\n")
      print("Please check what is the issue from server side.\n")
      return
    end

    if (responseCodeTemp.to_i >= 400 && responseCodeTemp.to_i < 500)
      # Client side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ClientSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i >= 500 && responseCodeTemp.to_i < 600 )
      # Server side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ServerSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i == 200)
      print("\nFollowing success response received from web application.\n")

      objJSON = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      print(objHashMapActivateGET["str_activate_GET_response_key1"].to_s + ":" + objJSON[objHashMapActivateGET["str_activate_GET_response_key1"].to_s]+"\n")
      print(objHashMapActivateGET["str_activate_GET_response_key2"].to_s + ":" + objJSON[objHashMapActivateGET["str_activate_GET_response_key2"].to_s]+"\n")
      print(objHashMapActivateGET["str_activate_GET_response_key3"].to_s + ":" + objJSON[objHashMapActivateGET["str_activate_GET_response_key3"].to_s]+"\n")
    else
      print("Following invalid HTTP code received : " + responseCodeTemp.to_s)
    end

    print("\n----------------------------------------------------------------------------")
  end

  def POST_signin_actual(objHashMapBasicUserDetailsTemp, objHashMapSigninPOSTTemp, objHashMapErrorRespTemp)

    puts("----------------------------------------------------------------------------")
    formParamTemp                = Array.new
    formParamTemp << [objHashMapBasicUserDetailsTemp["str_signin_POST_response_payload_key_emailid"].to_s, objHashMapBasicUserDetailsTemp["str_signin_POST_response_payload_value_emailid"].to_s ]
    formParamTemp << [objHashMapBasicUserDetailsTemp["str_signin_POST_response_payload_key_password"].to_s, objHashMapBasicUserDetailsTemp["str_signin_POST_response_payload_value_password"].to_s ]

    urlTemp                    = objHashMapSigninPOSTTemp["str_signin_POST_url"].to_s # + '-random-string-'
    responseTemp               = nil
    urlParsedTemp              = URI.parse(urlTemp)
    httpTemp                   = Net::HTTP.new(urlParsedTemp.host, urlParsedTemp.port)
    httpTemp.read_timeout      = 10
    requestTemp                = Net::HTTP::Post.new(urlParsedTemp.request_uri)
    requestTemp["User-Agent"]  = "Mozilla/5.0"
    requestTemp["Content-Type"]= "application/x-www-form-urlencoded"
    requestTemp["Accept"]      = "application/json"
    requestTemp["Connection"]  = "keep-alive"
    requestTemp.body           =  URI.encode_www_form(formParamTemp)

    begin
      responseTemp = httpTemp.request(requestTemp)
    rescue  Exception => exx
      if    ["Errno::ECONNREFUSED"].include? exx.class.to_s then puts 'Web application is not running.\n'
      elsif ["Errno::ECONNRESET","Errno::EINVAL","Timeout::Error","some additional error code here"].include? exx.class.to_s
        puts "Exception occured: exception class is " + exx.class.to_s + " exception message is " + exx.message.to_s
      else    puts "Unknown exception while invoking this request " + exx.class.to_s + "***" + exx.message.to_s
      end
      return
    end

    #  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    # response handling
    responseCodeTemp         = responseTemp.code
    responseInStringTemp     = responseTemp.body.to_s
    strContentTypeOfResponse = responseTemp["content-type"]

    puts("Response Code               : HTTP " + responseCodeTemp.to_s)
    puts("Content type of response is : " + strContentTypeOfResponse.to_s)

    if not strContentTypeOfResponse.to_s.include? 'application/json'
      print("Content type of response expected is : " + 'application/json' + "\n")
      print("Please check what is the issue from server side.\n")
      return
    end

    if (responseCodeTemp.to_i >= 400 && responseCodeTemp.to_i < 500)
      # Client side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ClientSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i >= 500 && responseCodeTemp.to_i < 600 )
      # Server side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ServerSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i == 200)
      print("\nFollowing success response received from web application.\n")

      objJSON = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      print(objHashMapSigninPOSTTemp["str_signin_POST_response_key1"].to_s + ":" + objJSON[objHashMapSigninPOSTTemp["str_signin_POST_response_key1"].to_s]+"\n")
      print(objHashMapSigninPOSTTemp["str_signin_POST_response_key2"].to_s + ":" + objJSON[objHashMapSigninPOSTTemp["str_signin_POST_response_key2"].to_s]+"\n")
      print(objHashMapSigninPOSTTemp["str_signin_POST_response_key3"].to_s + ":" + objJSON[objHashMapSigninPOSTTemp["str_signin_POST_response_key3"].to_s]+"\n")

      # insert activation key in basic user hashmap variable
      @@objHashMapBasicUserDetails["str_basic_account_session_value"] =  objJSON[objHashMapSigninPOSTTemp["str_signin_POST_response_key3"].to_s]
      @@objHashMapBasicUserDetails["str_basic_account_latest_session_value"] =  objJSON[objHashMapSigninPOSTTemp["str_signin_POST_response_key3"].to_s]
    else
      print("Following invalid HTTP code received : " + responseCodeTemp.to_s)
    end

    print("\n----------------------------------------------------------------------------")
  end

  def DELETE_signout_basic_account(objHashMapBasicUserDetailsTemp, objHashMapSignoutDELETETemp, objHashMapErrorRespTemp)

    puts("----------------------------------------------------------------------------")
    if @@objHashMapBasicUserDetails["str_basic_account_session_value"].to_s.empty?
      puts("This test can not be performed as session value is empty.")
      return
    end

    # build the query param string using string builder first
    urlTemp = objHashMapSignoutDELETETemp["str_signout_DELETE_url"] + "?"
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_signout_DELETE_response_payload_key_emailid"].to_s + "=")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_signout_DELETE_response_payload_value_emailid"].to_s)
    urlTemp.concat("&")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_basic_account_session_key"] + "=")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_basic_account_session_value"])

    formParamTemp              = ''
    responseTemp               = nil
    urlParsedTemp              = URI.parse(urlTemp)
    httpTemp                   = Net::HTTP.new(urlParsedTemp.host, urlParsedTemp.port)
    httpTemp.read_timeout      = 10
    requestTemp                = Net::HTTP::Delete.new(urlParsedTemp.request_uri)
    requestTemp["User-Agent"]  = "Mozilla/5.0"
    requestTemp["Content-Type"]= "application/json"
    requestTemp["Accept"]      = "application/json"
    requestTemp["Connection"]  = "keep-alive"

    begin
      responseTemp = httpTemp.request(requestTemp)
    rescue  Exception => exx
      if    ["Errno::ECONNREFUSED"].include? exx.class.to_s then puts 'Web application is not running.\n'
      elsif ["Errno::ECONNRESET","Errno::EINVAL","Timeout::Error","some additional error code here"].include? exx.class.to_s
        puts "Exception occured: exception class is " + exx.class.to_s + " exception message is " + exx.message.to_s
      else    puts "Unknown exception while invoking this request " + exx.class.to_s + "***" + exx.message.to_s
      end
      return
    end

    #  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    # response handling
    responseCodeTemp         = responseTemp.code
    responseInStringTemp     = responseTemp.body.to_s
    strContentTypeOfResponse = responseTemp["content-type"]

    puts("Response Code               : HTTP " + responseCodeTemp.to_s)
    puts("Content type of response is : " + strContentTypeOfResponse.to_s)

    if not strContentTypeOfResponse.to_s.include? 'application/json'
      print("Content type of response expected is : " + 'application/json' + "\n")
      print("Please check what is the issue from server side.\n")
      return
    end

    if (responseCodeTemp.to_i >= 400 && responseCodeTemp.to_i < 500)
      # Client side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ClientSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i >= 500 && responseCodeTemp.to_i < 600 )
      # Server side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ServerSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i == 200)
      print("\nFollowing success response received from web application.\n")

      objJSON = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      print(objHashMapSignoutDELETETemp["str_signout_DELETE_response_key1"].to_s + ":" + objJSON[objHashMapSignoutDELETETemp["str_signout_DELETE_response_key1"].to_s]+"\n")
      print(objHashMapSignoutDELETETemp["str_signout_DELETE_response_key2"].to_s + ":" + objJSON[objHashMapSignoutDELETETemp["str_signout_DELETE_response_key2"].to_s]+"\n")
      print(objHashMapSignoutDELETETemp["str_signout_DELETE_response_key3"].to_s + ":" + objJSON[objHashMapSignoutDELETETemp["str_signout_DELETE_response_key3"].to_s]+"\n")

      # during successful sign out set the session id / value to empty
      @@objHashMapBasicUserDetails["str_basic_account_session_value"] =  ''
      @@objHashMapBasicUserDetails["str_basic_account_latest_session_value"] =  ''
    else
      print("Following invalid HTTP code received : " + responseCodeTemp.to_s)
    end

    print("\n----------------------------------------------------------------------------")
  end

  def GET_basic_account_profile_detail(objHashMapBasicUserDetailsTemp,objHashMapGetAccountProfileDetailGETTemp, objHashMapErrorRespTemp)

    puts("----------------------------------------------------------------------------")
    if objHashMapBasicUserDetailsTemp["str_basic_account_latest_session_value"].to_s.empty?
      puts("This test can not be performed as latest session value is empty.")
      return
    end

    # build the query param string using string builder first
    urlTemp = objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_url"] + "?"
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_getaccountprofiledetail_GET_response_payload_key_emailid"].to_s + "=")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_getaccountprofiledetail_GET_response_payload_value_emailid"].to_s)
    urlTemp.concat("&")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_getaccountprofiledetail_GET_response_payload_key_password"] + "=")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_getaccountprofiledetail_GET_response_payload_value_password"])
    urlTemp.concat("&")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_basic_account_latest_session_key"] + "=")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_basic_account_latest_session_value"])

    formParamTemp              = ''
    responseTemp               = nil
    urlParsedTemp              = URI.parse(urlTemp)
    httpTemp                   = Net::HTTP.new(urlParsedTemp.host, urlParsedTemp.port)
    httpTemp.read_timeout      = 10
    requestTemp                = Net::HTTP::Get.new(urlParsedTemp.request_uri)
    requestTemp["User-Agent"]  = "Mozilla/5.0"
    requestTemp["Content-Type"]= "application/json"
    requestTemp["Accept"]      = "application/json"
    requestTemp["Connection"]  = "keep-alive"

    begin
      responseTemp = httpTemp.request(requestTemp)
    rescue  Exception => exx
      if    ["Errno::ECONNREFUSED"].include? exx.class.to_s then puts 'Web application is not running.\n'
      elsif ["Errno::ECONNRESET","Errno::EINVAL","Timeout::Error","some additional error code here"].include? exx.class.to_s
        puts "Exception occured: exception class is " + exx.class.to_s + " exception message is " + exx.message.to_s
      else    puts "Unknown exception while invoking this request " + exx.class.to_s + "***" + exx.message.to_s
      end
      return
    end

    #  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    # response handling
    responseCodeTemp         = responseTemp.code
    responseInStringTemp     = responseTemp.body.to_s
    strContentTypeOfResponse = responseTemp["content-type"]

    puts("Response Code               : HTTP " + responseCodeTemp.to_s)
    puts("Content type of response is : " + strContentTypeOfResponse.to_s)

    if not strContentTypeOfResponse.to_s.include? 'application/json'
      print("Content type of response expected is : " + 'application/json' + "\n")
      print("Please check what is the issue from server side.\n")
      return
    end

    if (responseCodeTemp.to_i >= 400 && responseCodeTemp.to_i < 500)
      # Client side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ClientSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i >= 500 && responseCodeTemp.to_i < 600 )
      # Server side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ServerSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i == 200)
      print("\nFollowing success response received from web application.\n")

      objJSON = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      print(objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_response_key1"].to_s + ":" + objJSON[objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_response_key1"].to_s]+"\n")
      print(objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_response_key2"].to_s + ":" + objJSON[objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_response_key2"].to_s]+"\n")
      print(objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_response_key3"].to_s + ":" + "\n")

      objJSON_internal = objJSON[objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_response_key3"].to_s]
      print("     " + objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_key_emailid"].to_s       + ":" + objJSON_internal[objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_key_emailid"].to_s]  + "\n")
      print("     " + objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_key_firstname"].to_s     + ":" + objJSON_internal[objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_key_firstname"].to_s]  + "\n")
      print("     " + objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_key_lastname"].to_s      + ":" + objJSON_internal[objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_key_lastname"].to_s]  + "\n")
      print("     " + objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_key_gender"].to_s        + ":" + objJSON_internal[objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_key_gender"].to_s]  + "\n")
    else
      print("Following invalid HTTP code received : " + responseCodeTemp.to_s)
    end

    print("\n----------------------------------------------------------------------------")
  end

  def PUT_modify_basic_account_profile_detail(objHashMapBasicUserDetailsTemp, objHashMapModifyAccountProfileDetailPUTTemp, objHashMapErrorRespTemp)

    puts("----------------------------------------------------------------------------")
    formParamTemp                = Array.new
    formParamTemp << [objHashMapBasicUserDetailsTemp["str_modifyaccountprofiledetail_PUT_response_payload_key_emailid"].to_s, objHashMapBasicUserDetailsTemp["str_modifyaccountprofiledetail_PUT_response_payload_value_emailid"].to_s ]
    formParamTemp << [objHashMapBasicUserDetailsTemp["str_modifyaccountprofiledetail_PUT_response_payload_key_firstname"].to_s, objHashMapBasicUserDetailsTemp["str_modifyaccountprofiledetail_PUT_response_payload_value_firstname"].to_s ]
    formParamTemp << [objHashMapBasicUserDetailsTemp["str_modifyaccountprofiledetail_PUT_response_payload_key_lastname"].to_s, objHashMapBasicUserDetailsTemp["str_modifyaccountprofiledetail_PUT_response_payload_value_lastname"].to_s ]
    formParamTemp << [objHashMapBasicUserDetailsTemp["str_modifyaccountprofiledetail_PUT_response_payload_key_gender"].to_s, objHashMapBasicUserDetailsTemp["str_modifyaccountprofiledetail_PUT_response_payload_value_gender"].to_s ]
    formParamTemp << [objHashMapBasicUserDetailsTemp["str_modifyaccountprofiledetail_PUT_response_payload_key_password"].to_s, objHashMapBasicUserDetailsTemp["str_modifyaccountprofiledetail_PUT_response_payload_value_password"].to_s ]
    formParamTemp << [objHashMapBasicUserDetailsTemp["str_basic_account_latest_session_key"].to_s, objHashMapBasicUserDetailsTemp["str_basic_account_latest_session_value"].to_s ]

    urlTemp                    = objHashMapModifyAccountProfileDetailPUTTemp["str_modifyaccountprofiledetail_PUT_url"].to_s # + '-random-string-'
    responseTemp               = nil
    urlParsedTemp              = URI.parse(urlTemp)
    httpTemp                   = Net::HTTP.new(urlParsedTemp.host, urlParsedTemp.port)
    httpTemp.read_timeout      = 10
    requestTemp                = Net::HTTP::Put.new(urlParsedTemp.request_uri)
    requestTemp["User-Agent"]  = "Mozilla/5.0"
    requestTemp["Content-Type"]= "application/x-www-form-urlencoded"
    requestTemp["Accept"]      = "application/json"
    requestTemp["Connection"]  = "keep-alive"
    requestTemp.body           =  URI.encode_www_form(formParamTemp)

    begin
      responseTemp = httpTemp.request(requestTemp)
    rescue  Exception => exx
      if    ["Errno::ECONNREFUSED"].include? exx.class.to_s then puts 'Web application is not running.\n'
      elsif ["Errno::ECONNRESET","Errno::EINVAL","Timeout::Error","some additional error code here"].include? exx.class.to_s
        puts "Exception occured: exception class is " + exx.class.to_s + " exception message is " + exx.message.to_s
      else    puts "Unknown exception while invoking this request " + exx.class.to_s + "***" + exx.message.to_s
      end
      return
    end

    #  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    # response handling
    responseCodeTemp         = responseTemp.code
    responseInStringTemp     = responseTemp.body.to_s
    strContentTypeOfResponse = responseTemp["content-type"]

    puts("Response Code               : HTTP " + responseCodeTemp.to_s)
    puts("Content type of response is : " + strContentTypeOfResponse.to_s)

    if not strContentTypeOfResponse.to_s.include? 'application/json'
      print("Content type of response expected is : " + 'application/json' + "\n")
      print("Please check what is the issue from server side.\n")
      return
    end

    if (responseCodeTemp.to_i >= 400 && responseCodeTemp.to_i < 500)
      # Client side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ClientSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i >= 500 && responseCodeTemp.to_i < 600 )
      # Server side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ServerSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i == 200)
      print("\nFollowing success response received from web application.\n")

      objJSON = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      print(objHashMapModifyAccountProfileDetailPUTTemp["str_modifyaccountprofiledetail_PUT_response_key1"].to_s + ":" + objJSON[objHashMapModifyAccountProfileDetailPUTTemp["str_modifyaccountprofiledetail_PUT_response_key1"].to_s]+"\n")
      print(objHashMapModifyAccountProfileDetailPUTTemp["str_modifyaccountprofiledetail_PUT_response_key2"].to_s + ":" + objJSON[objHashMapModifyAccountProfileDetailPUTTemp["str_modifyaccountprofiledetail_PUT_response_key2"].to_s]+"\n")
      print(objHashMapModifyAccountProfileDetailPUTTemp["str_modifyaccountprofiledetail_PUT_response_key3"].to_s + ":" + objJSON[objHashMapModifyAccountProfileDetailPUTTemp["str_modifyaccountprofiledetail_PUT_response_key3"].to_s]+"\n")
    else
      print("Following invalid HTTP code received : " + responseCodeTemp.to_s)
    end

    print("\n----------------------------------------------------------------------------")
  end

  def GET_forget_password_get_secret_question(objHashMapBasicUserDetailsTemp,objHashMapForgetPasswordGetSecretQuestionGETTemp, objHashMapErrorRespTemp)

    puts("----------------------------------------------------------------------------")

    # build the query param string using string builder first
    urlTemp = objHashMapForgetPasswordGetSecretQuestionGETTemp["str_forgetpasswordgetsecretquestion_GET_url"] + "?"
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_getaccountprofiledetail_GET_response_payload_key_emailid"].to_s + "=")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_getaccountprofiledetail_GET_response_payload_value_emailid"].to_s)

    formParamTemp              = ''
    responseTemp               = nil
    urlParsedTemp              = URI.parse(urlTemp)
    httpTemp                   = Net::HTTP.new(urlParsedTemp.host, urlParsedTemp.port)
    httpTemp.read_timeout      = 10
    requestTemp                = Net::HTTP::Get.new(urlParsedTemp.request_uri)
    requestTemp["User-Agent"]  = "Mozilla/5.0"
    requestTemp["Content-Type"]= "application/json"
    requestTemp["Accept"]      = "application/json"
    requestTemp["Connection"]  = "keep-alive"

    begin
      responseTemp = httpTemp.request(requestTemp)
    rescue  Exception => exx
      if    ["Errno::ECONNREFUSED"].include? exx.class.to_s then puts 'Web application is not running.\n'
      elsif ["Errno::ECONNRESET","Errno::EINVAL","Timeout::Error","some additional error code here"].include? exx.class.to_s
        puts "Exception occured: exception class is " + exx.class.to_s + " exception message is " + exx.message.to_s
      else    puts "Unknown exception while invoking this request " + exx.class.to_s + "***" + exx.message.to_s
      end
      return
    end

    #  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    # response handling
    responseCodeTemp         = responseTemp.code
    responseInStringTemp     = responseTemp.body.to_s
    strContentTypeOfResponse = responseTemp["content-type"]

    puts("Response Code               : HTTP " + responseCodeTemp.to_s)
    puts("Content type of response is : " + strContentTypeOfResponse.to_s)

    if not strContentTypeOfResponse.to_s.include? 'application/json'
      print("Content type of response expected is : " + 'application/json' + "\n")
      print("Please check what is the issue from server side.\n")
      return
    end

    if (responseCodeTemp.to_i >= 400 && responseCodeTemp.to_i < 500)
      # Client side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ClientSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i >= 500 && responseCodeTemp.to_i < 600 )
      # Server side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ServerSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i == 200)
      print("\nFollowing success response received from web application.\n")

      objJSON = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      print(objHashMapForgetPasswordGetSecretQuestionGETTemp["str_forgetpasswordgetsecretquestion_GET_response_key1"].to_s + ":" + objJSON[objHashMapForgetPasswordGetSecretQuestionGETTemp["str_forgetpasswordgetsecretquestion_GET_response_key1"].to_s]+"\n")
      print(objHashMapForgetPasswordGetSecretQuestionGETTemp["str_forgetpasswordgetsecretquestion_GET_response_key2"].to_s + ":" + objJSON[objHashMapForgetPasswordGetSecretQuestionGETTemp["str_forgetpasswordgetsecretquestion_GET_response_key2"].to_s]+"\n")
      print(objHashMapForgetPasswordGetSecretQuestionGETTemp["str_forgetpasswordgetsecretquestion_GET_response_key3"].to_s + ":" + "\n")

      objJSON_internal = objJSON[objHashMapForgetPasswordGetSecretQuestionGETTemp["str_forgetpasswordgetsecretquestion_GET_response_key3"].to_s]
      print("     " + objHashMapForgetPasswordGetSecretQuestionGETTemp["str_forgetpasswordgetsecretquestion_GET_key_question1"].to_s     + ":" + objJSON_internal[objHashMapForgetPasswordGetSecretQuestionGETTemp["str_forgetpasswordgetsecretquestion_GET_key_question1"].to_s]  + "\n")
      print("     " + objHashMapForgetPasswordGetSecretQuestionGETTemp["str_forgetpasswordgetsecretquestion_GET_key_question2"].to_s     + ":" + objJSON_internal[objHashMapForgetPasswordGetSecretQuestionGETTemp["str_forgetpasswordgetsecretquestion_GET_key_question2"].to_s]  + "\n")

      # insert secret question in basic user hashmap variable
      @@objHashMapBasicUserDetails["str_signup_POST_response_payload_value_secret_question_1"] =  objJSON[objHashMapForgetPasswordGetSecretQuestionGETTemp["str_forgetpasswordgetsecretquestion_GET_key_question1"].to_s]
      @@objHashMapBasicUserDetails["str_signup_POST_response_payload_value_secret_question_2"] =  objJSON[objHashMapForgetPasswordGetSecretQuestionGETTemp["str_forgetpasswordgetsecretquestion_GET_key_question2"].to_s]
    else
      print("Following invalid HTTP code received : " + responseCodeTemp.to_s)
    end

    print("\n----------------------------------------------------------------------------")
  end

  def PUT_reset_password(objHashMapBasicUserDetailsTemp, objHashMapResetPasswordPUTTemp, objHashMapErrorRespTemp)

    puts("----------------------------------------------------------------------------")
    formParamTemp                = Array.new
    formParamTemp << [objHashMapBasicUserDetailsTemp["str_resetpassword_PUT_response_payload_key_emailid"].to_s, objHashMapBasicUserDetailsTemp["str_resetpassword_PUT_response_payload_value_emailid"].to_s ]
    formParamTemp << [objHashMapBasicUserDetailsTemp["str_forgetpassword_PUT_response_payload_key_secret_question_answer_1"].to_s, objHashMapBasicUserDetailsTemp["str_forgetpassword_PUT_response_payload_value_secret_question_answer_1"].to_s ]
    formParamTemp << [objHashMapBasicUserDetailsTemp["str_forgetpassword_PUT_response_payload_key_secret_question_answer_2"].to_s, objHashMapBasicUserDetailsTemp["str_forgetpassword_PUT_response_payload_value_secret_question_answer_2"].to_s ]

    urlTemp                    = objHashMapResetPasswordPUTTemp["str_resetpassword_PUT_url"].to_s # + '-random-string-'
    responseTemp               = nil
    urlParsedTemp              = URI.parse(urlTemp)
    httpTemp                   = Net::HTTP.new(urlParsedTemp.host, urlParsedTemp.port)
    httpTemp.read_timeout      = 10
    requestTemp                = Net::HTTP::Put.new(urlParsedTemp.request_uri)
    requestTemp["User-Agent"]  = "Mozilla/5.0"
    requestTemp["Content-Type"]= "application/x-www-form-urlencoded"
    requestTemp["Accept"]      = "application/json"
    requestTemp["Connection"]  = "keep-alive"
    requestTemp.body           =  URI.encode_www_form(formParamTemp)

    begin
      responseTemp = httpTemp.request(requestTemp)
    rescue  Exception => exx
      if    ["Errno::ECONNREFUSED"].include? exx.class.to_s then puts 'Web application is not running.\n'
      elsif ["Errno::ECONNRESET","Errno::EINVAL","Timeout::Error","some additional error code here"].include? exx.class.to_s
        puts "Exception occured: exception class is " + exx.class.to_s + " exception message is " + exx.message.to_s
      else    puts "Unknown exception while invoking this request " + exx.class.to_s + "***" + exx.message.to_s
      end
      return
    end

    #  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    # response handling
    responseCodeTemp         = responseTemp.code
    responseInStringTemp     = responseTemp.body.to_s
    strContentTypeOfResponse = responseTemp["content-type"]

    puts("Response Code               : HTTP " + responseCodeTemp.to_s)
    puts("Content type of response is : " + strContentTypeOfResponse.to_s)

    if not strContentTypeOfResponse.to_s.include? 'application/json'
      print("Content type of response expected is : " + 'application/json' + "\n")
      print("Please check what is the issue from server side.\n")
      return
    end

    if (responseCodeTemp.to_i >= 400 && responseCodeTemp.to_i < 500)
      # Client side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ClientSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i >= 500 && responseCodeTemp.to_i < 600 )
      # Server side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ServerSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i == 200)
      print("\nFollowing success response received from web application.\n")

      objJSON = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      print(objHashMapResetPasswordPUTTemp["str_resetpassword_PUT_response_key1"].to_s + ":" + objJSON[objHashMapResetPasswordPUTTemp["str_resetpassword_PUT_response_key1"].to_s]+"\n")
      print(objHashMapResetPasswordPUTTemp["str_resetpassword_PUT_response_key2"].to_s + ":" + objJSON[objHashMapResetPasswordPUTTemp["str_resetpassword_PUT_response_key2"].to_s]+"\n")
      print(objHashMapResetPasswordPUTTemp["str_resetpassword_PUT_response_key3"].to_s + ":" + objJSON[objHashMapResetPasswordPUTTemp["str_resetpassword_PUT_response_key3"].to_s]+"\n")

      # insert new password in basic user hashmap variable
      @@objHashMapBasicUserDetails["str_signup_POST_response_payload_value_password"] =  objJSON[objHashMapResetPasswordPUTTemp["str_resetpassword_PUT_response_key3"].to_s]
      @@objHashMapBasicUserDetails["str_signin_POST_response_payload_value_password"] =  objJSON[objHashMapResetPasswordPUTTemp["str_resetpassword_PUT_response_key3"].to_s]
      @@objHashMapBasicUserDetails["str_getaccountprofiledetail_GET_response_payload_value_password"] =  objJSON[objHashMapResetPasswordPUTTemp["str_resetpassword_PUT_response_key3"].to_s]
      @@objHashMapBasicUserDetails["str_modifyaccountprofiledetail_PUT_response_payload_value_password"] =  objJSON[objHashMapResetPasswordPUTTemp["str_resetpassword_PUT_response_key3"].to_s]
    else
      print("Following invalid HTTP code received : " + responseCodeTemp.to_s)
    end

    print("\n----------------------------------------------------------------------------")
  end

  def GET_basic_account_profile_detail_special(objHashMapBasicUserDetailsTemp,objHashMapGetAccountProfileDetailGETTemp, objHashMapErrorRespTemp)

    puts("----------------------------------------------------------------------------")
    if objHashMapBasicUserDetailsTemp["str_basic_account_latest_session_value"].to_s.empty?
      puts("This test can not be performed as latest session value is empty.")
      return
    end

    # build the query param string using string builder first
    urlTemp = objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_url"] + "?"
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_getaccountprofiledetail_GET_response_payload_key_emailid"].to_s + "=")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_getaccountprofiledetail_GET_response_payload_value_emailid"].to_s)
    urlTemp.concat("&")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_getaccountprofiledetail_GET_response_payload_key_password"] + "=")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_getaccountprofiledetail_GET_response_payload_value_password"])
    urlTemp.concat("&")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_basic_account_latest_session_key"] + "=")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_basic_account_latest_session_value"])

    formParamTemp              = ''
    responseTemp               = nil
    urlParsedTemp              = URI.parse(urlTemp)
    httpTemp                   = Net::HTTP.new(urlParsedTemp.host, urlParsedTemp.port)
    httpTemp.read_timeout      = 10
    requestTemp                = Net::HTTP::Get.new(urlParsedTemp.request_uri)
    requestTemp["User-Agent"]  = "Mozilla/5.0"
    requestTemp["Content-Type"]= "application/xml"    ###  to check if the Content-Type request with xml type is accepted by the application
    requestTemp["Accept"]      = "application/json"
    requestTemp["Connection"]  = "keep-alive"

    begin
      responseTemp = httpTemp.request(requestTemp)
    rescue  Exception => exx
      if    ["Errno::ECONNREFUSED"].include? exx.class.to_s then puts 'Web application is not running.\n'
      elsif ["Errno::ECONNRESET","Errno::EINVAL","Timeout::Error","some additional error code here"].include? exx.class.to_s
        puts "Exception occured: exception class is " + exx.class.to_s + " exception message is " + exx.message.to_s
      else    puts "Unknown exception while invoking this request " + exx.class.to_s + "***" + exx.message.to_s
      end
      return
    end

    #  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    # response handling
    responseCodeTemp         = responseTemp.code
    responseInStringTemp     = responseTemp.body.to_s
    strContentTypeOfResponse = responseTemp["content-type"]

    puts("Response Code               : HTTP " + responseCodeTemp.to_s)
    puts("Content type of response is : " + strContentTypeOfResponse.to_s)

    if not strContentTypeOfResponse.to_s.include? 'application/json'
      print("Content type of response expected is : " + 'application/json' + "\n")
      print("Please check what is the issue from server side.\n")
      return
    end

    if (responseCodeTemp.to_i >= 400 && responseCodeTemp.to_i < 500)
      # Client side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ClientSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i >= 500 && responseCodeTemp.to_i < 600 )
      # Server side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ServerSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i == 200)
      print("\nFollowing success response received from web application.\n")

      objJSON = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      print(objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_response_key1"].to_s + ":" + objJSON[objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_response_key1"].to_s]+"\n")
      print(objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_response_key2"].to_s + ":" + objJSON[objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_response_key2"].to_s]+"\n")
      print(objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_response_key3"].to_s + ":" + "\n")

      objJSON_internal = objJSON[objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_response_key3"].to_s]
      print("     " + objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_key_emailid"].to_s       + ":" + objJSON_internal[objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_key_emailid"].to_s]  + "\n")
      print("     " + objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_key_firstname"].to_s     + ":" + objJSON_internal[objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_key_firstname"].to_s]  + "\n")
      print("     " + objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_key_lastname"].to_s      + ":" + objJSON_internal[objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_key_lastname"].to_s]  + "\n")
      print("     " + objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_key_gender"].to_s        + ":" + objJSON_internal[objHashMapGetAccountProfileDetailGETTemp["str_getaccountprofiledetail_GET_key_gender"].to_s]  + "\n")
    else
      print("Following invalid HTTP code received : " + responseCodeTemp.to_s)
    end

    print("\n----------------------------------------------------------------------------")
  end

  def DELETE_signout_basic_account_special(objHashMapBasicUserDetailsTemp, objHashMapSignoutDELETETemp, objHashMapErrorRespTemp)

    puts("----------------------------------------------------------------------------")
    if @@objHashMapBasicUserDetails["str_basic_account_session_value"].to_s.empty?
      puts("This test can not be performed as session value is empty.")
      return
    end

    # build the query param string using string builder first
    urlTemp = objHashMapSignoutDELETETemp["str_signout_DELETE_url"] + "?"
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_signout_DELETE_response_payload_key_emailid"].to_s + "=")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_signout_DELETE_response_payload_value_emailid"].to_s)
    urlTemp.concat("&")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_basic_account_session_key"] + "=")
    urlTemp.concat(objHashMapBasicUserDetailsTemp["str_basic_account_session_value"])

    formParamTemp              = ''
    responseTemp               = nil
    urlParsedTemp              = URI.parse(urlTemp)
    httpTemp                   = Net::HTTP.new(urlParsedTemp.host, urlParsedTemp.port)
    httpTemp.read_timeout      = 10
    requestTemp                = Net::HTTP::Delete.new(urlParsedTemp.request_uri)
    requestTemp["User-Agent"]  = "Mozilla/5.0"
    requestTemp["Content-Type"]= "application/json"
    requestTemp["Accept"]      = "application/xml"    ###  to check if the Content-Type request with xml type is accepted by the application
    requestTemp["Connection"]  = "keep-alive"

    begin
      responseTemp = httpTemp.request(requestTemp)
    rescue  Exception => exx
      if    ["Errno::ECONNREFUSED"].include? exx.class.to_s then puts 'Web application is not running.\n'
      elsif ["Errno::ECONNRESET","Errno::EINVAL","Timeout::Error","some additional error code here"].include? exx.class.to_s
        puts "Exception occured: exception class is " + exx.class.to_s + " exception message is " + exx.message.to_s
      else    puts "Unknown exception while invoking this request " + exx.class.to_s + "***" + exx.message.to_s
      end
      return
    end

    #  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    # response handling
    responseCodeTemp         = responseTemp.code
    responseInStringTemp     = responseTemp.body.to_s
    strContentTypeOfResponse = responseTemp["content-type"]

    puts("Response Code               : HTTP " + responseCodeTemp.to_s)
    puts("Content type of response is : " + strContentTypeOfResponse.to_s)

    if not strContentTypeOfResponse.to_s.include? 'application/json'
      print("Content type of response expected is : " + 'application/json' + "\n")
      print("Please check what is the issue from server side.\n")
      return
    end

    if (responseCodeTemp.to_i >= 400 && responseCodeTemp.to_i < 500)
      # Client side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ClientSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i >= 500 && responseCodeTemp.to_i < 600 )
      # Server side error handler
      # parsing the response and json conversion
      objJSON                 = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      ClassRubyRESTAPITesting.new.send(:handle_ServerSideError,responseCodeTemp.to_i)
      ClassRubyRESTAPITesting.new.send(:handle_ErrorResponse,objJSON,objHashMapErrorRespTemp)
      return
    end

    if (responseCodeTemp.to_i == 200)
      print("\nFollowing success response received from web application.\n")

      objJSON = ClassRubyRESTAPITesting.new.send(:parse_StringResponse,responseInStringTemp)
      print(objHashMapSignoutDELETETemp["str_signout_DELETE_response_key1"].to_s + ":" + objJSON[objHashMapSignoutDELETETemp["str_signout_DELETE_response_key1"].to_s]+"\n")
      print(objHashMapSignoutDELETETemp["str_signout_DELETE_response_key2"].to_s + ":" + objJSON[objHashMapSignoutDELETETemp["str_signout_DELETE_response_key2"].to_s]+"\n")
      print(objHashMapSignoutDELETETemp["str_signout_DELETE_response_key3"].to_s + ":" + objJSON[objHashMapSignoutDELETETemp["str_signout_DELETE_response_key3"].to_s]+"\n")

      # during successful sign out set the session id / value to empty
      @@objHashMapBasicUserDetails["str_basic_account_session_value"] =  ''
      @@objHashMapBasicUserDetails["str_basic_account_latest_session_value"] =  ''
    else
      print("Following invalid HTTP code received : " + responseCodeTemp.to_s)
    end

    print("\n----------------------------------------------------------------------------")
  end









  # basic variables init
  nCount             = 0
  strTempEmail       = ""
  strTempPassword    = "k9aPass"
  obj_NetHttp        = ClassRubyRESTAPITesting.new
  @@objHashMapBasicUserDetails                    = Hash.new
  @@objHashMapErrorResp                           = Hash.new
  @@objHashMapSignupGET                           = Hash.new
  @@objHashMapSignupPOST                          = Hash.new
  @@objHashMapActivateGET                         = Hash.new
  @@objHashMapSigninPOST                          = Hash.new
  @@objHashMapSignoutDELETE                       = Hash.new
  @@objHashMapGetAccountProfileDetailGET          = Hash.new
  @@objHashMapModifyAccountProfileDetailPUT       = Hash.new
  @@objHashMapForgetPasswordGetSecretQuestionGET  = Hash.new
  @@objHashMapResetPasswordPUT                    = Hash.new




  # scenario 1 init
  nCount                                        = 1
  strTempEmail                                  = "Happy0" + nCount.to_s + "@aaa.com"
  @@objHashMapBasicUserDetails                  = ClassRubyRESTAPITesting.new.send(:fill_BasicUserDetails,strTempEmail,strTempPassword)
  @@objHashMapErrorResp                         = ClassRubyRESTAPITesting.new.send(:fill_ErrorResponse)
  @@objHashMapSignupGET                         = ClassRubyRESTAPITesting.new.send(:fill_SignupGET)
  @@objHashMapSignupPOST                        = ClassRubyRESTAPITesting.new.send(:fill_SignupPOST)
  @@objHashMapActivateGET                       = ClassRubyRESTAPITesting.new.send(:fill_ActivateGET)
  @@objHashMapSigninPOST                        = ClassRubyRESTAPITesting.new.send(:fill_SigninPOST)
  @@objHashMapSignoutDELETE                     = ClassRubyRESTAPITesting.new.send(:fill_SignoutDELETE)

  puts("\nScenario1.1 - Http-GET signup parameters")
  obj_NetHttp.GET_signup_details(@@objHashMapSignupGET, @@objHashMapErrorResp)

  puts("\nScenario1.2 - Http-POST signup actual")
  obj_NetHttp.POST_signup_actual(@@objHashMapBasicUserDetails, @@objHashMapSignupPOST, @@objHashMapErrorResp)

  puts("\nScenario1.3 - Http-GET activate basic account")
  obj_NetHttp.GET_activate_basic_account(@@objHashMapBasicUserDetails,@@objHashMapActivateGET, @@objHashMapErrorResp)

  puts("\nScenario1.4 - Http-POST signin actual")
  obj_NetHttp.POST_signin_actual(@@objHashMapBasicUserDetails, @@objHashMapSigninPOST, @@objHashMapErrorResp)

  puts("\nScenario1.5 - Http-DELETE signout basic account")
  obj_NetHttp.DELETE_signout_basic_account(@@objHashMapBasicUserDetails,@@objHashMapSignoutDELETE, @@objHashMapErrorResp)



  # scenario 2 init
  nCount                                          = 2
  strTempEmail                                    = "Happy0" + nCount.to_s + "@aaa.com"
  @@objHashMapBasicUserDetails                    = ClassRubyRESTAPITesting.new.send(:fill_BasicUserDetails,strTempEmail,strTempPassword)
  @@objHashMapErrorResp                           = ClassRubyRESTAPITesting.new.send(:fill_ErrorResponse)
  @@objHashMapSignupGET                           = ClassRubyRESTAPITesting.new.send(:fill_SignupGET)
  @@objHashMapSignupPOST                          = ClassRubyRESTAPITesting.new.send(:fill_SignupPOST)
  @@objHashMapActivateGET                         = ClassRubyRESTAPITesting.new.send(:fill_ActivateGET)
  @@objHashMapSigninPOST                          = ClassRubyRESTAPITesting.new.send(:fill_SigninPOST)
  @@objHashMapSignoutDELETE                       = ClassRubyRESTAPITesting.new.send(:fill_SignoutDELETE)
  @@objHashMapGetAccountProfileDetailGET          = ClassRubyRESTAPITesting.new.send(:fill_GetAccountProfileDetailGET)
  @@objHashMapModifyAccountProfileDetailPUT       = ClassRubyRESTAPITesting.new.send(:fill_ModifyAccountProfileDetailPUT)

  puts("\n\nScenario2.1 - Http-GET signup parameters")
  obj_NetHttp.GET_signup_details(@@objHashMapSignupGET, @@objHashMapErrorResp)

  puts("\nScenario2.2 - Http-POST signup actual")
  obj_NetHttp.POST_signup_actual(@@objHashMapBasicUserDetails, @@objHashMapSignupPOST, @@objHashMapErrorResp)

  puts("\nScenario2.3 - Http-GET activate basic account")
  obj_NetHttp.GET_activate_basic_account(@@objHashMapBasicUserDetails, @@objHashMapActivateGET, @@objHashMapErrorResp)

  puts("\nScenario2.4 - Http-POST signin actual")
  obj_NetHttp.POST_signin_actual(@@objHashMapBasicUserDetails, @@objHashMapSigninPOST, @@objHashMapErrorResp)

  puts("\nScenario2.5 - Http-GET get basic account profile detail")
  obj_NetHttp.GET_basic_account_profile_detail(@@objHashMapBasicUserDetails,@@objHashMapGetAccountProfileDetailGET, @@objHashMapErrorResp)

  # actually modify details e.g. first name and last name
  @@objHashMapBasicUserDetails["str_modifyaccountprofiledetail_PUT_response_payload_value_firstname"] = "Jack"
  @@objHashMapBasicUserDetails["str_modifyaccountprofiledetail_PUT_response_payload_value_lastname"] = "Black"
  puts("\nScenario2.6 - Http-PUT modify basic account profile detail")
  obj_NetHttp.PUT_modify_basic_account_profile_detail(@@objHashMapBasicUserDetails,@@objHashMapModifyAccountProfileDetailPUT, @@objHashMapErrorResp)

  puts("\nScenario2.7 - Http-GET get basic account profile detail again")
  obj_NetHttp.GET_basic_account_profile_detail(@@objHashMapBasicUserDetails,@@objHashMapGetAccountProfileDetailGET, @@objHashMapErrorResp)

  puts("\nScenario2.8 - Http-DELETE signout basic account")
  obj_NetHttp.DELETE_signout_basic_account(@@objHashMapBasicUserDetails,@@objHashMapSignoutDELETE, @@objHashMapErrorResp)



  # scenario 3 init
  nCount                                          = 3
  strTempEmail                                    = "Happy0" + nCount.to_s + "@aaa.com"
  @@objHashMapBasicUserDetails                    = ClassRubyRESTAPITesting.new.send(:fill_BasicUserDetails,strTempEmail,strTempPassword)
  @@objHashMapErrorResp                           = ClassRubyRESTAPITesting.new.send(:fill_ErrorResponse)
  @@objHashMapSignupGET                           = ClassRubyRESTAPITesting.new.send(:fill_SignupGET)
  @@objHashMapSignupPOST                          = ClassRubyRESTAPITesting.new.send(:fill_SignupPOST)
  @@objHashMapActivateGET                         = ClassRubyRESTAPITesting.new.send(:fill_ActivateGET)
  @@objHashMapSigninPOST                          = ClassRubyRESTAPITesting.new.send(:fill_SigninPOST)
  @@objHashMapSignoutDELETE                       = ClassRubyRESTAPITesting.new.send(:fill_SignoutDELETE)
  @@objHashMapGetAccountProfileDetailGET          = ClassRubyRESTAPITesting.new.send(:fill_GetAccountProfileDetailGET)
  @@objHashMapModifyAccountProfileDetailPUT       = ClassRubyRESTAPITesting.new.send(:fill_ModifyAccountProfileDetailPUT)
  @@objHashMapForgetPasswordGetSecretQuestionGET  = ClassRubyRESTAPITesting.new.send(:fill_ForgetPasswordGetSecretQuestionGET)
  @@objHashMapResetPasswordPUT                    = ClassRubyRESTAPITesting.new.send(:fill_ResetPasswordPUT)

  puts("\n\nScenario3.1 - Http-GET signup parameters")
  obj_NetHttp.GET_signup_details(@@objHashMapSignupGET, @@objHashMapErrorResp)

  puts("\nScenario3.2 - Http-POST signup actual")
  obj_NetHttp.POST_signup_actual(@@objHashMapBasicUserDetails, @@objHashMapSignupPOST, @@objHashMapErrorResp)

  puts("\nScenario3.3 - Http-GET activate basic account")
  obj_NetHttp.GET_activate_basic_account(@@objHashMapBasicUserDetails,@@objHashMapActivateGET, @@objHashMapErrorResp)

  puts("\nScenario3.4 - Http-POST signin actual")
  obj_NetHttp.POST_signin_actual(@@objHashMapBasicUserDetails, @@objHashMapSigninPOST, @@objHashMapErrorResp)

  puts("\nScenario3.5 - Http-GET forget password get secret question")
  obj_NetHttp.GET_forget_password_get_secret_question(@@objHashMapBasicUserDetails,@@objHashMapForgetPasswordGetSecretQuestionGET, @@objHashMapErrorResp)

  puts("\nScenario3.6 - Http-PUT reset password")
  obj_NetHttp.PUT_reset_password(@@objHashMapBasicUserDetails, @@objHashMapResetPasswordPUT, @@objHashMapErrorResp)

  puts("\nScenario3.7 - Http-DELETE signout basic account")
  obj_NetHttp.DELETE_signout_basic_account(@@objHashMapBasicUserDetails, @@objHashMapSignoutDELETE, @@objHashMapErrorResp)

  puts("\nScenario3.8 - Http-POST signin actual")
  obj_NetHttp.POST_signin_actual(@@objHashMapBasicUserDetails, @@objHashMapSigninPOST, @@objHashMapErrorResp)


  # scenario 4 init
  nCount                                          = 4
  strTempEmail                                    = "Happy0" + nCount.to_s + "@aaa.com"
  @@objHashMapBasicUserDetails                    = ClassRubyRESTAPITesting.new.send(:fill_BasicUserDetails,strTempEmail,strTempPassword)
  @@objHashMapErrorResp                           = ClassRubyRESTAPITesting.new.send(:fill_ErrorResponse)
  @@objHashMapSignupGET                           = ClassRubyRESTAPITesting.new.send(:fill_SignupGET)
  @@objHashMapSignupPOST                          = ClassRubyRESTAPITesting.new.send(:fill_SignupPOST)
  @@objHashMapActivateGET                         = ClassRubyRESTAPITesting.new.send(:fill_ActivateGET)
  @@objHashMapSigninPOST                          = ClassRubyRESTAPITesting.new.send(:fill_SigninPOST)
  @@objHashMapSignoutDELETE                       = ClassRubyRESTAPITesting.new.send(:fill_SignoutDELETE)
  @@objHashMapGetAccountProfileDetailGET          = ClassRubyRESTAPITesting.new.send(:fill_GetAccountProfileDetailGET)
  @@objHashMapModifyAccountProfileDetailPUT       = ClassRubyRESTAPITesting.new.send(:fill_ModifyAccountProfileDetailPUT)
  @@objHashMapForgetPasswordGetSecretQuestionGET  = ClassRubyRESTAPITesting.new.send(:fill_ForgetPasswordGetSecretQuestionGET)
  @@objHashMapResetPasswordPUT                    = ClassRubyRESTAPITesting.new.send(:fill_ResetPasswordPUT)

  puts("\n\nScenario4.1 - Http-GET signup parameters")
  obj_NetHttp.GET_signup_details(@@objHashMapSignupGET, @@objHashMapErrorResp)

  puts("\nScenario4.2 - Http-POST signup actual")
  obj_NetHttp.POST_signup_actual(@@objHashMapBasicUserDetails, @@objHashMapSignupPOST, @@objHashMapErrorResp)

  puts("\nScenario4.3 - Http-POST signin actual")
  obj_NetHttp.POST_signin_actual(@@objHashMapBasicUserDetails, @@objHashMapSigninPOST, @@objHashMapErrorResp)

  # use dummy / fake session id
  @@objHashMapBasicUserDetails["str_basic_account_session_value"] = "12345678901234567890123456789012"
  @@objHashMapBasicUserDetails["str_basic_account_latest_session_value"] = "12345678901234567890123456789012";
  puts("\nScenario4.4 - Http-DELETE signout basic account")
  obj_NetHttp.DELETE_signout_basic_account(@@objHashMapBasicUserDetails,@@objHashMapSignoutDELETE, @@objHashMapErrorResp)





  # scenario 5 init
  nCount                                          = 5
  strTempEmail                                    = "Happy0" + nCount.to_s + "@aaa.com"
  @@objHashMapBasicUserDetails                    = ClassRubyRESTAPITesting.new.send(:fill_BasicUserDetails,strTempEmail,strTempPassword)
  @@objHashMapErrorResp                           = ClassRubyRESTAPITesting.new.send(:fill_ErrorResponse)
  @@objHashMapSignupGET                           = ClassRubyRESTAPITesting.new.send(:fill_SignupGET)
  @@objHashMapSignupPOST                          = ClassRubyRESTAPITesting.new.send(:fill_SignupPOST)
  @@objHashMapActivateGET                         = ClassRubyRESTAPITesting.new.send(:fill_ActivateGET)
  @@objHashMapSigninPOST                          = ClassRubyRESTAPITesting.new.send(:fill_SigninPOST)
  @@objHashMapSignoutDELETE                       = ClassRubyRESTAPITesting.new.send(:fill_SignoutDELETE)
  @@objHashMapGetAccountProfileDetailGET          = ClassRubyRESTAPITesting.new.send(:fill_GetAccountProfileDetailGET)
  @@objHashMapModifyAccountProfileDetailPUT       = ClassRubyRESTAPITesting.new.send(:fill_ModifyAccountProfileDetailPUT)
  @@objHashMapForgetPasswordGetSecretQuestionGET  = ClassRubyRESTAPITesting.new.send(:fill_ForgetPasswordGetSecretQuestionGET)
  @@objHashMapResetPasswordPUT                    = ClassRubyRESTAPITesting.new.send(:fill_ResetPasswordPUT)

  puts("\n\nScenario5.1 - Http-GET signup parameters")
  obj_NetHttp.GET_signup_details(@@objHashMapSignupGET, @@objHashMapErrorResp)

  puts("\nScenario5.2 - Http-POST signup actual")
  obj_NetHttp.POST_signup_actual(@@objHashMapBasicUserDetails, @@objHashMapSignupPOST, @@objHashMapErrorResp)

  puts("\nScenario5.3 - Http-GET activate basic account")
  obj_NetHttp.GET_activate_basic_account(@@objHashMapBasicUserDetails,@@objHashMapActivateGET, @@objHashMapErrorResp)

  puts("\nScenario5.4 - Http-POST signin actual")
  obj_NetHttp.POST_signin_actual(@@objHashMapBasicUserDetails, @@objHashMapSigninPOST, @@objHashMapErrorResp)

  puts("\nScenario5.5 - Http-GET get basic account profile detail with Content type as XML")
  obj_NetHttp.GET_basic_account_profile_detail_special(@@objHashMapBasicUserDetails,@@objHashMapGetAccountProfileDetailGET, @@objHashMapErrorResp)

  puts("\nScenario5.6 - Http-DELETE signout basic account with acceptable content type set to XML")
  obj_NetHttp.DELETE_signout_basic_account_special(@@objHashMapBasicUserDetails, @@objHashMapSignoutDELETE, @@objHashMapErrorResp)



  # scenario 6 init
  nCount                                          = 6
  strTempEmail                                    = "Happy0" + nCount.to_s + "@aaa.com"
  @@objHashMapBasicUserDetails                    = ClassRubyRESTAPITesting.new.send(:fill_BasicUserDetails,strTempEmail,strTempPassword)
  @@objHashMapErrorResp                           = ClassRubyRESTAPITesting.new.send(:fill_ErrorResponse)
  @@objHashMapSignupGET                           = ClassRubyRESTAPITesting.new.send(:fill_SignupGET)
  @@objHashMapSignupPOST                          = ClassRubyRESTAPITesting.new.send(:fill_SignupPOST)
  @@objHashMapActivateGET                         = ClassRubyRESTAPITesting.new.send(:fill_ActivateGET)
  @@objHashMapSigninPOST                          = ClassRubyRESTAPITesting.new.send(:fill_SigninPOST)
  @@objHashMapSignoutDELETE                       = ClassRubyRESTAPITesting.new.send(:fill_SignoutDELETE)
  @@objHashMapGetAccountProfileDetailGET          = ClassRubyRESTAPITesting.new.send(:fill_GetAccountProfileDetailGET)
  @@objHashMapModifyAccountProfileDetailPUT       = ClassRubyRESTAPITesting.new.send(:fill_ModifyAccountProfileDetailPUT)
  @@objHashMapForgetPasswordGetSecretQuestionGET  = ClassRubyRESTAPITesting.new.send(:fill_ForgetPasswordGetSecretQuestionGET)
  @@objHashMapResetPasswordPUT                    = ClassRubyRESTAPITesting.new.send(:fill_ResetPasswordPUT)

  puts("\nScenario6.1 - Http-POST signup actual")
  obj_NetHttp.POST_signup_actual(@@objHashMapBasicUserDetails, @@objHashMapSignupPOST, @@objHashMapErrorResp)

  # use dummy / fake session id
  @@objHashMapBasicUserDetails["str_basic_account_session_value"] =        "12345678901234567890123456789012"
  @@objHashMapBasicUserDetails["str_basic_account_latest_session_value"] = "12345678901234567890123456789012"
  puts("\nScenario6.2 - Http-DELETE signout basic account")
  obj_NetHttp.DELETE_signout_basic_account(@@objHashMapBasicUserDetails, @@objHashMapSignoutDELETE, @@objHashMapErrorResp)

  puts("\nScenario6.3 - Http-GET forget password get secret question")
  obj_NetHttp.GET_forget_password_get_secret_question(@@objHashMapBasicUserDetails, @@objHashMapForgetPasswordGetSecretQuestionGET, @@objHashMapErrorResp)

  puts("\nScenario6.4 - Http-GET get basic account profile detail")
  obj_NetHttp.GET_basic_account_profile_detail(@@objHashMapBasicUserDetails, @@objHashMapGetAccountProfileDetailGET, @@objHashMapErrorResp)












end