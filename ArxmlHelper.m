classdef ArxmlHelper
    properties(Constant = true, Access = private)
        Comment_ArxmlFile = 'This file was create with a tool from NIO-Ep-EAC';
        %%
        ItemString_Autosar = 'AUTOSAR';
        ItemString_Packages = 'AR-PACKAGES';
        ItemString_Package = 'AR-PACKAGE';
        ItemString_ShortName = 'SHORT-NAME';
        ItemString_SubElements = 'SUB-ELEMENTS';
        ItemString_Elements = 'ELEMENTS';
        ItemString_Element = 'ELEMENT';
        ItemString_Unit = 'UNIT';
        ItemString_DispName = 'DISPLAY-NAME';
        ItemString_FactorUnit = 'FACTOR-SI-TO-UNIT';
        ItemString_OffsetUnit = 'OFFSET-SI-TO-UNIT';
        ItemString_ApplPrimDataType = 'APPLICATION-PRIMITIVE-DATA-TYPE';
        ItemString_ApplDataTypeRef = 'APPLICATION-DATA-TYPE-REF'
        ItemString_ImplDataType = 'IMPLEMENTATION-DATA-TYPE';
        ItemString_ImplDataTypeRef = 'IMPLEMENTATION-DATA-TYPE-REF';
        ItemString_ImplDataTypeElement = 'IMPLEMENTATION-DATA-TYPE-ELEMENT';
        ItemString_ApplArrayDataType = 'APPLICATION-ARRAY-DATA-TYPE';
        ItemString_Category = 'CATEGORY';
        ItemString_SwDataProps = 'SW-DATA-DEF-PROPS';
        ItemString_SwDataPropsVar = 'SW-DATA-DEF-PROPS-VARIANTS';
        ItemString_SwDataPropsCond = 'SW-DATA-DEF-PROPS-CONDITIONAL';
        ItemString_SwCaliAccess = 'SW-CALIBRATION-ACCESS';
        ItemString_CompuMethRef = 'COMPU-METHOD-REF';
        ItemString_DataConstrRef = 'DATA-CONSTR-REF';
        ItemString_TypeRef = 'TYPE-TREF';
        ItemString_BaseTypeRef = 'BASE-TYPE-REF';
        ItemString_CompuMeth = 'COMPU-METHOD';
        ItemString_DataConstr = 'DATA-CONSTR';
        ItemString_Desc = 'DESC';
        ItemString_Latex = 'L-2';
        ItemString_UnitRef= 'UNIT-REF';
        ItemString_CompuI2P = 'COMPU-INTERNAL-TO-PHYS';
        ItemString_CompuScales = 'COMPU-SCALES';
        ItemString_CompuScale = 'COMPU-SCALE';
        ItemString_Value = 'V';
        ItemString_ValueFull = 'VALUE';
        ItemString_ValueTxt = 'VT';
        ItemString_ShortLabel = 'SHORT-LABEL';
        ItemString_LowerLim = 'LOWER-LIMIT';
        ItemString_UpperLim = 'UPPER-LIMIT';
        ItemString_CompuRationalCoeff = 'COMPU-RATIONAL-COEFFS';
        ItemString_CompuNumerator = 'COMPU-NUMERATOR';
        ItemString_CompuDenominator = 'COMPU-DENOMINATOR';
        ItemString_CompuConst = 'COMPU-CONST';
        ItemString_AdminData = 'ADMIN-DATA';
        ItemString_Sdgs = 'SDGS';
        ItemString_Sdg = 'SDG';
        ItemString_Sd = 'SD';
        ItemString_ArraySize = 'ARRAY-SIZE';
        ItemString_ArraySizeType = 'ARRAY-SIZE-SEMANTICS';
        ItemString_MaxElementNum = 'MAX-NUMBER-OF-ELEMENTS';
        ItemString_ConstrRules = 'DATA-CONSTR-RULES';
        ItemString_ConstrRule = 'DATA-CONSTR-RULE';
        ItemString_PhysConstrs = 'PHYS-CONSTRS';
        ItemString_SRInterface = 'SENDER-RECEIVER-INTERFACE';
        ItemString_CSInterface = 'CLIENT-SERVER-INTERFACE';
        ItemString_IsService = 'IS-SERVICE';
        ItemString_DataElements = 'DATA-ELEMENTS';
        ItemString_VarDataPrototype = 'VARIABLE-DATA-PROTOTYPE';
        ItemString_ImplPolicy = 'SW-IMPL-POLICY';
        ItemString_SwBaseType = 'SW-BASE-TYPE';
        ItemString_DataTypeMappingSet = 'DATA-TYPE-MAPPING-SET';
        ItemString_DataTypeMaps = 'DATA-TYPE-MAPS';
        ItemString_DataTypeMap = 'DATA-TYPE-MAP';
        ItemString_DataTypeMapRefs = 'DATA-TYPE-MAPPING-REFS';
        ItemString_DataTypeMapRef = 'DATA-TYPE-MAPPING-REF';
        ItemString_ApplSwCompType = 'APPLICATION-SW-COMPONENT-TYPE';
        ItemString_Ports = 'PORTS';
        ItemString_PPortPrototype = 'P-PORT-PROTOTYPE';
        ItemString_RPortPrototype = 'R-PORT-PROTOTYPE';
        ItemString_ProvidIFTRef = 'PROVIDED-INTERFACE-TREF';
        ItemString_RequidIFTRef = 'REQUIRED-INTERFACE-TREF';
        ItemString_InternalBehav = 'INTERNAL-BEHAVIORS';
        ItemString_SwcInternalBehav = 'SWC-INTERNAL-BEHAVIOR';
        ItemString_Events = 'EVENTS';
        ItemString_TimingEvents = 'TIMING-EVENT';
        ItemString_Period = 'PERIOD';
        ItemString_InitEvent = 'INIT-EVENT';
        ItemString_StartOnEventRef = 'START-ON-EVENT-REF';
        ItemString_SupportMultiInstant = 'SUPPORTS-MULTIPLE-INSTANTIATION';
        ItemString_RunnableEntity = 'RUNNABLE-ENTITY';
        ItemString_Runnables = 'RUNNABLES';
        ItemString_Symbol = 'SYMBOL';
        ItemString_DataRPointByArg = 'DATA-RECEIVE-POINT-BY-ARGUMENTS';
        ItemString_DataSPoint = 'DATA-SEND-POINTS';
        ItemString_VarAccess = 'VARIABLE-ACCESS';
        ItemString_AccessVar = 'ACCESSED-VARIABLE';
        ItemString_ArVarIRef = 'AUTOSAR-VARIABLE-IREF';
        ItemString_PortPrototypeRef = 'PORT-PROTOTYPE-REF';
        ItemString_TargetDataPrototypeRef = 'TARGET-DATA-PROTOTYPE-REF';
        ItemString_ProvidedComSpecs = 'PROVIDED-COM-SPECS';
        ItemString_RequiredComSpecs = 'REQUIRED-COM-SPECS';
        ItemString_NonQuRecComSpec = 'NONQUEUED-RECEIVER-COM-SPEC';
        ItemString_NonQuSendComSpec = 'NONQUEUED-SENDER-COM-SPEC';
        ItemString_DataElementRef = 'DATA-ELEMENT-REF';
        ItemString_InitValue = 'INIT-VALUE';
        ItemString_NumValueSpec = 'NUMERICAL-VALUE-SPECIFICATION';
        ItemString_ArrayValueSpec = 'ARRAY-VALUE-SPECIFICATION';
        ItemString_Operation = 'OPERATIONS';
        ItemString_CsOperation = 'CLIENT-SERVER-OPERATION';
        ItemString_Arguments = 'ARGUMENTS';
        ItemString_ArgumentDataType = 'ARGUMENT-DATA-PROTOTYPE';
        ItemString_Direction = 'DIRECTION';
        ItemString_Shared_Paras = 'SHARED-PARAMETERS';
        ItemString_ServerArgImplPolicy = 'SERVER-ARGUMENT-IMPL-POLICY';
        ItemString_PossibleErr = 'POSSIBLE-ERRORS';
        ItemString_PossibleErrRefs = 'POSSIBLE-ERROR-REFS';
        ItemString_PossibleErrRef = 'POSSIBLE-ERROR-REF';
        ItemString_ApplErr = 'APPLICATION-ERROR';
        ItemString_ErrCode = 'ERROR-CODE';
        ItemString_CompsSwCompnType = 'COMPOSITION-SW-COMPONENT-TYPE';
        ItemString_Compns = 'COMPONENTS';
        ItemString_SwCompnPrototype = 'SW-COMPONENT-PROTOTYPE';
        
        %%
        
        PropName_Latex = 'L'
        PropName_Dest = 'DEST';
        PropName_IntervalType = 'INTERVAL-TYPE';
        PropName_Gid = 'GID';
        PropName_Xmlns = 'xmlns';
        PropName_Xmlns_Xsi = 'xmlns:xsi';
        PropName_Xsi_SchemaLoc = 'xsi:schemaLocation';
        
        PropAttri_ForAll = 'FOR-ALL';
        PropAttri_Closed = 'CLOSED';
        PropAttri_Inf = 'INFINITE';
        PropAttri_DynArray = 'DV:DynArray';
        PropAttri_Profile = 'DV:Profile';
        PropAttri_Xmlns = 'http://autosar.org/schema/r4.0';
        PropAttri_Xmlns_Xsi = 'http://www.w3.org/2001/XMLSchema-instance';
        PropAttri_Xsi_SchemaLoc = 'http://autosar.org/schema/r4.0 autosar_4-2-1.xsd';
        PropAttri_False = 'false';
        PropAttri_ApplErr = 'E_NOT_OK';
        
        PackageName_DataTypeMapping = 'ApplDataTypeMapping';
        PackageName_InternalBehavior = 'InternalBehavior';
        PackageName_Unit = 'Custom_Platform_Units';
        PackageName_CompuMethod = 'Custom_Platform_CompuMethods';
        PackageName_ApplDataType = 'Custom_Platform_ApplDataTypes';
        PackageName_DataConstr = 'Custom_Platform_DataConstrs';
        PackageName_SRInterface = 'Custom_Platform_ApplPortInterfaces';
        PackageName_CSInterface = 'Custom_Platform_ClientServiceInterfaces';
        PackageName_ImplDataType = 'Custom_Platform_ImplDataTypes';
        PackageName_DataTypeMappingSets = 'Custom_Platform_DataTypeMappingSets';
        PackageName_ApplComponentType = 'Custom_Platform_ApplComponentTypes';
        PackageName_ApplCompositionType = 'Custom_Platform_ApplCompositionTypes';
        %% ETAS Config
        PackageName_ARPlatformBaseType = 'AUTOSAR_Platform/BaseTypes';
        PackageName_ARPlatformImplDataType = 'AUTOSAR_Platform/ImplementationDataTypes';
    end
    
    methods(Static)
        function CreateUnitDefine(varargin)
            internal_create_unit_define(varargin{:});
        end
        function CreateCompuMethodDefine(varargin)
            internal_create_compu_method_define(varargin{:});
        end
        function CreateApplDateTypeDefine(varargin)
            internal_create_appl_datetype_define(varargin{:});
        end
        function CreateImplDateTypeDefine(varargin)
            internal_create_impl_datetype_define(varargin{:});
        end
        function CreateDateConstrDefine(varargin)
            internal_create_date_constr_define(varargin{:});
        end
        function CreateApplPortInterfaceDefine(varargin)
            internal_create_appl_port_interface_define(varargin{:});
        end
        function CreateClientServiceInterfaceDefine(varargin)
            internal_create_client_service_interface_define(varargin{:});
        end
        function CreateDataTypeMappingSets(varargin)
            internal_create_data_type_mapping_sets(varargin{:});
        end
        function CreateAllArxmlDefines(varargin)
            internal_create_all_arxml_defines(varargin{:});
        end
        function CreateApplComponentType(varargin)
            internal_create_appl_component_type(varargin{:});
        end
        function CreateApplCompositionType(varargin)
            internal_create_appl_composition_type(varargin{:});
        end
        function result = ReadInforsFromExcel(varargin)
            result = internal_read_infors_from_excel(varargin{:});
        end
    end
