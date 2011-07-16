package com.soatech.debtcountdown.commands
{
	import com.soatech.debtcountdown.events.PlanEvent;
	import com.soatech.debtcountdown.models.PlanProxy;
	import com.soatech.debtcountdown.models.vo.PlanVO;
	import com.soatech.debtcountdown.services.PlanService;
	
	import org.robotlegs.mvcs.Command;
	
	public class PlanSaveCommand extends Command
	{
		//---------------------------------------------------------------------
		//
		// Properties
		//
		//---------------------------------------------------------------------
		
		[Inject]
		public var event:PlanEvent;

		[Inject]
		public var planProxy:PlanProxy;
		
		[Inject]
		public var planService:PlanService;
		
		//---------------------------------------------------------------------
		//
		// Overridden Methods
		//
		//---------------------------------------------------------------------
		
		/**
		 * 
		 * 
		 */		
		override public function execute():void
		{
			planService.update( event.plan );
			
			planProxy.replacePlan( event.plan );
			
			dispatch( new PlanEvent(PlanEvent.SAVE_SUCCESS, event.plan ) );
		}
	}
}