# Copyright (C) DocuSign, Inc.  All rights reserved.
# 
# This source code is intended only as a supplement to DocuSign SDK 
# and/or on-line documentation.
# 
# This sample is designed to demonstrate DocuSign features and is not intended 
# for production use. Code and policy for a production application must be 
# developed to meet the specific data and security requirements of the 
# application.
# 
# THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
# KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
# PARTICULAR PURPOSE.

require 'soap/header/simplehandler'

module Docusign
  class AuthHeaderHandler < SOAP::Header::SimpleHandler
    NAMESPACE = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd'
    
    attr_accessor :user_name, :password

    def initialize(user_name, password)
      self.user_name = user_name
      self.password  = password
      
      super(XSD::QName.new(NAMESPACE, 'Security'))
    end

    def on_simple_outbound
      {"UsernameToken" => {"Username" => user_name, "Password" => password}}
    end
  end
end