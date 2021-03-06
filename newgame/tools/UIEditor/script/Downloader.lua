Downloader = {}


local STRING_DOWNLOAD_ERR 			   = LangCommonString[138] -- [138]='#cffff00下载异常'
local STRING_FILESYS_ERR			   = LangCommonString[139] -- [139]='#cffff00文件系统异常'
local STRING_CREATEDIR_ERR			   = LangCommonString[140] -- [140]='#cffff00无法创建文件夹'
local STRING_CREATEFILE_ERR			   = LangCommonString[141] -- [141]='#cffff00无法新建文件'
local STRING_DOWNLOAD_CURLE_RECV_ERROR = LangCommonString[142] -- [142]='#cffff00无法接收更新包数据'
local STRING_UNABLE_CLEAN			   = LangCommonString[143] -- [143]='#cffff00无法清除缓存数据'
local STRING_UNABLE_CLEAN_REASON1	   = LangCommonString[144] -- [144]='#c00ff00请检查SDCard是否被占用'
local STRING_UNABLE_CLEAN_REASON2	   = LangCommonString[145] -- [145]='#cff6400请关闭【USB数据存储】选项后重试'
local STRING_UNABLE_CLEAN_REASON3	   = LangCommonString[146] -- [146]='#c00ff00忽略直接游戏'
local STRING_UNABLE_CLEAN_REASON4	   = LangCommonString[147] -- [147]='#c00ff00请检查后重试'

local STRING_UNABLE_CLEAN_REASON5	   = LangCommonString[148] -- [148]='#cff6400或断开USB连接后重试'

local _PRIORITY_LOWEST  = 0
local _PRIORITY_FILE    = 1
local _PRIORITY_SOUND   = 2
local _PRIORITY_TEXTURE = 3
local _PRIORITY_MAX     = 4 

function Downloader:init(cache_url)
	if phone_initDownloader('data/cache.xml',cache_url,true) == 0 then

	else
		local msglist = { STRING_FILESYS_ERR, 
						  STRING_CREATEDIR_ERR,
						  STRING_UNABLE_CLEAN_REASON1,
						  STRING_UNABLE_CLEAN_REASON2,
						 STRING_UNABLE_CLEAN_REASON5
					}

		PopupNotify( _root:getUINode(),
				 	 DialogDepth, msglist,
				 	 STRING_QUIT,nil,POPUP_OK,
				 	 function() ZXGameQuit() end)

	end
end

function Downloader:onSceneMapLeave()
	--phone_clearDownloaderWaitingQueue(_PRIORITY_TEXTURE)
end

function Downloader:onSceneMapEnter()

end

function Downloader:test()
	--phone_testDownloader()
end