end

function result = internal_read_infors_from_excel(excel_file_name, mode)
    if strcmpi(mode, 'Unit')
        sheet_name = '0201_UnitDefine_List';
        head_title = {'UnitName', 'Description', 'DisplayName', 'FACTOR_SI_TO_UNIT', 'OFFSET_SI_TO_UNIT'};
    elseif strcmpi(mode, 'DateConstr')
        sheet_name = '0202_DataConstr_List';
        head_title = {'Name', 'LowerLimit', 'UpperLimit', 'Description'};
    elseif strcmpi(mode, 'CompuMethod')
        sheet_name = '0203_CompuMethods_List';
        head_title = {'Name', 'Category', 'Unit', 'MinValue', 'MaxValue', 'Factor', 'Offset', 'TextTable', 'Description'};
    elseif strcmpi(mode, 'ApplDateType')
        sheet_name = '0301_ApplDateType_List';
        head_title = {'Name', 'Category', 'Unit', 'CompuMethod', 'DataConstraint', 'DataType', 'Size', 'Description'};
    elseif strcmpi(mode, 'ImplDateType')
        sheet_name = '0302_ImplDateType_List';
        head_title = {'Name', 'Category', 'CompuMethod', 'DataConstraint', 'BaseDataType', 'Size', 'Description'};
    elseif strcmpi(mode, 'DataTypeMapping')
        sheet_name = '0303_DataTypeMapping_List';
        head_title = {'ApplDataType', 'ImplDateType'};
    elseif strcmpi(mode, 'ApplPortInterface')
        sheet_name = '0401_ApplPortInterface_List';
        head_title = {'InterfaceName', 'ElementName', 'DataType', 'DataConstraint', 'Description'};
    elseif strcmpi(mode, 'ClientServiceInterface')
        sheet_name = '0402_CSInterface_List';
        head_title = {'InterfaceName', 'IsAppErr', 'OperationName', ...
            'Argument1_Name', 'Argument1_DataType', 'Argument1_Direction', ...
            'Argument2_Name', 'Argument2_DataType', 'Argument2_Direction', ...
            'Argument3_Name', 'Argument3_DataType', 'Argument3_Direction', ...
            'Argument4_Name', 'Argument4_DataType', 'Argument4_Direction'};
    elseif strcmpi(mode, 'ApplComposition')
        sheet_name = '06_Compositions';
        head_title = {'CompositionName', 'ComponentType', 'ComponentName'};
    elseif contains(mode, '_SWC_')
        sheet_name = mode;
        head_title = {'ApplComponentTypes', 'RunnableEntity', 'InterfacePort', 'PortElement', 'PortElementInit', 'PortType'};
    else
        error(['There is no such mode: ', mode]);
    end
    [~, ~, sheet_infos] = xlsread(excel_file_name, sheet_name);
    index = find(ismember(sheet_infos(1,:), head_title));
    sheet_infos(cellfun(@(x) isempty(x) || ~ischar(x), sheet_infos(:, index(1))), :) = []; %#ok<NASGU>
    exp_tmp = arrayfun(@(x) ['head_title{',num2str(x),'}, sheet_infos(2:end, index(', num2str(x), '))'], 1:length(index), 'UniformOutput', false);
    result = eval(['struct(', strjoin(exp_tmp, ', '), ');']);
end

function internal_create_all_arxml_defines(xls_file_name)
    internal_create_unit_define(xls_file_name);
    disp('#### Unit Define is created.');
    internal_create_compu_method_define(xls_file_name);
    disp('#### Compu Method Define is created.');
    internal_create_appl_datetype_define(xls_file_name);
    disp('#### Appl Datatype Define is created.');
    internal_create_impl_datetype_define(xls_file_name);
    disp('#### Impl Datatype Define is created.');
    internal_create_date_constr_define(xls_file_name);
    disp('#### Data Constr Define is created.');
    internal_create_appl_port_interface_define(xls_file_name);
    disp('#### Appl Port Interface Define is created.');
    internal_create_client_service_interface_define(xls_file_name);
    disp('#### Client Serive Interface Define is created.');
    internal_create_data_type_mapping_sets(xls_file_name);
    disp('#### Data Type Mapping Define is created.');
    internal_create_appl_component_type(xls_file_name);
    disp('#### Appl Compnent Type Define is created.');
    internal_create_appl_composition_type(xls_file_name);
    disp('#### Appl Composition Type Define is created.');
end

function internal_create_appl_composition_type(xls_file_name, package_name)
    if nargin < 2
        package_name = ArxmlHelper.PackageName_ApplCompositionType;
    end
    composition_infos = internal_read_infors_from_excel(xls_file_name, 'ApplComposition');
    arxml_file_name = [package_name, '.arxml'];
    [docNode, doc_element] = internal_create_arxml_init(package_name);
    e_Elements = internal_create_appl_composition_node(composition_infos, docNode);
    doc_element.getLastChild.getLastChild.appendChild(e_Elements);
    
    xmlwrite(arxml_file_name, docNode);
end

function internal_create_appl_component_type(xls_file_name, package_name)
    if nargin < 2
        package_name = ArxmlHelper.PackageName_ApplComponentType;
    end
    [~, sheets] = xlsfinfo(xls_file_name);
    swc_sheets = sheets(cellfun(@(x) contains(x, '_SWC_'), sheets));
    appl_component_type_infos = cellfun(@(x) internal_read_infors_from_excel(xls_file_name, x), swc_sheets, 'UniformOutput', false);

    arxml_file_name = [package_name, '.arxml'];
    [docNode, doc_element] = internal_create_arxml_init(package_name);
    e_Elements = internal_create_appl_component_node(appl_component_type_infos, docNode);
    doc_element.getLastChild.getLastChild.appendChild(e_Elements);
    
    xmlwrite(arxml_file_name, docNode);
end

function internal_create_data_type_mapping_sets(xls_file_name, package_name)
    if nargin < 2
        package_name = ArxmlHelper.PackageName_DataTypeMappingSets;
    end
    data_type_mapping_infos = internal_read_infors_from_excel(xls_file_name, 'DataTypeMapping');
    arxml_file_name = [package_name, '.arxml'];
    [docNode, doc_element] = internal_create_arxml_init(package_name);
    e_Elements = internal_create_data_type_mapping_node(data_type_mapping_infos, docNode);
    doc_element.getLastChild.getLastChild.appendChild(e_Elements);
    
    xmlwrite(arxml_file_name, docNode);
end

function internal_create_appl_port_interface_define(xls_file_name, package_name)
    if nargin < 2
        package_name = ArxmlHelper.PackageName_SRInterface;
    end
    appl_port_infos = internal_read_infors_from_excel(xls_file_name, 'ApplPortInterface');
    arxml_file_name = [package_name, '.arxml'];
    
    [docNode, doc_element] = internal_create_arxml_init(package_name);
    e_Elements = internal_create_sr_interface_node(appl_port_infos, docNode);
    doc_element.getLastChild.getLastChild.appendChild(e_Elements);
    
    xmlwrite(arxml_file_name, docNode);
end

