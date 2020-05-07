using Toybox.System as Sys;
using Toybox.Application;

module JTBUtils {
	class PropertiesHelper {

		private function getProperty(key){
			var result = null;
			try{
				result = Application.Properties.getValue(key);
			} catch (e instanceof InvalidKeyException) {
				Sys.println(e.getErrorMessage());
			}
			
			if(result == null){
				Sys.println("resource '" + key + "' undefined");
				return null;
			}
			
			return result;
		}
		
		private function getColorById(id){
			var value =  JTBUtils.getColorById(id);
			return value;
		}	

		public function getPropertyValue(key){
			return getProperty(key);
		}

		public function getPropertyAsColor(key){
			var value = getProperty(key);
			var color =  getColorById(value);
			return color;
		}
		
		function getPropertyAsFont(key){
			var value = getProperty(key);
			var font =  getFontById(value);
			return font;
		}
		
	}
	
	
}
