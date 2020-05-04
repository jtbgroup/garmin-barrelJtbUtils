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
			var value = getProperty(key);
			if(key.find("PROP_COLOR") != null){
				var color =  getColorById(value);
			//	Sys.println(key + " => "+value+" => "+color);
				return color;
			}
			
			//Sys.println(key + " => "+ value);
			return value;
		}
		
		public function getRawPropertyValue(key){
			return getProperty(key);
		}
	}
	
	
}