function internal_create_client_service_interface_define(xls_file_name, package_name)
    if nargin < 2
        package_name = ArxmlHelper.PackageName_CSInterface;
    end
    cs_infos = internal_read_infors_from_excel(xls_file_name, 'ClientServiceInterface');
    arxml_file_name = [package_name, '.arxml'];
    [docNode, doc_element] = internal_create_arxml_init(package_name);
    e_Elements = internal_create_cs_interface_node(cs_infos, docNode);
    doc_element.getLastChild.getLastChild.appendChild(e_Elements);
    
    xmlwrite(arxml_file_name, docNode);
end

function internal_create_date_constr_define(xls_file_name, package_name)
    if nargin < 2
        package_name = ArxmlHelper.PackageName_DataConstr;
    end
    date_constr_infos = internal_read_infors_from_excel(xls_file_name, 'DateConstr');
    arxml_file_name = [package_name, '.arxml'];
    
    [docNode, doc_element] = internal_create_arxml_init(package_name);
    e_Elements = internal_create_data_constr_node(date_constr_infos, docNode);
    doc_element.getLastChild.getLastChild.appendChild(e_Elements);
    
    xmlwrite(arxml_file_name, docNode);
end

function internal_create_impl_datetype_define(xls_file_name, package_name)
    if nargin < 2
        package_name = ArxmlHelper.PackageName_ImplDataType;
    end
    impl_datatype_infos = internal_read_infors_from_excel(xls_file_name, 'ImplDateType');
    arxml_file_name = [package_name, '.arxml'];
    
    [docNode, doc_element] = internal_create_arxml_init(package_name);
    e_Elements = internal_create_impl_datatype_node(impl_datatype_infos, docNode);
    doc_element.getLastChild.getLastChild.appendChild(e_Elements);

    xmlwrite(arxml_file_name, docNode);
end

function internal_create_unit_define(xls_file_name, package_name)
    if nargin < 2
        package_name = ArxmlHelper.PackageName_Unit;
    end
    unit_infos = internal_read_infors_from_excel(xls_file_name, 'Unit');
    arxml_file_name = [package_name, '.arxml'];
    
    
    [docNode, doc_element] = internal_create_arxml_init(package_name);
    e_Elements = internal_create_unit_node(unit_infos, docNode);
    doc_element.getLastChild.getLastChild.appendChild(e_Elements);
    
    xmlwrite(arxml_file_name, docNode);
end

function internal_create_appl_datetype_define(xls_file_name, package_name)
    if nargin < 2
        package_name = ArxmlHelper.PackageName_ApplDataType;
    end
    appl_infos = internal_read_infors_from_excel(xls_file_name, 'ApplDateType');
    arxml_file_name = [package_name, '.arxml'];
    
    [docNode, doc_element] = internal_create_arxml_init(package_name);
    e_Elements = internal_create_appl_datatype_node(appl_infos, docNode);
    doc_element.getLastChild.getLastChild.appendChild(e_Elements);
    
    xmlwrite(arxml_file_name, docNode);
end

function internal_create_compu_method_define(xls_file_name, package_name)
    if nargin < 2
        package_name = ArxmlHelper.PackageName_CompuMethod;
    end
    compu_method_infos = internal_read_infors_from_excel(xls_file_name, 'CompuMethod');
    arxml_file_name = [package_name, '.arxml'];
    
    [docNode, doc_element] = internal_create_arxml_init(package_name);
    e_Elements = internal_create_compu_method_node(compu_method_infos, docNode);
    doc_element.getLastChild.getLastChild.appendChild(e_Elements);
    
    xmlwrite(arxml_file_name, docNode);
end

function elements_node = internal_create_unit_node(unit_infos, docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_Elements);
    for i=1:length(unit_infos)
        unit_name = unit_infos(i).UnitName;
        if ischar(unit_infos(i).DisplayName)
            display_name = unit_infos(i).DisplayName;
        else
            display_name = '';
        end
        factor = internal_get_num_str(unit_infos(i).FACTOR_SI_TO_UNIT, '1');
        bias = internal_get_num_str(unit_infos(i).OFFSET_SI_TO_UNIT, '0');
        e_Unit = docNode.createElement(ArxmlHelper.ItemString_Unit);
        e_ShorName = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, unit_name);
        e_Unit.appendChild(e_ShorName);
        if ischar(unit_infos(i).Description)
            e_Desc = internal_create_desc_node(docNode, unit_infos(i).Description, {ArxmlHelper.PropName_Latex, ArxmlHelper.PropAttri_ForAll});
            e_Unit.appendChild(e_Desc);
        end
        e_DisplayName = internal_create_text_node(docNode, ArxmlHelper.ItemString_DispName, display_name);
        e_FactorUnit = internal_create_text_node(docNode, ArxmlHelper.ItemString_FactorUnit, factor);
        e_OffsetUnit = internal_create_text_node(docNode, ArxmlHelper.ItemString_OffsetUnit, bias);
        e_Unit.appendChild(e_DisplayName);
        e_Unit.appendChild(e_FactorUnit);
        e_Unit.appendChild(e_OffsetUnit);
        elements_node.appendChild(e_Unit);
    end
end

function elements_node = internal_create_compu_method_node(compu_method_infos, docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_Elements);
    for i=1:length(compu_method_infos)
        if ischar(compu_method_infos(i).Name) && ischar(compu_method_infos(i).Category)
            category = compu_method_infos(i).Category;
            compu_method_name = compu_method_infos(i).Name;
            e_CompuMeth = docNode.createElement(ArxmlHelper.ItemString_CompuMeth);
            e_ShorName = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, compu_method_name);
            e_CompuMeth.appendChild(e_ShorName);
            if ischar(compu_method_infos(i).Description)
                e_Desc = internal_create_desc_node(docNode, compu_method_infos(i).Description, {ArxmlHelper.PropName_Latex,ArxmlHelper.PropAttri_ForAll});
                e_CompuMeth.appendChild(e_Desc);
            end
            e_Category = internal_create_text_node(docNode, ArxmlHelper.ItemString_Category, category);
            e_CompuMeth.appendChild(e_Category);
            e_CompuI2P = docNode.createElement(ArxmlHelper.ItemString_CompuI2P);
            if strcmpi(category, 'SCALE_LINEAR') || strcmpi(category, 'LINEAR')
                if ischar(compu_method_infos(i).Unit)
                    compu_infor.min = compu_method_infos(i).MinValue;
                    compu_infor.max = compu_method_infos(i).MaxValue;
                    compu_infor.factor = compu_method_infos(i).Factor;
                    compu_infor.offset = compu_method_infos(i).Offset;
                    unit_str = ['/', ArxmlHelper.PackageName_Unit, '/', compu_method_infos(i).Unit];
                    e_UnitRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_UnitRef, unit_str, {ArxmlHelper.PropName_Dest,ArxmlHelper.ItemString_Unit});
                    e_CompuMeth.appendChild(e_UnitRef);
                    e_CompuScales = internal_create_linear_compu_node(compu_infor, docNode);
                else
                    error('If Category of Compu Method is "Linear" or "Scale-Linear", the Compu Method must have "Unit"!');
                end
            elseif strcmpi(category, 'TEXTTABLE')
                if ischar(compu_method_infos(i).TextTable)
                    text_table = compu_method_infos(i).TextTable;
                    e_CompuScales = internal_create_text_compu_node(text_table, docNode);
                else
                    error('If "category" is "TEXTTABLE", "TextTable" must have string!');
                end
            else
                error('Category of Compu Method must be "LINEAR", "SCALE_LINEAR" or "TEXTTABLE"');
            end
            e_CompuI2P.appendChild(e_CompuScales);
            e_CompuMeth.appendChild(e_CompuI2P);
            elements_node.appendChild(e_CompuMeth);
        end
    end
end

function elements_node = internal_create_var_data_node(appl_port_infos, index, docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_VarDataPrototype);
    e_ShortName_tmp = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, appl_port_infos(index).ElementName);
    elements_node.appendChild(e_ShortName_tmp);
    if ischar(appl_port_infos(index).Description)
        e_Desc = internal_create_desc_node(docNode, appl_port_infos(index).Description, {ArxmlHelper.PropName_Latex,ArxmlHelper.PropAttri_ForAll});
        elements_node.appendChild(e_Desc);
    end
    e_DataDefProps = docNode.createElement(ArxmlHelper.ItemString_SwDataProps);
    e_DataDefPropsVars = docNode.createElement(ArxmlHelper.ItemString_SwDataPropsVar);
    e_DataDefPropsCond = docNode.createElement(ArxmlHelper.ItemString_SwDataPropsCond);
    e_CaliAccess = internal_create_text_node(docNode, ArxmlHelper.ItemString_SwCaliAccess, 'READ-ONLY');
    e_ImplPolicy = internal_create_text_node(docNode, ArxmlHelper.ItemString_ImplPolicy, 'STANDARD');
    e_DataDefPropsCond.appendChild(e_CaliAccess);
    if ischar(appl_port_infos(index).DataConstraint)
        ref_constr_string = ['/', ArxmlHelper.PackageName_DataConstr, '/', appl_port_infos(index).DataConstraint];
        e_DataConstrRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_DataConstrRef, ref_constr_string, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_DataConstr});
        e_DataDefPropsCond.appendChild(e_DataConstrRef);
    end
    e_DataDefPropsCond.appendChild(e_ImplPolicy);
    e_DataDefPropsVars.appendChild(e_DataDefPropsCond);
    e_DataDefProps.appendChild(e_DataDefPropsVars);
    if ischar(appl_port_infos(index).DataType)
        ref_type = ['/', ArxmlHelper.PackageName_ApplDataType, '/', appl_port_infos(index).DataType];
        %% ETAS Config
        if isempty(regexpi(appl_port_infos(index).DataType, '_Array\d+$'))
            e_TypeRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_TypeRef, ref_type, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_ApplPrimDataType});
        else
            e_TypeRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_TypeRef, ref_type, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_ApplArrayDataType});
        end
    else
        error(['Data Type of "', appl_port_infos(index).DataType, '" must be string!'])
    end
    elements_node.appendChild(e_DataDefProps);
    elements_node.appendChild(e_TypeRef);
