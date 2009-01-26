﻿// menuRow class
// (cc)2008 01media jungle
// By Jam Zhang
// jam@01media.cn

package {
	import flash.display.MovieClip;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextFieldAutoSize;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Rectangle;
	import flash.desktop.NativeApplication;
	import flash.net.SharedObject;

	import caurina.transitions.Tweener;

	public class menuRow extends MovieClip {
		public static var dragging:Boolean=false;
		static var rows:Array=[];
		var id, rowWidth, rowHeight:int;
		var group:String;

		public function menuRow(w:int, h:int, g:String='default') {
			rowWidth=w;
			rowHeight=h;
			group=g;
			if(rows[g]==undefined)
				rows[g]=new Array();
			id=currentRow.length;
			y=currentY;
			currentRow.push(this);
			addEventListener(Event.ADDED_TO_STAGE, handleInit);

		}

		public function handleInit(event:Event):void {
		}

		public static function clearRows():void {
			rows=[];
		}

		function get currentRow():Array{
			return rows[group];
		}

		function syncWindowSize():void{
			stage.dispatchEvent(new Event(pixusShell.EVENT_SYNC_WINDOW_SIZE)); // Tell Preference Winodw To Sync Size
		}

		function get currentPosition():int{
			return Math.round(y/rowHeight);
		}

		function get currentY():int{
			return id*rowHeight;
		}

		function get maxY():int{
			return (rows[group].length-1)*rowHeight;
		}

	}
}