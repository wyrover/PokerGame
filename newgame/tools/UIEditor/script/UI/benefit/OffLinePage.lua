-- OffLinePage.lua  
-- created by xiehande on 2015-1-15
-- 离线奖励
super_class.OffLinePage(Window)

--创建工厂方法
function OffLinePage:create(  )
    return OffLinePage( "OffLinePage", UILH_COMMON.normal_bg_v2 , true, 890, 515 )
end

function OffLinePage:__init( window_name, window_info )
    -- 背景
    local int_space=4
    local first_pos_x = 12
    local width = 425
    local height = 478

    self.left_down_panel    = DailyWelfareLD:create( width, height)         -- 左下面板
    self:addChild( self.left_down_panel )
    -- self.left_down_panel:setPosition(first_pos_x+2*width+2*int_space-3,20)
    self.left_down_panel:setPosition(16,15)

    self.right_down_panel   = DailyWelfareRD:create( width, height )       -- 右下面板
    self:addChild( self.right_down_panel)
    -- self.right_down_panel:setPosition(first_pos_x+3*width+3*int_space-4,20)
    self.right_down_panel:setPosition(449,15)
end

-- 更新数据
function OffLinePage:update( update_type )
    -- xprint("===========         OffLinePage:update( update_type )               ==================================")

    -- print("OffLinePage:update", update_type)
    if update_type == "award_list" then
        -- if self.left_up_panel then
        --      self.left_up_panel:update_award_list(  )
        -- end
        
    elseif update_type == "award_state_list" then
        --  if self.left_up_panel then
        --      self.left_up_panel:update_get_award_state(  )
        -- end
    elseif update_type == "off_line_exp_consume" then
             if self.left_down_panel then
             self.left_down_panel:update_consume(  )    --更新消耗总量
            end
    elseif update_type == "off_line_expxp" then  
             if self.left_down_panel then
             self.left_down_panel:update_off_line_exp(  )  --更新离线经验值
            end
    elseif update_type == "off_lingqi" then             -- 离线灵气

                         if self.left_down_panel then
             self.left_down_panel:update_off_line_lingqi(  )
        end

    elseif update_type == "if_had_get_vip_award" then

        --                          if self.right_up_panel then

        --   self.right_up_panel:update_get_but(  )
        -- end

    elseif update_type == "exp_back" then
        if self.right_down_panel then
             self.right_down_panel:update_exp_back_date(  )

        end
    elseif update_type == "change_to_lingqi" then
        if self.left_down_panel then 
        self.left_down_panel:update( update_type )
       end
    elseif update_type == "all" then
        -- self.left_up_panel:update_award_list(  )
        -- self.left_up_panel:update_get_award_state(  )
        self.left_down_panel:update_off_line_exp(  )
        self.left_down_panel:update_consume(  )
        --离线经验刷新
        self.left_down_panel:update( "all" )
        --更新VIP返利领取
        -- self.right_up_panel:update_get_but(  )
        -- --更新VIP返利说明
        -- self.right_up_panel:update_explain(  )
        --副本累积 日常任务累积刷新
        self.right_down_panel:update_exp_back_date(  )
    end
end

-- 摧毁窗口，被UIManager调用
function OffLinePage:destroy(  )
     Window.destroy(self)
    self.left_down_panel:destroy()
    self.right_down_panel:destroy()
end

function OffLinePage:change_index_page(index)
    if self.left_down_panel ~= nil then
        self.left_down_panel:change_page(index)
    end
end
-- 更新分页按钮上的提示标志
-- function OffLinePage:update_tips_count()
--     if WelfareModel:get_longin_award_had_not_get() > 0 then
--         print("每日登陆有未领取")
--         return 1
--     elseif WelfareModel:get_if_had_get_vip_award() == 0 then  --0：未领取  1：已领取  -1：非vip
--         -- print("vip有未领取")
--         return 1
--     elseif WelfareModel:get_off_line_exp() > 0 then
--         -- print("离线经验有未领取")
--         return 1
--     elseif WelfareModel:get_off_line_lingqi() > 0 then
--         -- print("离线灵气有未领取")
--         return 1
--     else
--         local a1,a2,a3,a4 = WelfareModel:get_exp_back_date_by_type(1)
--         local b1,b2,b3,b4 = WelfareModel:get_exp_back_date_by_type(2)
--         if a3 == false then
--             -- print("副本累计有未领取")
--             return 1
--         elseif b3 == false then
--             -- print("任务累计有未领取")
--             return 1
--         end
--     end
--     print("没有未领取状态")
--     return 0
-- end



-- 创建一个空白回收任命框
function  OffLinePage:create_bg_win(  )
    local function self_view_func( eventType )
        if eventType == TOUCH_BEGAN then
           local win = UIManager:find_visible_window("benefit_win")
           if win then

               if win.all_page_t[BENEFIT_OFFLINE_TAG] then
                  win.all_page_t[BENEFIT_OFFLINE_TAG].right_down_panel:hide_tip_win()
                  --同时隐藏空白框
                  win.all_page_t[BENEFIT_OFFLINE_TAG ]:hide_bg_win()
               end
           end
            return true
        end
        return false
    end

    local conten = self.view:getSize()
    self.basepanel = CCBasePanel:panelWithFile( 0, -20, conten.width,conten.height+60,nil);
    self.basepanel:setAnchorPoint(0,0)
    self.view:addChild(self.basepanel,999)
    self.basepanel:registerScriptHandler(self_view_func)

end

function OffLinePage:hide_bg_win(  )
    local win = UIManager:find_visible_window("benefit_win")
    if win then
        win.all_page_t[BENEFIT_OFFLINE_TAG].basepanel:setIsVisible(false)
    end
end