end

function elements_node = internal_create_data_type_mapping_node(data_type_mapping_infos, docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_Elements);
    e_DataTypeMappingSet = docNode.createElement(ArxmlHelper.ItemString_DataTypeMappingSet);
    e_ShorName = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, ArxmlHelper.PackageName_DataTypeMapping);
    e_DataTypeMaps = docNode.createElement(ArxmlHelper.ItemString_DataTypeMaps);
    for i=1:length(data_type_mapping_infos)
        if ischar(data_type_mapping_infos(i).ApplDataType) && ischar(data_type_mapping_infos(i).ImplDateType)
            app_data_type_name = data_type_mapping_infos(i).ApplDataType;
            impl_data_type_name = data_type_mapping_infos(i).ImplDateType;
            appl_datatype_name_str = ['/', ArxmlHelper.PackageName_ApplDataType, '/', app_data_type_name];
            if isempty(regexpi(impl_data_type_name, '^Imdt_'))
                impl_datatype_name_str = ['/', ArxmlHelper.PackageName_ARPlatformImplDataType, '/', impl_data_type_name];
            else
                impl_datatype_name_str = ['/', ArxmlHelper.PackageName_ImplDataType, '/', impl_data_type_name];
            end
            e_DataTypeMap = docNode.createElement(ArxmlHelper.ItemString_DataTypeMap);
            %% ETAS Config
            if ~isempty(regexpi(app_data_type_name, '_Array\d+$'))
                e_ApplDataTypeRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_ApplDataTypeRef, appl_datatype_name_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_ApplArrayDataType});
            else
                e_ApplDataTypeRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_ApplDataTypeRef, appl_datatype_name_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_ApplPrimDataType});
            end
            %%
            e_ImplDataTypeRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_ImplDataTypeRef, impl_datatype_name_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_ImplDataType});
            e_DataTypeMap.appendChild(e_ApplDataTypeRef);
            e_DataTypeMap.appendChild(e_ImplDataTypeRef);
            e_DataTypeMaps.appendChild(e_DataTypeMap);
        end
    end
    e_DataTypeMappingSet.appendChild(e_ShorName);
    e_DataTypeMappingSet.appendChild(e_DataTypeMaps);
    elements_node.appendChild(e_DataTypeMappingSet);
end

function elements_node = internal_create_appl_component_node(appl_component_type_infos, docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_Elements);
    appl_component_infos = cellfun(@internal_parse_appl_component_type_infos, appl_component_type_infos, 'UniformOutput', false);
    for index_of_comp=1:length(appl_component_infos)
        comp_infos.name = appl_component_infos{index_of_comp}.appl_component_name;
        e_ApplSwCompType = docNode.createElement(ArxmlHelper.ItemString_ApplSwCompType);
        e_ShorNameApplComp = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, comp_infos.name);
        for index_of_runnable = 1:length(appl_component_infos{index_of_comp}.component_runnable)
            comp_infos.runnable = appl_component_infos{index_of_comp}.component_runnable(index_of_runnable);
            comp_infos.r_port = appl_component_infos{index_of_comp}.component_runnable(index_of_runnable).component_r_port;
            comp_infos.p_port = appl_component_infos{index_of_comp}.component_runnable(index_of_runnable).component_p_port;
            
            e_Ports = internal_create_port_node(comp_infos.name, comp_infos.r_port, comp_infos.p_port, docNode);
            e_IB = internal_create_internal_behaviors_node(comp_infos, docNode);
            e_ApplSwCompType.appendChild(e_ShorNameApplComp);
            e_ApplSwCompType.appendChild(e_Ports);
            e_ApplSwCompType.appendChild(e_IB);
            elements_node.appendChild(e_ApplSwCompType);
        end
%         disp(['  #### Appl Compnent Type: ', comp_infos.name, ' is created.']);
    end
end

function elements_node = internal_create_impl_datatype_node(impl_datatype_infos, docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_Elements);
    for i=1:length(impl_datatype_infos)
        if ischar(impl_datatype_infos(i).Name) && ischar(impl_datatype_infos(i).Category) && ischar(impl_datatype_infos(i).BaseDataType)
            impl_datatype_name = impl_datatype_infos(i).Name;
            impl_category = impl_datatype_infos(i).Category;
            e_ImplDataType = docNode.createElement(ArxmlHelper.ItemString_ImplDataType);
            e_ShorName = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, impl_datatype_name);
            e_Category = internal_create_text_node(docNode, ArxmlHelper.ItemString_Category, impl_category);
            e_ImplDataType.appendChild(e_ShorName);
            if ischar(impl_datatype_infos(i).Description)
                e_Desc = internal_create_desc_node(docNode, impl_datatype_infos(i).Description, {ArxmlHelper.PropName_Latex,ArxmlHelper.PropAttri_ForAll});
                e_ImplDataType.appendChild(e_Desc);
            end
            e_ImplDataType.appendChild(e_Category);
            
            props_info = '';
            props_info.SwCaliAccess = 'READ-ONLY';
            if strcmp(impl_category, 'VALUE')
                props_info.BaseTypeRef = impl_datatype_infos(i).BaseDataType;
                if ischar(impl_datatype_infos(i).CompuMethod)
                    props_info.CompuMethodRef = impl_datatype_infos(i).CompuMethod;
                end
                if ischar(impl_datatype_infos(i).DataConstraint)
                    props_info.DataConstr = impl_datatype_infos(i).DataConstraint;
                end
                e_SubElements = '';
            elseif strcmp(impl_category, 'ARRAY')
                arrray_size_str = internal_get_num_str(impl_datatype_infos(i).Size);
                if isempty(arrray_size_str)
                    error(['Size of ', impl_datatype_name, ' must be num!']);
                end
                e_SubElements = docNode.createElement(ArxmlHelper.ItemString_SubElements);
                e_ImplDataTypeElement = docNode.createElement(ArxmlHelper.ItemString_ImplDataTypeElement);
                e_ShorNameElement = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, [impl_datatype_name, 'Element']);
                e_CategoryElement = internal_create_text_node(docNode, ArxmlHelper.ItemString_Category, 'TYPE_REFERENCE');
                e_ArraySize = internal_create_text_node(docNode, ArxmlHelper.ItemString_ArraySize, arrray_size_str);
                e_ArraySizeType = internal_create_text_node(docNode, ArxmlHelper.ItemString_ArraySizeType, 'FIXED-SIZE');
                props_info_element.ImplDataTypeRef = impl_datatype_infos(i).BaseDataType;
                e_SwDataDefPropsElement = internal_create_sw_data_def_props_node(docNode, props_info_element);
                
                e_ImplDataTypeElement.appendChild(e_ShorNameElement);
                e_ImplDataTypeElement.appendChild(e_CategoryElement);
                e_ImplDataTypeElement.appendChild(e_ArraySize);
                e_ImplDataTypeElement.appendChild(e_ArraySizeType);
                e_ImplDataTypeElement.appendChild(e_SwDataDefPropsElement);
                e_SubElements.appendChild(e_ImplDataTypeElement);
            else
                error(['Category of ', impl_datatype_name, ' must be ARRAY or VALUE!']);
            end
            e_SwDataDefProps = internal_create_sw_data_def_props_node(docNode, props_info);
            e_ImplDataType.appendChild(e_SwDataDefProps);
            if ~isempty(e_SubElements)
                e_ImplDataType.appendChild(e_SubElements);
            end
            elements_node.appendChild(e_ImplDataType);
        end
    end
end

function elements_node = internal_create_sw_data_def_props_node(docNode, props_info)
    if nargin < 2
        props_info = '';
    end
    elements_node = docNode.createElement(ArxmlHelper.ItemString_SwDataProps);
    e_SwDataDefPropsVariants = docNode.createElement(ArxmlHelper.ItemString_SwDataPropsVar);
    e_SwDataDefPropsCond = docNode.createElement(ArxmlHelper.ItemString_SwDataPropsCond);
    e_SwDataDefPropsVariants.appendChild(e_SwDataDefPropsCond);
    elements_node.appendChild(e_SwDataDefPropsVariants);
    if isfield(props_info, 'BaseTypeRef')
        base_type_str = ['/', ArxmlHelper.PackageName_ARPlatformBaseType, '/', props_info.BaseTypeRef];
        e_BaseTypeRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_BaseTypeRef, base_type_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_SwBaseType});
        e_SwDataDefPropsCond.appendChild(e_BaseTypeRef);
    end
    if isfield(props_info, 'ImplDataTypeRef')
        impl_type_str = ['/', ArxmlHelper.PackageName_ARPlatformImplDataType, '/', props_info.ImplDataTypeRef];
        e_ImplDataTypeRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_ImplDataTypeRef, impl_type_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_ImplDataType});
        e_SwDataDefPropsCond.appendChild(e_ImplDataTypeRef);
    end
    if isfield(props_info, 'SwCaliAccess')
        e_SwCaliAccess = internal_create_text_node(docNode, ArxmlHelper.ItemString_SwCaliAccess, props_info.SwCaliAccess);
        e_SwDataDefPropsCond.appendChild(e_SwCaliAccess);
    end
    if isfield(props_info, 'CompuMethodRef')
        compu_method_str = ['/', ArxmlHelper.PackageName_CompuMethod, '/', props_info.CompuMethodRef];
        e_CompuMethodRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_CompuMethRef, compu_method_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_CompuMeth});
        e_SwDataDefPropsCond.appendChild(e_CompuMethodRef);
    end
    if isfield(props_info, 'DataConstr')
        data_constr_str = ['/', ArxmlHelper.PackageName_DataConstr, '/', props_info.DataConstr];
        e_DataConstr = internal_create_text_node(docNode, ArxmlHelper.ItemString_DataConstrRef, data_constr_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_DataConstr});
        e_SwDataDefPropsCond.appendChild(e_DataConstr);
    end
    if isfield(props_info, 'UnitRef')
        unit_ref_str = ['/', ArxmlHelper.PackageName_Unit, '/', props_info.UnitRef];
        e_UnitRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_UnitRef, unit_ref_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_Unit});
        e_SwDataDefPropsCond.appendChild(e_UnitRef);
    end
