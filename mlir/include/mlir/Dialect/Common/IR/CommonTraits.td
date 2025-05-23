// Copyright (c) 2023 - 2025 Chair for Design Automation, TUM
// Copyright (c) 2025 Munich Quantum Software Company GmbH
// All rights reserved.
//
// SPDX-License-Identifier: MIT
//
// Licensed under the MIT License

#ifndef MQTCOMMON_TRAITS
#define MQTCOMMON_TRAITS

include "mlir/IR/OpBase.td"
include "mlir/IR/EnumAttr.td"
include "mlir/IR/DialectBase.td"
include "mlir/Interfaces/SideEffectInterfaces.td"

class TargetArity<int N>
    : ParamNativeOpTrait<"TargetArityTrait", !cast<string>(N)> {
    let cppNamespace = "::mqt::ir::common";
}

def NoTarget : TargetArity<0>;
def OneTarget : TargetArity<1>;
def TwoTarget : TargetArity<2>;

class ParameterArity<int N>
    : ParamNativeOpTrait<"ParameterArityTrait", !cast<string>(N)> {
    let cppNamespace = "::mqt::ir::common";
}

def NoParameter : ParameterArity<0>;
def OneParameter : ParameterArity<1>;
def TwoParameters : ParameterArity<2>;
def ThreeParameters : ParameterArity<3>;

def NoControl : NativeOpTrait<"NoControlTrait"> {
    let cppNamespace = "::mqt::ir::common";
}

def MatchingMeasureInOuts : NativeOpTrait<"MatchingMeasureInOutsTrait"> {
    let cppNamespace = "::mqt::ir::common";
}

def UniqueSizeDefinition : NativeOpTrait<"UniqueSizeDefinitionTrait"> {
    let cppNamespace = "::mqt::ir::common";
}

def UniqueIndexDefinition : NativeOpTrait<"UniqueIndexDefinitionTrait"> {
    let cppNamespace = "::mqt::ir::common";
}

#endif // MQTCOMMON_TRAITS
