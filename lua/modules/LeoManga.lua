----------------------------------------------------------------------------------------------------
-- Scripting Parameters
----------------------------------------------------------------------------------------------------

local LuaDebug   = require 'Modules.LuaDebugging'
-- LuaDebugging  = true   --> Override the global LuaDebugging variable by uncommenting this line.
-- LuaStatistics = true   --> Override the global LuaStatistics variable by uncommenting this line.


----------------------------------------------------------------------------------------------------
-- Local Constants
----------------------------------------------------------------------------------------------------

local Template   = require 'Modules.Template-MangaReaderOnline'
-- DirectoryParameters = '/'            --> Override template variable by uncommenting this line.
XPathTokenStatus    = 'Estado'       --> Override template variable by uncommenting this line.
XPathTokenGenres    = 'Categorías'   --> Override template variable by uncommenting this line.


----------------------------------------------------------------------------------------------------
-- Event Functions
----------------------------------------------------------------------------------------------------

-- Get info and chapter list for current manga.
function GetInfo()
  Template.GetInfo()
  
  return no_error
end


-- Get links and names from the manga list of the current website.
function GetNameAndLink()
  Template.GetNameAndLink()
  
  return no_error
end


-- Get the page count for the current chapter.
function GetPageNumber()
  Template.GetPageNumber()
  
  return no_error
end


----------------------------------------------------------------------------------------------------
-- Module Initialization
----------------------------------------------------------------------------------------------------

function Init()
  AddWebsiteModule('LeoManga', 'https://leomanga.me', 'Spanish')
end

function AddWebsiteModule(name, url, category)
  local m = NewModule()
  m.Website                  = name
  m.RootURL                  = url
  m.Category                 = category
  m.OnGetInfo                = 'GetInfo'
  m.OnGetNameAndLink         = 'GetNameAndLink'
  m.OnGetPageNumber          = 'GetPageNumber'
  return m
end