end

function elements_node = internal_create_appl_composition_node(composition_infos, docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_Elements);
    composition_name_list = arrayfun(@(x) x.CompositionName, composition_infos, 'UniformOutput', false);
    [composition_name_unique, ~, ic] = unique(composition_name_list);
    for i=1:length(composition_name_unique)
        comps_name = composition_name_unique{i};
        e_CompsSwCompnType = docNode.createElement(ArxmlHelper.ItemString_CompsSwCompnType);
        e_ShorName = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, comps_name);
        e_Component = docNode.createElement(ArxmlHelper.ItemString_Compns);
        e_CompsSwCompnType.appendChild(e_ShorName);

        index = find(ic == i);
        for j=1:length(index)
            e_SwCompn_Type = docNode.createElement(ArxmlHelper.ItemString_SwCompnPrototype);
            compn_name = composition_infos(index(j)).ComponentName;
            compn_type = composition_infos(index(j)).ComponentType;
            e_ShorName = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, compn_name);
            element_compn_str = ['/', ArxmlHelper.PackageName_ApplComponentType, '/', compn_type];
            e_TypeRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_TypeRef, element_compn_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_ApplSwCompType});
            e_SwCompn_Type.appendChild(e_ShorName);
            e_SwCompn_Type.appendChild(e_TypeRef);
            e_Component.appendChild(e_SwCompn_Type);
        end
        e_CompsSwCompnType.appendChild(e_Component);
        elements_node.appendChild(e_CompsSwCompnType);
    end
end

function elements_node = internal_create_sr_interface_node(cs_infos, docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_Elements);
    interface_name_list = arrayfun(@(x) x.InterfaceName, cs_infos, 'UniformOutput', false);
    [interface_name_unique, ~, ic] = unique(interface_name_list);
    for i=1:length(interface_name_unique)
        sr_interface_name = interface_name_unique{i};
        e_SRInterface = docNode.createElement(ArxmlHelper.ItemString_SRInterface);
        e_ShorName = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, sr_interface_name);
        e_IsService = internal_create_text_node(docNode, ArxmlHelper.ItemString_IsService, ArxmlHelper.PropAttri_False);
        e_SRInterface.appendChild(e_ShorName);
        e_SRInterface.appendChild(e_IsService);
        e_DataElements = docNode.createElement(ArxmlHelper.ItemString_DataElements);
        
        index = find(ic == i);
        e_VarData_list = arrayfun(@(x) internal_create_var_data_node(cs_infos, x, docNode), index, 'UniformOutput', false);
        for j=1:length(e_VarData_list)
            e_DataElements.appendChild(e_VarData_list{j});
        end
        e_SRInterface.appendChild(e_DataElements);
        elements_node.appendChild(e_SRInterface);
    end
end

function elements_node = internal_create_cs_interface_node(appl_port_infos, docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_Elements);
    interface_name_list = arrayfun(@(x) x.InterfaceName, appl_port_infos, 'UniformOutput', false);
    [interface_name_unique, ~, ic] = unique(interface_name_list);
    for i=1:length(interface_name_unique)
        cs_name = interface_name_unique{i};
        e_CSInterface = docNode.createElement(ArxmlHelper.ItemString_CSInterface);
        e_ShorName = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, cs_name);
        e_IsServer = internal_create_text_node(docNode, ArxmlHelper.ItemString_IsService, 'false');
        e_CSInterface.appendChild(e_ShorName);
        e_CSInterface.appendChild(e_IsServer);
        e_Operation = docNode.createElement(ArxmlHelper.ItemString_Operation);
        e_PossibleErr = docNode.createElement(ArxmlHelper.ItemString_PossibleErr);
        e_ApplErr = docNode.createElement(ArxmlHelper.ItemString_ApplErr);
        e_ShorName = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, ArxmlHelper.PropAttri_ApplErr);
        e_ErrCode = internal_create_text_node(docNode, ArxmlHelper.ItemString_ErrCode, '1');
        e_ApplErr.appendChild(e_ShorName);
        e_ApplErr.appendChild(e_ErrCode);
        e_PossibleErr.appendChild(e_ApplErr);
        
        index = find(ic == i);
        for j=1:length(index)
            is_app_err = appl_port_infos(index(j)).IsAppErr;
            op_name = appl_port_infos(index(j)).OperationName;
            if ischar(op_name) && ~isempty(op_name)
                e_csOperation = docNode.createElement(ArxmlHelper.ItemString_CsOperation);
                e_ShorName = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, op_name);
                e_csOperation.appendChild(e_ShorName);
                arg1_name = appl_port_infos(index(j)).Argument1_Name;
                arg1_datatype = appl_port_infos(index(j)).Argument1_DataType;
                arg1_direction = appl_port_infos(index(j)).Argument1_Direction;
                if ischar(arg1_name) && ischar(arg1_datatype) && ischar(arg1_direction)
                    e_Arguments = docNode.createElement(ArxmlHelper.ItemString_Arguments);
                    e_ArgumentDataType = create_argument_data_prototype(arg1_name, arg1_datatype, arg1_direction);
                    e_Arguments.appendChild(e_ArgumentDataType);
                    
                    arg2_name = appl_port_infos(index(j)).Argument2_Name;
                    arg2_datatype = appl_port_infos(index(j)).Argument2_DataType;
                    arg2_direction = appl_port_infos(index(j)).Argument2_Direction;
                    if ischar(arg2_name) && ischar(arg2_datatype) && ischar(arg2_direction)
                        e_ArgumentDataType = create_argument_data_prototype(arg2_name, arg2_datatype, arg2_direction);
                        e_Arguments.appendChild(e_ArgumentDataType);
                        
                        arg3_name = appl_port_infos(index(j)).Argument3_Name;
                        arg3_datatype = appl_port_infos(index(j)).Argument3_DataType;
                        arg3_direction = appl_port_infos(index(j)).Argument3_Direction;
                        if ischar(arg3_name) && ischar(arg3_datatype) && ischar(arg3_direction)
                            e_ArgumentDataType = create_argument_data_prototype(arg3_name, arg3_datatype, arg3_direction);
                            e_Arguments.appendChild(e_ArgumentDataType);
                            
                            arg4_name = appl_port_infos(index(j)).Argument4_Name;
                            arg4_datatype = appl_port_infos(index(j)).Argument4_DataType;
                            arg4_direction = appl_port_infos(index(j)).Argument4_Direction;
                            if ischar(arg4_name) && ischar(arg4_datatype) && ischar(arg4_direction)
                                e_ArgumentDataType = create_argument_data_prototype(arg4_name, arg4_datatype, arg4_direction);
                                e_Arguments.appendChild(e_ArgumentDataType);
                            end
                        end
                    end
                    e_csOperation.appendChild(e_Arguments);
                    if strcmp(is_app_err, 'true')
                    e_PossibleErrRefs = docNode.createElement(ArxmlHelper.ItemString_PossibleErrRefs);
                    ref_str = ['/', ArxmlHelper.PackageName_CSInterface, '/', cs_name, '/', ArxmlHelper.PropAttri_ApplErr];
                    e_PossibleErrRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_PossibleErrRef, ref_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_ApplErr});
                    e_PossibleErrRefs.appendChild(e_PossibleErrRef);
                    e_csOperation.appendChild(e_PossibleErrRefs);
                    end
                end
            end
            e_Operation.appendChild(e_csOperation);
        end
        e_CSInterface.appendChild(e_Operation);
        e_CSInterface.appendChild(e_PossibleErr);
        elements_node.appendChild(e_CSInterface);
    end
    
    function e_ArgumentDataType = create_argument_data_prototype(arg_name, arg_datatype, arg_direction)
        e_ArgumentDataType = docNode.createElement(ArxmlHelper.ItemString_ArgumentDataType);
        element_datatype_str = ['/', ArxmlHelper.PackageName_ApplDataType, '/', arg_datatype];
        e_ArgShorName = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, arg_name);
        
        e_DataDefProps = docNode.createElement(ArxmlHelper.ItemString_SwDataProps);
        e_DataDefPropsVars = docNode.createElement(ArxmlHelper.ItemString_SwDataPropsVar);
        e_DataDefPropsCond = docNode.createElement(ArxmlHelper.ItemString_SwDataPropsCond);
        e_CaliAccess = internal_create_text_node(docNode, ArxmlHelper.ItemString_SwCaliAccess, 'NOT-ACCESSIBLE');
        e_DataDefPropsCond.appendChild(e_CaliAccess);
        e_DataDefPropsVars.appendChild(e_DataDefPropsCond);
        e_DataDefProps.appendChild(e_DataDefPropsVars);
        e_ServerPolicy = internal_create_text_node(docNode, ArxmlHelper.ItemString_ServerArgImplPolicy, 'USE-ARGUMENT-TYPE');
        
        e_Direction = internal_create_text_node(docNode, ArxmlHelper.ItemString_Direction, arg_direction);
        e_TypeRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_TypeRef, element_datatype_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_ApplPrimDataType});
        e_ArgumentDataType.appendChild(e_ArgShorName);
        e_ArgumentDataType.appendChild(e_DataDefProps);
        e_ArgumentDataType.appendChild(e_TypeRef);
        e_ArgumentDataType.appendChild(e_Direction);
        e_ArgumentDataType.appendChild(e_ServerPolicy);
    end
