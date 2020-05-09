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
			OPTION_FONT_LARGE=>Gfx.FONT_SYSTEM_LARGE,
			OPTION_FONT_NUMBER_MILD=>Gfx.FONT_SYSTEM_NUMBER_MILD,
			OPTION_FONT_NUMBER_MEDIUM=>Gfx.FONT_SYSTEM_NUMBER_MEDIUM,
			OPTION_FONT_NUMBER_HOT=>Gfx.FONT_SYSTEM_NUMBER_HOT,
			OPTION_FONT_NUMBER_THAI_HOT=>Gfx.FONT_SYSTEM_NUMBER_THAI_HOT,
		};
	    
	   public function getFontById(fontId){
	    	return FONTS_D.get(fontId);
	    }
		
	}
}
