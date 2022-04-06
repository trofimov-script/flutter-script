#!/bin/bash    
name=test_bar
org=ru.trofimov

flutter create --org $org $name
cd $name/ 

flutter pub add dart_code_metrics

echo "include: package:flutter_lints/flutter.yaml

analyzer:
  exclude:
    # Generated code
    - '**.g.dart'
    - '**.freezed.dart'
    - 'lib/**.graphql.dart'
    - 'lib/**.gen.dart'
    - 'lib/generated_plugin_registrant.dart'
    - 'lib/pigeon.dart'
    # Firebase
    - 'lib/src/common/constant/firebase_options.dart'
    # Localization
    - 'lib/src/common/localization/intl/**'
    - 'lib/src/common/localization/l10n.dart'
    # Tests
    - 'test/**.mocks.dart'
    - '.test_coverage.dart'
    # Web
    - 'web/**'
    # Build
    - 'build/**'
    # Assets
    - 'assets/**'

    
  plugins:
    - dart_code_metrics
  strong-mode:
    implicit-casts: false
linter:
  rules:
    - public_member_api_docs
    - always_use_package_imports
    - avoid_empty_else
    - sort_constructors_first 
    - always_declare_return_types
    - always_require_non_null_named_parameters
    - annotate_overrides
    - avoid_bool_literals_in_conditional_expressions
    - avoid_catching_errors
    - avoid_classes_with_only_static_members
    - avoid_escaping_inner_quotes
    - avoid_field_initializers_in_const_classes
    - avoid_function_literals_in_foreach_calls
    - avoid_implementing_value_types
    - avoid_init_to_null
    - avoid_multiple_declarations_per_line
    - avoid_null_checks_in_equality_operators
    - avoid_positional_boolean_parameters
    - avoid_print
    - avoid_private_typedef_functions
    - avoid_redundant_argument_values
    - avoid_relative_lib_imports
    - avoid_return_types_on_setters
    - avoid_returning_null_for_future
    - avoid_returning_null_for_void
    - avoid_setters_without_getters
    - avoid_shadowing_type_parameters
    - avoid_single_cascade_in_expression_statements
    - avoid_type_to_string
    - avoid_types_as_parameter_names
    - avoid_unnecessary_containers
    - avoid_unused_constructor_parameters
    - avoid_void_async
    - avoid_web_libraries_in_flutter
    - await_only_futures
    - camel_case_extensions
    - camel_case_types
    - cancel_subscriptions
    - cast_nullable_to_non_nullable
    - constant_identifier_names
    - control_flow_in_finally
    - curly_braces_in_flow_control_structures
    - depend_on_referenced_packages
    - deprecated_consistency
    - empty_catches
    - empty_constructor_bodies
    - empty_statements
    - eol_at_end_of_file
    - exhaustive_cases
    - file_names
    - hash_and_equals
    - implementation_imports
    - invariant_booleans
    - iterable_contains_unrelated_type
    - join_return_with_assignment
    - leading_newlines_in_multiline_strings
    - library_names
    - library_prefixes
    - list_remove_unrelated_type
    - missing_whitespace_between_adjacent_strings
    - no_adjacent_strings_in_list
    - no_duplicate_case_values
    - no_logic_in_create_state
    - no_runtimeType_toString
    - non_constant_identifier_names
    - noop_primitive_operations
    - null_check_on_nullable_type_parameter
    - null_closures
    - overridden_fields
    - package_names
    - package_prefixed_library_names
    - parameter_assignments
    - prefer_asserts_in_initializer_lists
    - prefer_collection_literals
    - prefer_conditional_assignment
    - prefer_const_constructors
    - prefer_const_constructors_in_immutables
    - prefer_const_declarations
    - prefer_const_literals_to_create_immutables
    - prefer_constructors_over_static_methods
    - prefer_contains
    - prefer_equal_for_default_values
    - prefer_final_fields
    - prefer_final_in_for_each
    - prefer_final_locals
    - prefer_for_elements_to_map_fromIterable
    - prefer_function_declarations_over_variables
    - prefer_generic_function_type_aliases
    - prefer_if_elements_to_conditional_expressions
    - prefer_if_null_operators
    - prefer_initializing_formals
    - prefer_inlined_adds
    - prefer_interpolation_to_compose_strings
    - prefer_is_empty
    - prefer_is_not_empty
    - prefer_is_not_operator
    - prefer_iterable_whereType
    - prefer_null_aware_method_calls
    - prefer_spread_collections
    - prefer_typing_uninitialized_variables
    - prefer_void_to_null
    - provide_deprecation_message
    - recursive_getters
    - require_trailing_commas
    - sized_box_for_whitespace
    - slash_for_doc_comments
    - sort_child_properties_last
    - sort_unnamed_constructors_first
    - test_types_in_equals
    - throw_in_finally
    - tighten_type_of_initializing_formals
    - type_annotate_public_apis
    - type_init_formals
    - unnecessary_await_in_return
    - unnecessary_brace_in_string_interps
    - unnecessary_const
    - unnecessary_getters_setters
    - unnecessary_new
    - unnecessary_null_aware_assignments
    - unnecessary_null_checks
    - unnecessary_null_in_if_null_operators
    - unnecessary_nullable_for_final_variable_declarations
    - unnecessary_overrides
    - unnecessary_parenthesis
    - unnecessary_raw_strings
    - unnecessary_statements
    - unnecessary_string_escapes
    - unnecessary_string_interpolations
    - unnecessary_this
    - unrelated_type_equality_checks
    - unsafe_html
    - use_build_context_synchronously
    - use_full_hex_values_for_flutter_colors
    - use_function_type_syntax_for_parameters
    - use_named_constants
    - use_late_for_private_fields_and_variables
    - use_rethrow_when_possible
    - use_setters_to_change_properties
    - use_string_buffers
    - use_test_throws_matchers
    - valid_regexps
    - void_checks  
    - use_key_in_widget_constructors