end

function elements_node = internal_create_data_constr_node(data_constr_infos, docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_Elements);
    for i=1:length(data_constr_infos)
        name = data_constr_infos(i).Name;
        lower_limit = internal_get_num_str(data_constr_infos(i).LowerLimit, '-INF');
        upper_limit = internal_get_num_str(data_constr_infos(i).UpperLimit, '+INF');
        
        e_DataConstr = docNode.createElement(ArxmlHelper.ItemString_DataConstr);
        e_ShorName = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, name);
        e_DataConstr.appendChild(e_ShorName);
        if ischar(data_constr_infos(i).Description)
            e_Desc = internal_create_desc_node(docNode, data_constr_infos(i).Description, {ArxmlHelper.PropName_Latex,ArxmlHelper.PropAttri_ForAll});
            e_DataConstr.appendChild(e_Desc);
        end
        e_ConstrRules = docNode.createElement(ArxmlHelper.ItemString_ConstrRules);
        e_ConstrRule = docNode.createElement(ArxmlHelper.ItemString_ConstrRule);
        e_PhysConstrs = docNode.createElement(ArxmlHelper.ItemString_PhysConstrs);
        [e_LowerLimit, e_UpperLimit] = internal_create_minmax_limit_node(lower_limit, upper_limit, docNode);
        
        e_PhysConstrs.appendChild(e_LowerLimit);
        e_PhysConstrs.appendChild(e_UpperLimit);
        e_ConstrRule.appendChild(e_PhysConstrs);
        e_ConstrRules.appendChild(e_ConstrRule);
        e_DataConstr.appendChild(e_ConstrRules);
        
        elements_node.appendChild(e_DataConstr);
    end
end

function elements_node = internal_create_appl_datatype_node(appl_infos, docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_Elements);
    for i=1:length(appl_infos)
        name = appl_infos(i).Name;
        category = appl_infos(i).Category;
        props_info = '';
        props_info.SwCaliAccess = 'READ-ONLY';
        if ischar(appl_infos(i).Unit)
            props_info.UnitRef = appl_infos(i).Unit;
        end
        if ischar(appl_infos(i).CompuMethod)
            props_info.CompuMethodRef = appl_infos(i).CompuMethod;
        end
        if ischar(appl_infos(i).DataConstraint)
            props_info.DataConstr = appl_infos(i).DataConstraint;
        end
        element_datatype = appl_infos(i).DataType;
        element_num = internal_get_num_str(appl_infos(i).Size);
        
        e_ShorName = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, name);
        e_Category = internal_create_text_node(docNode, ArxmlHelper.ItemString_Category, category);
        
        if strcmpi(category, 'BOOLEAN') || strcmpi(category, 'VALUE')
            e_ApplDataType = docNode.createElement(ArxmlHelper.ItemString_ApplPrimDataType);
            e_ApplDataType.appendChild(e_ShorName);
            
            e_ApplDataType.appendChild(e_Category);
            e_SwDataProps = internal_create_sw_data_def_props_node(docNode, props_info);
            e_ApplDataType.appendChild(e_SwDataProps);
        elseif strcmpi(category, 'ARRAY')
            e_ApplDataType = docNode.createElement(ArxmlHelper.ItemString_ApplArrayDataType);
            e_ApplDataType.appendChild(e_ShorName);
            
            e_ApplDataType.appendChild(e_Category);
            e_AdminData = internal_create_admin_data_node(docNode);
            e_ApplDataType.appendChild(e_AdminData);
            e_SwDataProps = internal_create_sw_data_def_props_node(docNode, props_info);
            e_ApplDataType.appendChild(e_SwDataProps);
            if ~isempty(element_datatype) && ischar(element_datatype) && ~isempty(element_num)
                e_ArrayElement = internal_create_array_element_node(element_datatype, element_num, docNode);
                e_ApplDataType.appendChild(e_ArrayElement);
            else
                error('If category is ARRAR, then "Data Type" and "Size" must be filled!')
            end
        else
            error('Category of Application Datatype must be "BOOLEAN", "ARRAY" or "VALUE"');
        end
        if ischar(appl_infos(i).Description)
            e_Desc = internal_create_desc_node(docNode, appl_infos(i).Description, {ArxmlHelper.PropName_Latex,ArxmlHelper.PropAttri_ForAll});
            e_ApplDataType.insertBefore(e_Desc, e_Category);
        end
        elements_node.appendChild(e_ApplDataType);
    end
end

function elements_node = internal_create_text_compu_node(text_table, docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_CompuScales);
    text_table_cell = strsplit(text_table, newline);
    for i=1:length(text_table_cell)
        text_detail_cell = strsplit(strrep(text_table_cell{i}, ' ', ''), ':');
        if length(text_detail_cell) == 2
            label = text_detail_cell{2};
            if ~isnan(str2double(text_detail_cell{1}))
                lower_limit = text_detail_cell{1};
                upper_limit = text_detail_cell{1};
            elseif ~isempty(strfind(text_detail_cell{1}, '-'))
                min_max_str = strsplit(text_detail_cell{1}, '-');
                if ~isnan(str2double(min_max_str{1})) && ~isnan(str2double(min_max_str{2}))
                    lower_limit = min_max_str{1};
                    upper_limit = min_max_str{2};
                else
                    error('String spilt from "-" is not num!');
                end
            else
                error('String spilt from "-" is not num!');
            end
        else
            error('Value and text must spilt with english ":"!');
        end
        e_CompuScale = docNode.createElement(ArxmlHelper.ItemString_CompuScale);
        e_ShorLabel = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortLabel, label);
        [e_LowerLimit, e_UpperLimit] = internal_create_minmax_limit_node(lower_limit, upper_limit, docNode);
        e_CompuConst = docNode.createElement(ArxmlHelper.ItemString_CompuConst);
        e_VT = internal_create_text_node(docNode, ArxmlHelper.ItemString_ValueTxt, label);
        e_CompuScale.appendChild(e_ShorLabel);
        e_CompuScale.appendChild(e_LowerLimit);
        e_CompuScale.appendChild(e_UpperLimit);
        e_CompuConst.appendChild(e_VT);
        e_CompuScale.appendChild(e_CompuConst);
        
        elements_node.appendChild(e_CompuScale);
    end
end

function elements_node = internal_create_linear_compu_node(compu_infor, docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_CompuScales);
    e_CompuScale = docNode.createElement(ArxmlHelper.ItemString_CompuScale);
    short_label = 'CompuScale';
    e_ShorLabel = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortLabel, short_label);
    e_CompuScale.appendChild(e_ShorLabel);
    
    lower_limit = internal_get_num_str(compu_infor.min, '-INF');
    upper_limit = internal_get_num_str(compu_infor.max, '+INF');
    [e_LowerLimit, e_UpperLimit] = internal_create_minmax_limit_node(lower_limit, upper_limit, docNode);
    e_CompuScale.appendChild(e_LowerLimit);
    e_CompuScale.appendChild(e_UpperLimit);
    
    factor = internal_get_num_str(compu_infor.factor, '1');
    offset = internal_get_num_str(compu_infor.offset, '0');
    e_CompuRationalCoeffs = internal_create_compu_coeffs_node(factor, offset, docNode);
    e_CompuScale.appendChild(e_CompuRationalCoeffs);
    elements_node.appendChild(e_CompuScale);
end

function appl_component_infos = internal_parse_appl_component_type_infos(appl_component_type_infos)
    swc_infos = struct2cell(appl_component_type_infos)';
    swc_infos(cellfun(@(x, y) ~(ischar(x)&&~isempty(x)) || ~(ischar(y)&&~isempty(y)), swc_infos(:,1), swc_infos(:,2)), :) = [];
    swc_name = unique(swc_infos(:,1));
    if length(swc_name) ~= 1 || isempty(swc_name{1})
        error('ApplComponentTypes must unique!');
    end
    runnables_time = unique(swc_infos(:,2));
    runnables_name = cellfun(@(x) [swc_name{1}, '_', x], runnables_time, 'UniformOutput', false);
    runnable_time_ms = cellfun(@(x) regexp(x, '\d+', 'match'), runnables_time, 'UniformOutput', false);
    
    runnables_r_port = cellfun(@find_r_port_info, runnables_time, repmat({'Receive'},[length(runnables_time),1]), 'UniformOutput', false);
    runnables_p_port = cellfun(@find_r_port_info, runnables_time, repmat({'Provide'},[length(runnables_time),1]), 'UniformOutput', false);
    runnables_struct = struct('runnable_name', runnables_name, 'runnable_time_ms', runnable_time_ms, ...
        'component_r_port', runnables_r_port, 'component_p_port', runnables_p_port);
    appl_component_infos = struct('appl_component_name', swc_name, 'component_runnable', runnables_struct);
    
    function port_struct = find_r_port_info(runnables_time, type)
        index = cell2mat(cellfun(@(x,y) strcmp(x, runnables_time) && strcmpi(y, type), swc_infos(:,2), swc_infos(:,6), 'UniformOutput', false));
        port_info = swc_infos(index, 3:5);
        port_name = unique(port_info(:,1));
        port_element = cellfun(@find_r_port_element_info, port_name, 'UniformOutput', false);
        if strcmpi(type, 'Receive')
            port_struct = struct('r_port_name', port_name, 'r_port_element', port_element);
        elseif strcmpi(type, 'Provide')
            port_struct = struct('p_port_name', port_name, 'p_port_element', port_element);
        else
            error('no such type!');
        end
        
        function element_struct = find_r_port_element_info(r_port_name)
            index2 = cell2mat(cellfun(@(x) strcmp(x, r_port_name), port_info(:,1),  'UniformOutput', false));
            element_info = port_info(index2, 2:3);
            element_struct = struct('access_port_name', element_info(:,1), 'access_port_init', element_info(:,2));
        end
    end
