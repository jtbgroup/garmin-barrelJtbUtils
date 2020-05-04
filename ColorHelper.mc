using Toybox.Graphics as Gfx;
using Toybox.System as Sys;
using Toybox.Math as Mt;

module JTBUtils {

	class ColorHelper {
	
		protected var COLORS_D={
			OPTION_COLOR_WHITE=>Gfx.COLOR_WHITE, 
			OPTION_COLOR_LT_GRAY=>Gfx.COLOR_LT_GRAY, 
			OPTION_COLOR_DK_GRAY=>Gfx.COLOR_DK_GRAY, 
			OPTION_COLOR_BLACK=>Gfx.COLOR_BLACK, 
			OPTION_COLOR_RED=>Gfx.COLOR_RED,
			OPTION_COLOR_DK_RED=>Gfx.COLOR_DK_RED,
			OPTION_COLOR_ORANGE=>Gfx.COLOR_ORANGE, 
			OPTION_COLOR_YELLOW=>Gfx.COLOR_YELLOW, 
			OPTION_COLOR_GREEN=>Gfx.COLOR_GREEN, 
			OPTION_COLOR_DK_GREEN=>Gfx.COLOR_DK_GREEN, 
			OPTION_COLOR_BLUE=>Gfx.COLOR_BLUE, 
			OPTION_COLOR_DK_BLUE=>Gfx.COLOR_DK_BLUE,
			OPTION_COLOR_PURPLE=>Gfx.COLOR_PURPLE, 
			OPTION_COLOR_PINK=>Gfx.COLOR_PINK
		};
	    
	   public function getColorById(colorId){
	    	return COLORS_D.get(colorId);
	    }
	
		/**
		* @param colorToAvoid is an array of colors that can't be returned as random color.
		*/
		public function getRandomColor(colorsToAvoid){
		    return getRandom(colorsToAvoid, false);
		}
		
		public function getRandomColorId(colorsToAvoid){
		    return getRandom(colorsToAvoid, true);
		}
		
		private function getRandom(colorsToAvoid, returnId){
	    	var r = Mt.rand() % COLORS_D.size();
			var color = COLORS_D.get(r);
	    	if(null != colorsToAvoid && colorsToAvoid.indexOf(color) > -1){
	    		return getRandom(colorsToAvoid, returnId);
	    	}
	    	
	    	if(returnId){
	    		return r;
	    	}
	    	return color;
		}
	}
}
