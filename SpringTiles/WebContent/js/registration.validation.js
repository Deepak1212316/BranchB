(function($,W,D)
{
    var JQUERY4U = {};

    JQUERY4U.UTIL =
    {
        setupFormValidation: function()
        {
        	$("#adminlogin").validate({
                rules: {
                    adminId:{required:true, accept: "[a-zA-Z]+" },
                    password: {required: true},       
                },
                    
                	 messages: {
                     adminId: "Please enter your valid userid",
                     password: "Please enter your valid password",
                     
                     },
                	submitHandler: function(form) {
                    form.submit();
                }
            });
        	
        	
        	$( "#reg" ).validate({
        		rules: {
        			name: {
        				required: true,
        				minlength: 4,
        				accept:"[a-zA-Z]+"
        			},
        			userid: {
        				required: true,
        				minlength: 4
        			},
        			email: {
        			     required: true,
        			     minlength: 6,
        				 email: true
        			 },
        			password:{
        				required: true,
        				minlength: 8,
        				maxlength:14
        			},
        			cpassword: {
        			    required: true,
        			    minlength: 8,
        			    equalTo: "#p1"
        			},
        			address: {
        				required: true,
        				minlength: 4
        			},
        			zip: {
        				required: true,
        				minlength: 6,
        				digits:true
        			},
        			phone: {
        				required: true,
        				minlength: 10,
        				digits:true
        			},
        			
        			city: {
        				required: true,
        				minlength: 3,
        				accept: "[a-z]",
        			
        				maxlength:16
        			},
        			state: {
        				required: true
        			},
        			country:{
        				required:true
        			}
        		},
        		focusInvalid: false,
        		onkeyup: false, 
        		submitHandler: function(form) {
        			form.submit(); 
        		},	
        		messages: {
        		    name: {
        		        required: "Please enter full  name",
        		        minlength: jQuery.format("Enter at least 4 characters"),
        				notEqual: "Please specify a different (non-default) value"
        			},
        			 userid: {
        			        required: "Please enter your userid",
        			        minlength: jQuery.format("Enter at least 4 characters"),
        					notEqual: "Please specify a different (non-default) value"
        				},
        				email:{
        					required: "Please enter an e-mail",
        					minlength: jQuery.format("E-mail must be at least 6 characters long"),
        					email: "Please enter valid e-mail" 
        				},
        			password: {
        		        required: "Please enter password",
        		        minlength: jQuery.format("Password must be at least 8 characters long"),
        				notEqual: "Please specify a different (non-default) value",
        				maxlength:"Password not exceed then 14 alphanumeric digits"
        			},
        			cpassword: {
        		        required: "Please re-enter password",
        		        equalTo: "Password fields have to match",
        				notEqual: "Please specify a different (non-default) value" 
        			},
        			address:{
        				required:"Please enter your address",
        				 minlength: jQuery.format("Address is too small"),
        			},
        			zip:{
        				required:"Please enter your zip",
        				minlength: jQuery.format("Zip must be at least 6 digits long"),
        				digits:"Only digits are allowed"
        			},
        			phone:{
        				required:"Please enter your phone",
        				minlength: jQuery.format("phone must be at least 10 digits long"),
        				digits:"Only digits are allowed"
        			},
        			city:{
        				required:"Please enter your city",
        				minlength: jQuery.format("Enter at least 3 characters"),
        		        accept: "Only Characters are allowed",
        				notEqual: "Please specify a different (non-default) value",
        				maxlength:"Only 16 Characters are allowed"
        			},
        			state: {
        				required: "Please select your state"
        			},
        			country: {
        				required: "Please select your country"
        			},
        		}	
        	});
        	
        	
          	$("#userlogin").validate({
                rules: {
                	userid:{required:true, accept: "[a-zA-Z]+" },
                    password: {required: true,minlength:8},
                        
                },
                    
                	 messages: {
                	 userid: "Please enter your valid userid",
                     password: "Please enter your valid password",
                     
                     },
                	submitHandler: function(form) {
                    form.submit();
                }
            });

        	$("#addcategory").validate({
                rules: {
                	categoryname:{required:true, accept: "[a-zA-Z]+" },
                        
                },
                    
                	 messages: {
                     categoryname: "Please enter category name",
                     
                     },
                	submitHandler: function(form) {
                    form.submit();
                }
            });

        	//form validation rules
            $("#letter").validate({
                rules: {
                	email: {required: true,email: true}
                    
                },
                    
                	 messages: {
                		
                		 email:"Please enter your valid email"
                        
                      },
                	submitHandler: function(form) {
                    form.submit();
                }
            });
        	//add product validations rules
            $("#addproduct").validate({
                rules: {
                    productname:{required:true, accept: "[a-zA-Z]+" },
                    productprice: {required: true,accept: "[0-9]+" },
                   
                    quantity:{required:true,accept: "[0-9]+"},
                    description:{required:true,minlength:10},
                    briefdisc:{required:true,minlength:10},
                     
                },
                    
                	 messages: {
                		  productname: "Please enter product name",
                		  productprice:"Price should be numeric",
                     
                          quantity:"Please enter quantity",
                          description:"Please write keywords",
                          briefdisc:"Write at least 10 Characters",
                     },
                     
                	submitHandler: function(form) {
                    form.submit();
                }
            });
            $("#contactus").validate({
                rules: {
                	name1:{required:true, accept: "[a-zA-Z]+" },
                	email1: {required: true,email: true},
                	phone:{required:true, accept: "[0-9]+" },
                	subject1:{required:true,minlength:4},
                	message1:{required:true,minlength:10},
                    
                     
                },
                    
                	 messages: {
                		  email1:"Please enter your valid email",
                		  phone:"Please enter vaild phone number",
                		  subject1:"Please write minimum 4 character subject",
          
                		  message:"message should be at least 10 character ",
                     },
                     
                	submitHandler: function(form) {
                    form.submit();
                }
            });
        }
    };

    //when the dom has loaded setup form validation rules
    $(D).ready(function($) {
        JQUERY4U.UTIL.setupFormValidation();
    });

})(jQuery, window, document);

function deleteConform(){
	var x=confirm("Confirm Delete Customer?");
	if(x==false)
		return false;
	}