end

function num_str = internal_get_num_str(cell_info, default_str)
    if nargin < 2
        default_str = '';
    end
    if isnumeric(cell_info) && ~isnan(cell_info)
        num_str = num2str(cell_info);
    elseif ischar(cell_info) && ~isnan(str2double(cell_info))
        num_str = cell_info;
    else
        num_str = default_str;
    end
end

function [e_LowerLimit, e_UpperLimit] = internal_create_minmax_limit_node(lower_limit, upper_limit, docNode)
    if strcmp(upper_limit, '+INF')
        prop_cell = {ArxmlHelper.PropName_IntervalType, ArxmlHelper.PropAttri_Inf};
    else
        prop_cell = {ArxmlHelper.PropName_IntervalType, ArxmlHelper.PropAttri_Closed};
    end
    e_UpperLimit = internal_create_text_node(docNode, ArxmlHelper.ItemString_UpperLim, upper_limit, prop_cell);
    if strcmp(lower_limit, '-INF')
        prop_cell = {ArxmlHelper.PropName_IntervalType, ArxmlHelper.PropAttri_Inf};
    else
        prop_cell = {ArxmlHelper.PropName_IntervalType, ArxmlHelper.PropAttri_Closed};
    end
    e_LowerLimit = internal_create_text_node(docNode, ArxmlHelper.ItemString_LowerLim, lower_limit, prop_cell);
end

function elements_node = internal_create_datatype_mapping_ref_node(docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_DataTypeMapRefs);
    data_type_map_ref_str = ['/', ArxmlHelper.PackageName_DataTypeMappingSets, '/', ArxmlHelper.PackageName_DataTypeMapping];
    e_DataTypeMapRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_DataTypeMapRef, data_type_map_ref_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_DataTypeMappingSet});
    elements_node.appendChild(e_DataTypeMapRef);
end

function elements_node = internal_create_events_node(comp_name, comp_runnable, docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_Events);
    e_TimingEvent = docNode.createElement(ArxmlHelper.ItemString_TimingEvents);
    time_event_short_name = ['TMT_', comp_runnable.runnable_name];
    e_ShorNameTimeEvent = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, time_event_short_name);
    swc_ib_name = [comp_name, '_', ArxmlHelper.PackageName_InternalBehavior];
    time_event_ref_str = ['/', ArxmlHelper.PackageName_ApplComponentType, '/', comp_name, '/', swc_ib_name, '/', comp_runnable.runnable_name];
    e_TimeEventRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_StartOnEventRef, time_event_ref_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_RunnableEntity});
    period_str = num2str(str2double(comp_runnable.runnable_time_ms)/1000);
    e_Period = internal_create_text_node(docNode, ArxmlHelper.ItemString_Period, period_str);
    e_TimingEvent.appendChild(e_ShorNameTimeEvent);
    e_TimingEvent.appendChild(e_TimeEventRef);
    e_TimingEvent.appendChild(e_Period);
    
    e_InitEvent = docNode.createElement(ArxmlHelper.ItemString_InitEvent);
    init_event_short_name = [comp_name, '_InitEvent'];
    e_ShorNameInitEvent = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, init_event_short_name);
    init_event_ref_str = ['/', ArxmlHelper.PackageName_ApplComponentType, '/', comp_name, '/', swc_ib_name, '/', comp_name, '_Init'];
    e_InitEventRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_StartOnEventRef, init_event_ref_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_RunnableEntity});
    e_InitEvent.appendChild(e_ShorNameInitEvent);
    e_InitEvent.appendChild(e_InitEventRef);
    
    elements_node.appendChild(e_TimingEvent);
    elements_node.appendChild(e_InitEvent);
end

function elements_node = internal_create_data_sr_point_node(docNode, comp_name, comp_port, mode)
    if strcmpi(mode, 'send')
        elements_node = docNode.createElement(ArxmlHelper.ItemString_DataSPoint);
    else
        elements_node = docNode.createElement(ArxmlHelper.ItemString_DataRPointByArg);
    end
    for index=1:length(comp_port)
        if strcmpi(mode, 'send')
            port_name = comp_port(index).p_port_name;
            port_element = comp_port(index).p_port_element;
            short_name_str_pre = ['SEND_', port_name];
            port_prototype_ref_prop = {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_PPortPrototype};
            port_name_ref = regexprep(port_name, '^Pi_', 'Pp_');
        else
            port_name = comp_port(index).r_port_name;
            port_element = comp_port(index).r_port_element;
            short_name_str_pre = ['REC_', port_name];
            port_prototype_ref_prop = {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_RPortPrototype};
            port_name_ref = [regexprep(port_name, '^Pi_', 'Pp_'), '_', comp_name, '_R'];
        end
        for i=1:length(port_element)
            e_VarAccess = docNode.createElement(ArxmlHelper.ItemString_VarAccess);
            element_name = port_element(i).access_port_name;
            short_name_str = [short_name_str_pre, '_', element_name];
            e_ShorName = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, short_name_str);
            e_AccessVar = docNode.createElement(ArxmlHelper.ItemString_AccessVar);
            e_ArVarIRef = docNode.createElement(ArxmlHelper.ItemString_ArVarIRef);
            port_proto_ref_str = ['/', ArxmlHelper.PackageName_ApplComponentType, '/', comp_name, '/', port_name_ref];
            traget_data_port_proto_ref_str = ['/', ArxmlHelper.PackageName_SRInterface, '/', port_name, '/', element_name];
            e_PortPrototypeRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_PortPrototypeRef, port_proto_ref_str, port_prototype_ref_prop);
            e_TargetDataPrototypeRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_TargetDataPrototypeRef, traget_data_port_proto_ref_str, ...
                {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_VarDataPrototype});
            
            e_ArVarIRef.appendChild(e_PortPrototypeRef);
            e_ArVarIRef.appendChild(e_TargetDataPrototypeRef);
            e_VarAccess.appendChild(e_ShorName);
            e_AccessVar.appendChild(e_ArVarIRef);
            e_VarAccess.appendChild(e_AccessVar);
            elements_node.appendChild(e_VarAccess);
        end
    end
end

function elements_node = internal_create_runnables_node(comp_infos, docNode)
    comp_name = comp_infos.name;
    comp_runnable = comp_infos.runnable;
    comp_r_port = comp_infos.r_port;
    comp_p_port = comp_infos.p_port;
    elements_node = docNode.createElement(ArxmlHelper.ItemString_Runnables);
    init_runnable_name = [comp_name, '_Init'];
    e_DataReceivePoint = internal_create_data_sr_point_node(docNode, comp_name, comp_r_port, 'receive');
    e_DataSendPoints = internal_create_data_sr_point_node(docNode, comp_name, comp_p_port, 'send');
    e_TimeRunnableEntiy = internal_create_runnable_entiy_node(docNode, comp_runnable.runnable_name, e_DataReceivePoint, e_DataSendPoints);
    e_InitRunnableEntiy = internal_create_runnable_entiy_node(docNode, init_runnable_name);
    elements_node.appendChild(e_TimeRunnableEntiy);
    elements_node.appendChild(e_InitRunnableEntiy);
end

function elements_node = internal_create_runnable_entiy_node(docNode, runnable_name, e_DataReceivePoint, e_DataSendPoints)
    if nargin < 4
        e_DataSendPoints = '';
    end
    if nargin < 3
        e_DataReceivePoint = '';
    end
    elements_node = docNode.createElement(ArxmlHelper.ItemString_RunnableEntity);
    e_ShorName = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, runnable_name);
    e_Symbol = internal_create_text_node(docNode, ArxmlHelper.ItemString_Symbol, runnable_name);
    
    elements_node.appendChild(e_ShorName);
    if ~isempty(e_DataReceivePoint)
        elements_node.appendChild(e_DataReceivePoint);
    end
    if ~isempty(e_DataSendPoints)
        elements_node.appendChild(e_DataSendPoints);
    end
    elements_node.appendChild(e_Symbol);
end

function elements_node = internal_create_internal_behaviors_node(comp_infos, docNode)
    comp_name = comp_infos.name;
    comp_runnable = comp_infos.runnable;
    elements_node = docNode.createElement(ArxmlHelper.ItemString_InternalBehav);
    e_SwcIB = docNode.createElement(ArxmlHelper.ItemString_SwcInternalBehav);
    swc_ib_name = [comp_name, '_', ArxmlHelper.PackageName_InternalBehavior];
    e_ShorNameSwcIB = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, swc_ib_name);
    e_DataTypeMapRefs = internal_create_datatype_mapping_ref_node(docNode);
    e_Events = internal_create_events_node(comp_name, comp_runnable, docNode);
    e_Runnables = internal_create_runnables_node(comp_infos, docNode);
    
    e_SwcIB.appendChild(e_ShorNameSwcIB);
    e_SwcIB.appendChild(e_DataTypeMapRefs);
    e_SwcIB.appendChild(e_Events);
    e_SwcIB.appendChild(e_Runnables);
    elements_node.appendChild(e_SwcIB);
end

