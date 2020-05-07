module JTBUtils {
	
	class IconHelper {
		
		var rez = {};
	
		function loadColoredIconRez(iconDictionary){
			rez = iconDictionary;
		}
			
		function getColoredIcon(iconDictId, colorPropertyKey){
			return rez.get(iconDictId).get(JTBUtils.getPropertyValue(colorPropertyKey));
		}
		
		function getRandomColoredIcon(iconDictId, colorPropertyKey, colorsToAvoid){
			var color = JTBUtils.getRandomColorId(colorsToAvoid);
			return rez.get(iconDictId).get(color);
		}
		
	}
}