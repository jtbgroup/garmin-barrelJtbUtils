using Toybox.Graphics as Gfx;
using Toybox.System as Sys;
using Toybox.Math as Mt;

module JTBUtils {

	class FontHelper {
	
		protected var FONTS_D={
			OPTION_FONT_XTINY=>Gfx.FONT_SYSTEM_XTINY, 
			OPTION_FONT_TINY=>Gfx.FONT_SYSTEM_TINY, 
			OPTION_FONT_SMALL=>Gfx.FONT_SYSTEM_SMALL,
			OPTION_FONT_MEDIUM=>Gfx.FONT_SYSTEM_MEDIUM,
			OPTION_FONT_LARGE=>Gfx.FONT_SYSTEM_LARGE
		};
	    
	   public function getFontById(fontId){
	    	return FONTS_D.get(fontId);
	    }
		
	}
}
