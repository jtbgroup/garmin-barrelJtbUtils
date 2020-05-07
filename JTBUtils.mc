using Toybox.System as Sys;

module JTBUtils {

	var helper = new Helper();
	
	const OPTION_COLOR_WHITE=0; 
	const OPTION_COLOR_LT_GRAY=1;
	const OPTION_COLOR_DK_GRAY= 2;
	const OPTION_COLOR_BLACK= 3;
	const OPTION_COLOR_RED= 4;
	const OPTION_COLOR_DK_RED= 5;
	const OPTION_COLOR_ORANGE= 6;
	const OPTION_COLOR_YELLOW= 7;
	const OPTION_COLOR_GREEN= 8;
	const OPTION_COLOR_DK_GREEN= 9;
	const OPTION_COLOR_BLUE= 10;
	const OPTION_COLOR_DK_BLUE= 11;
	const OPTION_COLOR_PURPLE=12 ;
	const OPTION_COLOR_PINK=13;
	
	const OPTION_FONT_XTINY=0;
	const OPTION_FONT_TINY=1;
	const OPTION_FONT_SMALL=2;
		
	
	class Helper {
		hidden static var propertiesHelper = new PropertiesHelper();
		hidden static var colorHelper = new ColorHelper();
		hidden static var iconHelper = new IconHelper();
		hidden static var fontHelper = new FontHelper();
		
		//COLORS
		
		function getRandomColor(colorsToAvoid){
			return colorHelper.getRandomColor(colorsToAvoid);
		}
		
		function getRandomColorId(colorsToAvoid){
			return colorHelper.getRandomColorId(colorsToAvoid);
		}
		
		function getColorById(id){
			return colorHelper.getColorById(id);
		}
	
		//PROPERTIES
		
		function getPropertyAsColor(key){
			return propertiesHelper.getPropertyAsColor(key);
		}
		
		function getPropertyValue(key){
			return propertiesHelper.getPropertyValue(key);
		}
		
		function getPropertyAsFont(key){
			return propertiesHelper.getPropertyAsFont(key);
		}
		
		//ICONS
		
		function loadColoredIconRez(iconDictionary){
			iconHelper.loadColoredIconRez(iconDictionary);
		}
		
		function getColoredIcon(iconDictId, colorPropertyKey){
			return iconHelper.getColoredIcon(iconDictId, colorPropertyKey);
		}
		
		function getRandomColoredIcon(iconDictId, colorsToAvoid){
			return iconHelper.getRandomColoredIcon(iconDictId, colorsToAvoid);
		}
		
		//FONTS
		function getFontById(key){
			return fontHelper.getFontById(key);
		}
	}
	
	
	//COLORS
	
	function getColorById(id){
		return helper.getColorById(id);
	}
	
	/**
	* @param colorToAvoid is an array of colors that can't be returned as random color.
	*/
	function getRandomColor(colorsToAvoid){
		return helper.getRandomColor(colorsToAvoid);
	}
	
	/**
	* this will return one of the constant colors of the module
	*/
	function getRandomColorId(colorsToAvoid){
		return helper.getRandomColorId(colorsToAvoid);
	}

	// PROPERTIES

	function getPropertyValue(key){
		return helper.getPropertyValue(key);
	}
	
	function getPropertyAsColor(key){
		return helper.getPropertyAsColor(key);
	}
	
	function getPropertyAsFont(key){
		return helper.getPropertyAsFont(key);
	}
	
	//ICONS
	
	function loadColoredIconRez(iconDictionary){
		helper.loadColoredIconRez(iconDictionary);
	}
	
	
	function getRandomColoredIcon(iconDictId, colorsToAvoid){
		return helper.getRandomColoredIcon(iconDictId, colorsToAvoid);
	}
	
	function getColoredIcon(iconDictId, colorPropertyKey){
		return helper.getColoredIcon(iconDictId, colorPropertyKey);
	}
	
	//FONTS
	function getFontById(key){
		return helper.getFontById(key);
	}
	
	
	
}