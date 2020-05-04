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
		
	
	class Helper {
		hidden static var propertiesHelper = new PropertiesHelper();
		hidden static var colorHelper = new ColorHelper();
		hidden static var iconHelper = new IconHelper();
		
		function getRandomColor(colorsToAvoid){
			return colorHelper.getRandomColor(colorsToAvoid);
		}
		
		function getRandomColorId(colorsToAvoid){
			return colorHelper.getRandomColorId(colorsToAvoid);
		}
		
		function getColorById(id){
			return colorHelper.getColorById(id);
		}
	
		function getPropertyValue(key){
			return propertiesHelper.getPropertyValue(key);
		}
		
		function getRawPropertyValue(key){
			return propertiesHelper.getRawPropertyValue(key);
		}
		
		function loadColoredIconRez(iconDictionary){
			iconHelper.loadColoredIconRez(iconDictionary);
		}
		
		function getColoredIcon(iconDictId, colorPropertyKey){
			return iconHelper.getColoredIcon(iconDictId, colorPropertyKey);
		}
		
		function getRandomColoredIcon(iconDictId, colorsToAvoid){
			return iconHelper.getRandomColoredIcon(iconDictId, colorsToAvoid);
		}
	}
	
	
	function getColorById(id){
		return helper.getColorById(id);
	}
	
	
	function loadColoredIconRez(iconDictionary){
		helper.loadColoredIconRez(iconDictionary);
	}
	
	function getColoredIcon(iconDictId, colorPropertyKey){
		return helper.getColoredIcon(iconDictId, colorPropertyKey);
	}
	
	function getRandomColoredIcon(iconDictId, colorsToAvoid){
		return helper.getRandomColoredIcon(iconDictId, colorsToAvoid);
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
	
	function getPropertyValue(key){
		return helper.getPropertyValue(key);
	}
	
	function getRawPropertyValue(key){
		return helper.getRawPropertyValue(key);
	}
	
}