-- scaffold geniefile for khutils

khutils_script = path.getabsolute(path.getdirectory(_SCRIPT))
khutils_root = path.join(khutils_script, "khutils")

khutils_includedirs = {
	path.join(khutils_script, "config"),
	khutils_root,
}

khutils_libdirs = {}
khutils_links = {}
khutils_defines = {}

----
return {
	_add_includedirs = function()
		includedirs { khutils_includedirs }
	end,

	_add_defines = function()
		defines { khutils_defines }
	end,

	_add_libdirs = function()
		libdirs { khutils_libdirs }
	end,

	_add_external_links = function()
		links { khutils_links }
	end,

	_add_self_links = function()
		links { "khutils" }
	end,

	_create_projects = function()

project "khutils"
	kind "StaticLib"
	language "C++"
	flags {}

	includedirs {
		khutils_includedirs,
	}

	defines {}

	files {
		path.join(khutils_script, "config", "**.h"),
		path.join(khutils_root, "**.h"),
		path.join(khutils_root, "**.cpp"),
	}

end, -- _create_projects()
}

---
