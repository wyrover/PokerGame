require 'io'
require 'strbuf'
require 'list'
require 'ZXBinaryLua'

local inputfile = arg[1]

ZXBinary = ZXBinaryLua
ZXImageSet = ZXBinary.ZXImageSet
ZXImageUnit = ZXBinary.ZXImageUnit

local lom = require "lxp.lom"

local frametable = {}

function getLastPath(path)
	local i = string.find(path,'[/\\]')
	if i == nil then
		return path
	elseif  i == string.len(path) then
		return string.sub(path,0,string.len(path)-1)
	end
	local subpath = string.sub(path,i+1,string.len(path))
	return getLastPath(subpath)
end

function convert(src,dst)
	frametable = {}
	f = io.open(src,'r')
	s = f:read('*all')
	local t = lom.parse(s)
	for k,v in ipairs(t) do
		--dict
		if v.tag == 'dict' then
			parseframe(v)
		end
	end
	--print(frametable)


	local i = string.find(src,'resource/')
	local j = string.find(src,'.plist')



	local out = string.sub(src,1,j-1) .. '.imageset'
	local tp = string.sub(src,i+string.len('resource/'),j-1)
	local tn = tp .. '.png'

	local is = ZXImageSet()
	local count = 0
	for k, v in pairs(frametable) do
		--print(k)
		count = count + 1
	end

	is:Initialize(tn,count)

	count = 0;
	for k, v in pairs(frametable) do

		local iu = ZXImageUnit()
		local x,y,w,h = string.match(v['frame'],'{(%d+),(%d+)},{(%d+),(%d+)}')
		--print(v['frame'],x,y,w,h)

		iu:Set( x,y,w,h,tp)

		is:Set(iu,count)
		count = count + 1
	end
	print(out)
	is:Save(out)

end

function parseframe(root)
	local framefound = false
	for k,v in ipairs(root) do
		if v.tag == 'key' and v[1] == 'frames' then
			framefound = true
		end
		if framefound then
			if v.tag == 'dict' then
				readframe(v)
				framefound = false
			end
		end
	end
end

function readframe(root)
	local file = nil
	for i,v in ipairs(root) do

		if v.tag == 'key' then
			file = v[1]
			frametable[file] = {}

		elseif v.tag == 'dict' then
			filltable(v,frametable[file])
			file = nil
		end
	end
end


function filltable(root,t)
	local key = nil
	for k,v in ipairs(root) do
		if v.tag == 'key' then
			key = v[1]

		elseif v.tag == 'true' then
			t[key] = 1
			key = nil

		elseif v.tag == 'false' then
			t[key] = 0
			key = nil

		elseif v.tag ~= nil and v.tag ~= '' then
			t[key] = v[1]
			key = nil
		end
	end
end
convert('E:/mobile_client/develop/resource/ui2/npc/TYC.plist')

