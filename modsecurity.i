/*
 * ModSecurity, http://www.modsecurity.org/
 * Copyright (c) 2015 Trustwave Holdings, Inc. (http://www.trustwave.com/)
 *
 * You may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * If any of the files related to licensing are missing or if you have any
 * other questions related to licensing please contact Trustwave Holdings, Inc.
 * directly using the email address security@modsecurity.org.
 *
 * Author: Felipe "Zimmerle" Costa <fcosta at trustwave dot com>
 *
 */

%module modsecurity

%include "std_string.i"
%include "std_vector.i"
%include "attribute.i"
%include "carrays.i"
%include "typemaps.i"

#%ignore RulesProperties::parserError;

%{
#include "modsecurity/actions/action.h"
#include "modsecurity/anchored_set_variable.h"
#include "modsecurity/anchored_set_variable_translation_proxy.h"
#include "modsecurity/anchored_variable.h"
#include "modsecurity/audit_log.h"
#include "modsecurity/collection/collection.h"
#include "modsecurity/collection/collections.h"
#include "modsecurity/debug_log.h"
#include "modsecurity/intervention.h"
#include "modsecurity/modsecurity.h"
#include "modsecurity/reading_logs_via_rule_message.h"
#include "modsecurity/rule.h"
#include "modsecurity/rule_marker.h"
#include "modsecurity/rule_message.h"
#include "modsecurity/rule_unconditional.h"
#include "modsecurity/rule_with_actions.h"
#include "modsecurity/rule_with_operator.h"
#include "modsecurity/rules.h"
#include "modsecurity/rules_exceptions.h"
#include "modsecurity/rules_set.h"
#include "modsecurity/rules_set_phases.h"
#include "modsecurity/rules_set_properties.h"
#include "modsecurity/transaction.h"
#include "modsecurity/variable_origin.h"
#include "modsecurity/variable_value.h"

using std::basic_string;
%}

%ignore modsecurity::RulesProperties::parserError const;

%include "modsecurity/actions/action.h"
%include "modsecurity/anchored_set_variable.h"
%include "modsecurity/anchored_set_variable_translation_proxy.h"
%include "modsecurity/anchored_variable.h"
%include "modsecurity/audit_log.h"
%include "modsecurity/collection/collection.h"
%include "modsecurity/collection/collections.h"
%include "modsecurity/debug_log.h"
%include "modsecurity/intervention.h"
%include "modsecurity/modsecurity.h"
%include "modsecurity/rule.h"
%include "modsecurity/rule_marker.h"
%include "modsecurity/rule_message.h"
%include "modsecurity/rule_unconditional.h"
%include "modsecurity/rule_with_actions.h"
%include "modsecurity/rule_with_operator.h"
%include "modsecurity/rules.h"
%include "modsecurity/rules_exceptions.h"
%include "modsecurity/rules_set.h"
%include "modsecurity/rules_set_phases.h"
%include "modsecurity/rules_set_properties.h"
%include "modsecurity/transaction.h"
%include "modsecurity/variable_origin.h"
%include "modsecurity/variable_value.h"


%template(RuleVector) std::vector<modsecurity::Rule *>;
%template(VectorOfRuleVector) std::vector<std::vector<modsecurity::Rule *> >;
%template(StringVector) std::vector<std::string>;

