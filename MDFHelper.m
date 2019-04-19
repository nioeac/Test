classdef MDFHelper
    methods(Static)
        function signal_infor = GetMDFSignal(varargin)
            signal_infor = internal_get_mdf_signal(varargin{:});
        end
        function signal_list = GetMDFSignalNameList(varargin)
            signal_list = internal_get_mdf_signal_name_list(varargin{:});
        end
    end
end

function signal_list = internal_get_mdf_signal_name_list(mdf_obj)
    channel_name = mdf_obj.ChannelNames;
    signal_list = vertcat(channel_name{:});
    signal_list = unique(signal_list);
end

function data = internal_get_mdf_signal(mdf_obj, signal_name, channel_idx)
    if nargin < 3
        channel_idx = 0;
    end
    if channel_idx > 0
        try
            data = read(mdf_obj,channel_idx,signal_name);
        catch
            channel_idx_new = internal_get_channel_index(mdf_obj, signal_name);
            if channel_idx_new > 0
                data = read(mdf_obj,channel_idx_new,signal_name);
                msgbox(['Given channel index is false, modify to "', num2str(channel_idx_new), '"!']);
            else
                data = [];
                warndlg(['Can not find signal "', signal_name, '" from channel: ', num2str(channel_idx)]);
            end
        end
    else
        channel_idx_new = internal_get_channel_index(mdf_obj, signal_name);
        if channel_idx_new > 0
            data = read(mdf_obj,channel_idx_new,signal_name);
        else
            data = [];
            warndlg(['Can not find signal "', signal_name, '" from mdf file!']);
        end
    end
end

function channel_idx = internal_get_channel_index(mdf_obj, signal_name)
    if ~strcmp(signal_name, 't')
        channel_name = mdf_obj.ChannelNames;
        tmp_idx = find(cellfun(@(x) ismember(signal_name,x), channel_name));
        if length(tmp_idx) == 1
            channel_idx = tmp_idx;
        elseif length(tmp_idx) > 1
            channel_idx = -1;
            warndlg(['There have duplication signal: "', signal_name, '"!']);
        else
            channel_idx = -1;
        end
    else
        channel_idx = -1;
    end
end
