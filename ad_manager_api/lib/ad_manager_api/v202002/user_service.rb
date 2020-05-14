# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2020, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.2 on 2020-02-04 15:24:30.

require 'ads_common/savon_service'
require 'ad_manager_api/v202002/user_service_registry'

module AdManagerApi; module V202002; module UserService
  class UserService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v202002'
      super(config, endpoint, namespace, :v202002)
    end

    def create_users(*args, &block)
      return execute_action('create_users', args, &block)
    end

    def create_users_to_xml(*args)
      return get_soap_xml('create_users', args)
    end

    def get_all_roles(*args, &block)
      return execute_action('get_all_roles', args, &block)
    end

    def get_all_roles_to_xml(*args)
      return get_soap_xml('get_all_roles', args)
    end

    def get_current_user(*args, &block)
      return execute_action('get_current_user', args, &block)
    end

    def get_current_user_to_xml(*args)
      return get_soap_xml('get_current_user', args)
    end

    def get_users_by_statement(*args, &block)
      return execute_action('get_users_by_statement', args, &block)
    end

    def get_users_by_statement_to_xml(*args)
      return get_soap_xml('get_users_by_statement', args)
    end

    def perform_user_action(*args, &block)
      return execute_action('perform_user_action', args, &block)
    end

    def perform_user_action_to_xml(*args)
      return get_soap_xml('perform_user_action', args)
    end

    def update_users(*args, &block)
      return execute_action('update_users', args, &block)
    end

    def update_users_to_xml(*args)
      return get_soap_xml('update_users', args)
    end

    private

    def get_service_registry()
      return UserServiceRegistry
    end

    def get_module()
      return AdManagerApi::V202002::UserService
    end
  end
end; end; end