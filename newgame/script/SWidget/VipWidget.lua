--VipWidget.lua
--VIP控件

super_class.VipWidget()

local function get_vip_num_path(num)
	return string.format("sui/vip/vip%s.png", num)
end

--构造函数
function VipWidget:__init(parent, x, y, vipLv)
	if not parent then
		return nil
	end

    self:check_is_svip(vipLv)

    if self.is_svip then
        self.parent   = parent
        self.x        = x or 0
        self.y        = y or 0
        self.vipLv    = vipLv or 0
        local img = SImage:create("sui/vip/svipdi.png")
        img:setAnchorPoint(0.5, 0)
        img:setScale(0.5)
        img:setPosition(x or 0, y or 0)
        parent:addChild(img.view, 1)
        self.svip = img
    else
    	self.parent   = parent
    	self.x        = x or 0
    	self.y        = y or 0
    	self.vipLv    = vipLv or 0
    	self.num_char = {}
    	self.vip_num  = {}

    	self.view = CCBasePanel:panelWithFile(self.x, self.y, -1, -1, "sui/vip/vipdi.png")
    	self.view:setAnchorPoint(0.5, 0)
    	self.parent:addChild(self.view)

    	self.vip_pre = CCBasePanel:panelWithFile(0, 0, -1, -1, "sui/vip/vip.png")

    	self:setVipLv(vipLv)

    	self.parent:addChild(self.vip_pre, 1)
    end
end

function VipWidget:check_is_svip(vipLv)
     self.is_svip = (vipLv or 0) > 10
end

function VipWidget:setVipLv(vipLv)
    self:check_is_svip(vipLv)
    if self.is_svip then
        self.vipLv    = vipLv or 0
        for i,num in ipairs(self.vip_num) do
            num:removeAllChildrenWithCleanup(true)
        end
        self.vip_num  = {}
        self.num_char = {}
        self.vipLv    = vipLv or 0
        if not self.svip then
            local img = SImage:create("sui/vip/svipdi.png")
            img:setAnchorPoint(0.5, 0)
            img:setScale(0.5)
            img:setPosition(self.x or 0, self.y or 0)
            self.parent:addChild(img.view, 1)
            self.svip = img
        end
        if self.view then
            self.view:setIsVisible(false)
            self.vip_pre:setIsVisible(false)
        end
    else
        self.vipLv    = vipLv or 0
        if self.svip then
            self.svip.view:removeAllChildrenWithCleanup(true)
            self.svip = nil
        end
    	for i,num in ipairs(self.vip_num) do
        	num:removeAllChildrenWithCleanup(true)
        end
        self.vip_num  = {}
    	self.num_char = {}
    	local num_str = tostring(vipLv)
        local i = 1
        if num_str ~= nil or num_str ~= "" then
            local a_char = string.sub(num_str, i, i)
            while a_char ~= "" do
            	local num_ima = get_vip_num_path(a_char)
            	table.insert(self.num_char, num_ima)
                i = i+1
                a_char = string.sub(num_str, i, i)
            end
        end
        self:setPosition(self.x, self.y)
        if self.view then
            self.view:setIsVisible(true)
            self.vip_pre:setIsVisible(true)
        else
            self.view = CCBasePanel:panelWithFile(self.x, self.y, -1, -1, "sui/vip/vipdi.png")
            self.view:setAnchorPoint(0.5, 0)
            self.parent:addChild(self.view)
            self.vip_pre = CCBasePanel:panelWithFile(0, 0, -1, -1, "sui/vip/vip.png")
            self.parent:addChild(self.vip_pre, 1)
        end
    end
end

function VipWidget:setPosition(x, y)

    if self.is_svip then
        self.x          = x or 0
        self.y          = y or 0
        self.svip:setPosition(self.x, self.y)
    else

    	self.x          = x or 0
    	self.y          = y or 0
    	self.view:setPosition(self.x, self.y)

    	local view_size = self.view:getSize()
        local pre_size  = self.vip_pre:getSize()
        local vip_width = 0
        local num_width = {}
        for i,path in ipairs(self.num_char) do
        	local num = self.vip_num[i]
        	if not num then
        		num = CCBasePanel:panelWithFile(0, 0, -1, -1, path)
        		self.parent:addChild(num, 2)
        		self.vip_num[i] = num
        	end
        	local size = num:getSize()
    		vip_width = vip_width+size.width
    		num_width[i] = (num_width[i-1] or 0)+size.width
        end

        local pre_x = self.x-(pre_size.width+vip_width)/2
        local pre_y = self.y+(view_size.height-pre_size.height)/2

        for i,path in ipairs(self.num_char) do
        	local num = self.vip_num[i]
        	num:setPosition(pre_x+pre_size.width+(num_width[i-1] or 0), pre_y)
        end

        self.vip_pre:setPosition(pre_x,pre_y)
    end
end

function VipWidget:setIsVisible(bool)
    if self.is_svip then
        self.svip:setIsVisible(bool)
    else
    	self.view:setIsVisible(bool)
    	self.vip_pre:setIsVisible(bool)
    	for i,path in ipairs(self.num_char) do
        	local num = self.vip_num[i]
        	if num then
        		num:setIsVisible(bool)
        	end
        end
    end
end