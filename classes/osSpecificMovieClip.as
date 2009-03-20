﻿// osSpecificMovieClip class
// 2009-03-20
// (cc)2009 codeplay
// By Jam Zhang
// jam@gmail.com

package{
	import flash.display.MovieClip;
	import flash.display.FrameLabel;
	import flash.system.Capabilities;

	public class osSpecificMovieClip extends MovieClip{

		function osSpecificMovieClip():void{
			var bestMatch:FrameLabel=null;
			for each(var l:FrameLabel in currentLabels){
				if(Capabilities.os.toLowerCase().indexOf(l.name.toLowerCase())!=-1)
					bestMatch=l;
			}
			if(bestMatch==null)
				stop();
			else
				this.gotoAndStop(bestMatch);
		}

	}
}