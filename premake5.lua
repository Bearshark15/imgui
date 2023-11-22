project "imgui"
    kind "StaticLib"
    language "C++"

    targetdir ("build/" .. outputdir .. "/%{prj.name}")
	objdir ("bin/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imgui_tables.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp",
        "backends/imgui_impl_opengl3.h",
        "backends/imgui_impl_opengl3.cpp",
        "backends/imgui_impl_opengl3_loader.h",
	}

    includedirs {
        "C:/dev/gameengine/Starfish/starfish/vendor/imgui",
        "%{prj.name}/backends",
    }

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++20"
        staticruntime "On"

    filter "configurations:Debug"
        buildoptions "/MDd"
        symbols "On"

    filter "configurations:Release"
        buildoptions "/MD"
        optimize "On"
    
    filter "configurations:Dist"
        buildoptions "/MD"
        optimize "On"
