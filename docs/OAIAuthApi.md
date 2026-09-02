# OAIAuthApi

All URIs are relative to *https://demo.simplebilly.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptInvite**](OAIAuthApi.md#acceptinvite) | **POST** /auth/accept-invite | Accept an invite: create the account (or reuse an existing one) and join the inviting tenant. The invite token proves control of the mailbox.
[**callRegister**](OAIAuthApi.md#callregister) | **POST** /auth/register | Register a new user account
[**forgotPassword**](OAIAuthApi.md#forgotpassword) | **POST** /auth/forgot-password | Send a password reset email to the user
[**login**](OAIAuthApi.md#login) | **POST** /auth/login | Authenticate a user with email + password (optional TOTP)
[**logout**](OAIAuthApi.md#logout) | **POST** /auth/logout | Log out the current user (kills the assay session)
[**magicLinkLogin**](OAIAuthApi.md#magiclinklogin) | **POST** /auth/magic-link | Request a magic link login (sends an email with a one-time link)
[**magicLinkVerify**](OAIAuthApi.md#magiclinkverify) | **POST** /auth/magic-link/verify | Verify a magic link token and log the user in
[**resetPassword**](OAIAuthApi.md#resetpassword) | **POST** /auth/reset-password | Reset the user&#39;s password using a reset token
[**totpEnable**](OAIAuthApi.md#totpenable) | **POST** /auth/totp/enable | Enable TOTP two-factor authentication by verifying a code
[**totpSetup**](OAIAuthApi.md#totpsetup) | **GET** /auth/totp/setup | Set up TOTP two-factor authentication (generates secret + backup codes)
[**verifyEmail**](OAIAuthApi.md#verifyemail) | **POST** /auth/verify-email | Verify a user&#39;s email address using a verification token


# **acceptInvite**
```objc
-(NSURLSessionTask*) acceptInviteWithAcceptInviteRequest: (OAIAcceptInviteRequest*) acceptInviteRequest
        completionHandler: (void (^)(NSError* error)) handler;
```

Accept an invite: create the account (or reuse an existing one) and join the inviting tenant. The invite token proves control of the mailbox.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIAcceptInviteRequest* acceptInviteRequest = [[OAIAcceptInviteRequest alloc] init]; // 

OAIAuthApi*apiInstance = [[OAIAuthApi alloc] init];

// Accept an invite: create the account (or reuse an existing one) and join the inviting tenant. The invite token proves control of the mailbox.
[apiInstance acceptInviteWithAcceptInviteRequest:acceptInviteRequest
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIAuthApi->acceptInvite: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acceptInviteRequest** | [**OAIAcceptInviteRequest***](OAIAcceptInviteRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callRegister**
```objc
-(NSURLSessionTask*) callRegisterWithRegisterRequest: (OAIRegisterRequest*) registerRequest
        completionHandler: (void (^)(OAIAuthResponse* output, NSError* error)) handler;
```

Register a new user account

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIRegisterRequest* registerRequest = [[OAIRegisterRequest alloc] init]; // 

OAIAuthApi*apiInstance = [[OAIAuthApi alloc] init];

// Register a new user account
[apiInstance callRegisterWithRegisterRequest:registerRequest
          completionHandler: ^(OAIAuthResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAuthApi->callRegister: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerRequest** | [**OAIRegisterRequest***](OAIRegisterRequest.md)|  | 

### Return type

[**OAIAuthResponse***](OAIAuthResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forgotPassword**
```objc
-(NSURLSessionTask*) forgotPasswordWithForgotPasswordRequest: (OAIForgotPasswordRequest*) forgotPasswordRequest
        completionHandler: (void (^)(NSError* error)) handler;
```

Send a password reset email to the user

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIForgotPasswordRequest* forgotPasswordRequest = [[OAIForgotPasswordRequest alloc] init]; // 

OAIAuthApi*apiInstance = [[OAIAuthApi alloc] init];

// Send a password reset email to the user
[apiInstance forgotPasswordWithForgotPasswordRequest:forgotPasswordRequest
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIAuthApi->forgotPassword: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forgotPasswordRequest** | [**OAIForgotPasswordRequest***](OAIForgotPasswordRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
```objc
-(NSURLSessionTask*) loginWithLoginRequest: (OAILoginRequest*) loginRequest
        completionHandler: (void (^)(OAIAuthResponse* output, NSError* error)) handler;
```

Authenticate a user with email + password (optional TOTP)

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAILoginRequest* loginRequest = [[OAILoginRequest alloc] init]; // 

OAIAuthApi*apiInstance = [[OAIAuthApi alloc] init];

// Authenticate a user with email + password (optional TOTP)
[apiInstance loginWithLoginRequest:loginRequest
          completionHandler: ^(OAIAuthResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAuthApi->login: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequest** | [**OAILoginRequest***](OAILoginRequest.md)|  | 

### Return type

[**OAIAuthResponse***](OAIAuthResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
```objc
-(NSURLSessionTask*) logoutWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

Log out the current user (kills the assay session)

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIAuthApi*apiInstance = [[OAIAuthApi alloc] init];

// Log out the current user (kills the assay session)
[apiInstance logoutWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIAuthApi->logout: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **magicLinkLogin**
```objc
-(NSURLSessionTask*) magicLinkLoginWithMagicLinkRequest: (OAIMagicLinkRequest*) magicLinkRequest
        completionHandler: (void (^)(NSError* error)) handler;
```

Request a magic link login (sends an email with a one-time link)

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIMagicLinkRequest* magicLinkRequest = [[OAIMagicLinkRequest alloc] init]; // 

OAIAuthApi*apiInstance = [[OAIAuthApi alloc] init];

// Request a magic link login (sends an email with a one-time link)
[apiInstance magicLinkLoginWithMagicLinkRequest:magicLinkRequest
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIAuthApi->magicLinkLogin: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **magicLinkRequest** | [**OAIMagicLinkRequest***](OAIMagicLinkRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **magicLinkVerify**
```objc
-(NSURLSessionTask*) magicLinkVerifyWithMagicLinkVerifyRequest: (OAIMagicLinkVerifyRequest*) magicLinkVerifyRequest
        completionHandler: (void (^)(OAIAuthResponse* output, NSError* error)) handler;
```

Verify a magic link token and log the user in

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIMagicLinkVerifyRequest* magicLinkVerifyRequest = [[OAIMagicLinkVerifyRequest alloc] init]; // 

OAIAuthApi*apiInstance = [[OAIAuthApi alloc] init];

// Verify a magic link token and log the user in
[apiInstance magicLinkVerifyWithMagicLinkVerifyRequest:magicLinkVerifyRequest
          completionHandler: ^(OAIAuthResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAuthApi->magicLinkVerify: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **magicLinkVerifyRequest** | [**OAIMagicLinkVerifyRequest***](OAIMagicLinkVerifyRequest.md)|  | 

### Return type

[**OAIAuthResponse***](OAIAuthResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetPassword**
```objc
-(NSURLSessionTask*) resetPasswordWithResetPasswordRequest: (OAIResetPasswordRequest*) resetPasswordRequest
        completionHandler: (void (^)(NSError* error)) handler;
```

Reset the user's password using a reset token

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIResetPasswordRequest* resetPasswordRequest = [[OAIResetPasswordRequest alloc] init]; // 

OAIAuthApi*apiInstance = [[OAIAuthApi alloc] init];

// Reset the user's password using a reset token
[apiInstance resetPasswordWithResetPasswordRequest:resetPasswordRequest
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIAuthApi->resetPassword: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetPasswordRequest** | [**OAIResetPasswordRequest***](OAIResetPasswordRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **totpEnable**
```objc
-(NSURLSessionTask*) totpEnableWithTotpEnableRequest: (OAITotpEnableRequest*) totpEnableRequest
        completionHandler: (void (^)(NSError* error)) handler;
```

Enable TOTP two-factor authentication by verifying a code

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAITotpEnableRequest* totpEnableRequest = [[OAITotpEnableRequest alloc] init]; // 

OAIAuthApi*apiInstance = [[OAIAuthApi alloc] init];

// Enable TOTP two-factor authentication by verifying a code
[apiInstance totpEnableWithTotpEnableRequest:totpEnableRequest
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIAuthApi->totpEnable: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **totpEnableRequest** | [**OAITotpEnableRequest***](OAITotpEnableRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **totpSetup**
```objc
-(NSURLSessionTask*) totpSetupWithCompletionHandler: 
        (void (^)(OAITotpSetupResponse* output, NSError* error)) handler;
```

Set up TOTP two-factor authentication (generates secret + backup codes)

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];



OAIAuthApi*apiInstance = [[OAIAuthApi alloc] init];

// Set up TOTP two-factor authentication (generates secret + backup codes)
[apiInstance totpSetupWithCompletionHandler: 
          ^(OAITotpSetupResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAuthApi->totpSetup: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAITotpSetupResponse***](OAITotpSetupResponse.md)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyEmail**
```objc
-(NSURLSessionTask*) verifyEmailWithVerifyEmailRequest: (OAIVerifyEmailRequest*) verifyEmailRequest
        completionHandler: (void (^)(NSError* error)) handler;
```

Verify a user's email address using a verification token

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIVerifyEmailRequest* verifyEmailRequest = [[OAIVerifyEmailRequest alloc] init]; // 

OAIAuthApi*apiInstance = [[OAIAuthApi alloc] init];

// Verify a user's email address using a verification token
[apiInstance verifyEmailWithVerifyEmailRequest:verifyEmailRequest
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIAuthApi->verifyEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verifyEmailRequest** | [**OAIVerifyEmailRequest***](OAIVerifyEmailRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

