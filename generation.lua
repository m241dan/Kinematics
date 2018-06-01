#!/usr/local/bin/lua
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by korisd.
--- DateTime: 5/31/18 11:25 PM
---

local utils = require( "luautils" )

local limits = dofile( arg[1] )

local x_min = limits.x_min
local x_max = limits.x_max
local x_step = limits.x_step

local y_min = limits.y_min
local y_max = limits.y_max
local y_step = limits.y_step

local z_min = limits.z_min
local z_max = limits.z_max
local z_step = limits.z_step

local e_min = limits.e_min
local e_max = limits.e_max
local e_step = limits.e_step

local coords = {}

coords.x_step = x_step
coords.y_step = y_step
coords.z_step = z_step

for i = e_min, e_max, e_step do
    for j = z_min, z_max, z_step do
        for g = y_min, y_max, y_step do
            for h = x_min, x_max, x_step do
                table.insert( coords, { x = h, y = g, z = j, e = i } )
            end
        end
    end
end

local output = io.open( arg[2], "w+" )

utils.save( coords, output )
