# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.3 on 2012-07-06 08:36:18.

require 'dfp_api/errors'

module DfpApi; module V201206; module LabelService
  class LabelServiceRegistry
    LABELSERVICE_METHODS = {:create_label=>{:input=>[{:name=>:label, :type=>"Label", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"create_label_response", :fields=>[{:name=>:rval, :type=>"Label", :min_occurs=>0, :max_occurs=>1}]}}, :create_labels=>{:input=>[{:name=>:labels, :type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_labels_response", :fields=>[{:name=>:rval, :type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_label=>{:input=>[{:name=>:label_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_label_response", :fields=>[{:name=>:rval, :type=>"Label", :min_occurs=>0, :max_occurs=>1}]}}, :get_labels_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_labels_by_statement_response", :fields=>[{:name=>:rval, :type=>"LabelPage", :min_occurs=>0, :max_occurs=>1}]}}, :perform_label_action=>{:input=>[{:name=>:label_action, :type=>"LabelAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_label_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :update_label=>{:input=>[{:name=>:label, :type=>"Label", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"update_label_response", :fields=>[{:name=>:rval, :type=>"Label", :min_occurs=>0, :max_occurs=>1}]}}, :update_labels=>{:input=>[{:name=>:labels, :type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_labels_response", :fields=>[{:name=>:rval, :type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    LABELSERVICE_TYPES = {:ActivateLabels=>{:fields=>[], :base=>"LabelAction"}, :Authentication=>{:fields=>[{:name=>:authentication_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ClientLogin=>{:fields=>[{:name=>:token, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DeactivateLabels=>{:fields=>[], :base=>"LabelAction"}, :LabelAction=>{:fields=>[{:name=>:label_action_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Label=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_active, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:types, :type=>"LabelType", :min_occurs=>0, :max_occurs=>:unbounded}]}, :LabelPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded}]}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :OAuth=>{:fields=>[{:name=>:parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:authentication, :type=>"Authentication", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :UpdateResult=>{:fields=>[{:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Value=>{:fields=>[{:name=>:value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :LabelType=>{:fields=>[]}}
    LABELSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return LABELSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return LABELSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return LABELSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end