function elements_node = internal_create_port_node(comp_name, comp_r_ports, comp_p_ports, docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_Ports);
    
    for index=1:length(comp_p_ports)
        comp_port = comp_p_ports(index);
        e_PPortPrototype = internal_create_port_prototype_node(comp_name, comp_port, 'p_port', docNode);
        elements_node.appendChild(e_PPortPrototype);
    end
    for index=1:length(comp_r_ports)
        comp_port = comp_r_ports(index);
        e_RPortPrototype = internal_create_port_prototype_node(comp_name, comp_port, 'r_port', docNode);
        elements_node.appendChild(e_RPortPrototype);
    end
end

function elements_node = internal_create_port_prototype_node(comp_name, comp_port, port_type, docNode)
    if strcmpi(port_type, 'r_port')
        port_name = [regexprep(comp_port.r_port_name, '^Pi_', 'Pp_'), '_', comp_name, '_R'];
        port_ref_str = ['/', ArxmlHelper.PackageName_SRInterface, '/', comp_port.r_port_name];
        elements_node = docNode.createElement(ArxmlHelper.ItemString_RPortPrototype);
        e_IfTRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_RequidIFTRef, port_ref_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_SRInterface});
        e_SRComSpes = internal_create_sr_com_spes_node(comp_port, port_type, docNode);
    else
        port_name = regexprep(comp_port.p_port_name, '^Pi_', 'Pp_');
        port_ref_str = ['/', ArxmlHelper.PackageName_SRInterface, '/', comp_port.p_port_name];
        elements_node = docNode.createElement(ArxmlHelper.ItemString_PPortPrototype);
        e_IfTRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_ProvidIFTRef, port_ref_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_SRInterface});
        e_SRComSpes = internal_create_sr_com_spes_node(comp_port, port_type, docNode);
    end
    e_ShorNamePortProto = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, port_name);
    elements_node.appendChild(e_ShorNamePortProto);
    elements_node.appendChild(e_SRComSpes);
    elements_node.appendChild(e_IfTRef);
end

function elements_node = internal_create_sr_com_spes_node(comp_port, port_type, docNode)
    if strcmpi(port_type, 'r_port')
        elements_node = docNode.createElement(ArxmlHelper.ItemString_RequiredComSpecs);
        port_name = comp_port.r_port_name;
        port_element = comp_port.r_port_element;
        port_com_specs_str = ArxmlHelper.ItemString_NonQuRecComSpec;
    else
        elements_node = docNode.createElement(ArxmlHelper.ItemString_ProvidedComSpecs);
        port_name = comp_port.p_port_name;
        port_element = comp_port.p_port_element;
        port_com_specs_str = ArxmlHelper.ItemString_NonQuSendComSpec;
    end
    for i=1:length(port_element)
        element_name = port_element(i).access_port_name;
        element_init = port_element(i).access_port_init;
        e_NonQuComSpec = docNode.createElement(port_com_specs_str);
        data_element_ref_str = ['/', ArxmlHelper.PackageName_SRInterface, '/', port_name, '/', element_name];
        e_DataElementRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_DataElementRef, data_element_ref_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_VarDataPrototype});
        e_InitValue = internal_create_init_value_node(element_init, docNode);
        e_NonQuComSpec.appendChild(e_DataElementRef);
        e_NonQuComSpec.appendChild(e_InitValue);
        elements_node.appendChild(e_NonQuComSpec);
    end
end

function elements_node = internal_create_init_value_node(element_init, docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_InitValue);
    if isnan(element_init)
        init_value = 0;
    elseif ischar(element_init)
        init_value = str2num(element_init); %#ok<*ST2NM>
    else
        init_value = element_init;
    end
    if length(init_value) > 1
        e_ArrayValueSpec = docNode.createElement(ArxmlHelper.ItemString_ArrayValueSpec);
        e_Elements = docNode.createElement(ArxmlHelper.ItemString_Elements);
        for i=1:length(init_value)
            e_NumValueSpec = docNode.createElement(ArxmlHelper.ItemString_NumValueSpec);
            e_Value = internal_create_text_node(docNode, ArxmlHelper.ItemString_ValueFull, num2str(init_value(i)));
            e_NumValueSpec.appendChild(e_Value);
            e_Elements.appendChild(e_NumValueSpec);
        end
        e_ArrayValueSpec.appendChild(e_Elements);
        elements_node.appendChild(e_ArrayValueSpec);
    else
        if length(init_value) == 1
            init_value_str = num2str(init_value);
        else
            init_value_str = '0';
        end
        e_NumValueSpec = docNode.createElement(ArxmlHelper.ItemString_NumValueSpec);
        e_Value = internal_create_text_node(docNode, ArxmlHelper.ItemString_ValueFull, init_value_str);
        e_NumValueSpec.appendChild(e_Value);
        elements_node.appendChild(e_NumValueSpec);
    end
end

function elements_node = internal_create_compu_coeffs_node(factor, offset, docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_CompuRationalCoeff);
    e_CompuNumerator = docNode.createElement(ArxmlHelper.ItemString_CompuNumerator);
    e_ValueOffset = internal_create_text_node(docNode, ArxmlHelper.ItemString_Value, offset);
    e_ValueFactor = internal_create_text_node(docNode, ArxmlHelper.ItemString_Value, factor);
    e_CompuNumerator.appendChild(e_ValueOffset);
    e_CompuNumerator.appendChild(e_ValueFactor);
    
    e_CompuDenominator = docNode.createElement(ArxmlHelper.ItemString_CompuDenominator);
    e_ValueDenominator = internal_create_text_node(docNode, ArxmlHelper.ItemString_Value, '1');
    e_CompuDenominator.appendChild(e_ValueDenominator);
    
    elements_node.appendChild(e_CompuNumerator);
    elements_node.appendChild(e_CompuDenominator);
end

function elements_node = internal_create_admin_data_node(docNode)
    elements_node = docNode.createElement(ArxmlHelper.ItemString_AdminData);
    e_SDGS = docNode.createElement(ArxmlHelper.ItemString_Sdgs);
    e_SDG = docNode.createElement(ArxmlHelper.ItemString_Sdg);
    e_SDG.setAttribute(ArxmlHelper.PropName_Gid, ArxmlHelper.PropAttri_DynArray);
    e_SD = internal_create_text_node(docNode, ArxmlHelper.ItemString_Sd, 'None', {ArxmlHelper.PropName_Gid, ArxmlHelper.PropAttri_Profile});
    e_SDG.appendChild(e_SD);
    e_SDGS.appendChild(e_SDG);
    elements_node.appendChild(e_SDGS);
end

function elements_node = internal_create_array_element_node(element_datatype, element_num, docNode)
    if ~isempty(regexpi(element_datatype, 'boolean'))
        element_category = 'BOOLEAN';
    else
        element_category = 'VALUE';
    end
    element_datatype_str = ['/', ArxmlHelper.PackageName_ApplDataType, '/', element_datatype];
    array_size_type = 'FIXED-SIZE';
    
    elements_node = docNode.createElement(ArxmlHelper.ItemString_Element);
    e_ShortName = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, ArxmlHelper.ItemString_Element);
    e_Category = internal_create_text_node(docNode, ArxmlHelper.ItemString_Category, element_category);
    e_TypeRef = internal_create_text_node(docNode, ArxmlHelper.ItemString_TypeRef, element_datatype_str, {ArxmlHelper.PropName_Dest, ArxmlHelper.ItemString_ApplPrimDataType});
    e_ArraySizeType = internal_create_text_node(docNode, ArxmlHelper.ItemString_ArraySizeType, array_size_type);
    e_MaxElementNum = internal_create_text_node(docNode, ArxmlHelper.ItemString_MaxElementNum, element_num);
    
    elements_node.appendChild(e_ShortName);
    elements_node.appendChild(e_Category);
    elements_node.appendChild(e_TypeRef);
    elements_node.appendChild(e_ArraySizeType);
    elements_node.appendChild(e_MaxElementNum);
end

function [docNode, doc_element] = internal_create_arxml_init(package_name)
    docNode = com.mathworks.xml.XMLUtils.createDocument(ArxmlHelper.ItemString_Autosar);
    doc_element = docNode.getDocumentElement;
    doc_element.setAttribute(ArxmlHelper.PropName_Xmlns,         ArxmlHelper.PropAttri_Xmlns);
    doc_element.setAttribute(ArxmlHelper.PropName_Xmlns_Xsi,     ArxmlHelper.PropAttri_Xmlns_Xsi);
    doc_element.setAttribute(ArxmlHelper.PropName_Xsi_SchemaLoc, ArxmlHelper.PropAttri_Xsi_SchemaLoc);
    
    doc_comment = docNode.createComment(ArxmlHelper.Comment_ArxmlFile);
    docNode.insertBefore(doc_comment, doc_element);
    e_Packages = docNode.createElement(ArxmlHelper.ItemString_Packages);
    e_Package  = docNode.createElement(ArxmlHelper.ItemString_Package);
    e_ShortName = internal_create_text_node(docNode, ArxmlHelper.ItemString_ShortName, package_name);
    
    e_Package.appendChild(e_ShortName);
    e_Packages.appendChild(e_Package);
    doc_element.appendChild(e_Packages);
end

function new_node_element = internal_create_text_node(docNode, item_string, content_string, item_property)
    if nargin < 4
        item_property = '';
    end
    new_node_element = docNode.createElement(item_string);
    node_string  = docNode.createTextNode(content_string);
    new_node_element.appendChild(node_string);
    if ~isempty(item_property)
        for i=1:length(item_property(:,1))
            new_node_element.setAttribute(item_property{i,1}, item_property{i,2});
        end
    end
end

function desc_node = internal_create_desc_node(docNode, desc_string, item_property)
    desc_node = docNode.createElement(ArxmlHelper.ItemString_Desc);
    e_Desc_Detail = internal_create_text_node(docNode, ArxmlHelper.ItemString_Latex, desc_string, item_property);
    desc_node.appendChild(e_Desc_Detail);
end
