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
			OPTION_COLOR_PINK=>Gfx.COLOR_PINK,
			//16 bits colors
			OPTION_COLOR_BLUE_0x0055AA=>0x0055AA,
			OPTION_COLOR_BLUE_0x000055=>0x000055,
			OPTION_COLOR_BLUE_0x00FFFF=>0x00FFFF,
			OPTION_COLOR_PURPLE_0xAA55FF=>0xAA55FF,
			OPTION_COLOR_PURPLE_0x550055=>0x550055,
			OPTION_COLOR_ORANGE_0xFFAAAA=>0xFFAAAA,
			OPTION_COLOR_YELLOW_0xFFFFAA=>0xFFFFAA,
			OPTION_COLOR_GREEN_0xAAFFAA=>0xAAFFAA,
			OPTION_COLOR_GREEN_0x005555=>0x005555,
			OPTION_COLOR_RED_0xFF0055=>0xFF0055,
			OPTION_COLOR_BROWN_0x550000=>0x550000,
			OPTION_COLOR_PINK_0xFF00AA=>0xFF00AA,
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
		
		/**
		* get a random color between the basic 8 bits colors
		*/
		private function getRandom(colorsToAvoid, returnId){
	    	var r = Mt.rand() % 14;
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