dart_code_metrics:
  anti-patterns:
    - long-method
    - long-parameter-list
  metrics:
    cyclomatic-complexity: 20
    maximum-nesting-level: 5
    number-of-parameters: 4
    source-lines-of-code: 50
  metrics-exclude:
    - test/**
  rules-exclude:
    - lib/firebase_options.dart
  rules:
    - avoid-collection-methods-with-unrelated-types
    - avoid-unused-parameters
    - member-ordering:
        alphabetize: false
        order:
          - constructors
          - public-fields
          - private-fields
    - newline-before-return
    - no-boolean-literal-compare
    - no-empty-block
    - no-equal-then-else
    - no-object-declaration
    - prefer-conditional-expressions
    - prefer-first
    - prefer-last
    - prefer-trailing-comma
    - avoid-nested-conditional-expressions:
        acceptable-level: 3
    - avoid-dynamic
    - avoid-global-state
    - avoid-missing-enum-constant-in-map
    - avoid-unnecessary-type-assertions
    - avoid-unnecessary-type-casts
    - avoid-unrelated-type-assertions
    - avoid-border-all
    - avoid-throw-in-catch-block
    - avoid-ignoring-return-values
    - binary-expression-operand-order
    - double-literal-format
    - prefer-const-border-radius
    - prefer-async-await
    - prefer-immediate-return


    # name class and method
    - prefer-correct-identifier-length:
        min-identifier-length: 2
        max-identifier-length: 30

    - prefer-correct-type-name
      # Flutter specific
    - prefer-single-widget-per-file:
        ignore-private-widgets: true
    - prefer-extracting-callbacks 
    - prefer-const-border-radius 
    - avoid-wrapping-in-padding
    - avoid-unnecessary-setstate
    - avoid-returning-widgets
    - always-remove-listener"> analysis_options.yaml 


flutter clean
flutter pub get
flutter pub upgrade
flutter pub outdated

