package com.soatech.debtcountdown
{
	
	import com.soatech.debtcountdown.events.AppEvent;
	import com.soatech.debtcountdown.views.AppMediator;
	import com.soatech.debtcountdown.views.DatePickerMediator;
	import com.soatech.debtcountdown.views.DebtEditMediator;
	import com.soatech.debtcountdown.views.DebtSelectMediator;
	import com.soatech.debtcountdown.views.DeleteConfirmMediator;
	import com.soatech.debtcountdown.views.DropDownListMediator;
	import com.soatech.debtcountdown.views.DurationChartMediatorBase;
	import com.soatech.debtcountdown.views.ExpenseEditMediator;
	import com.soatech.debtcountdown.views.ExpenseSelectMediator;
	import com.soatech.debtcountdown.views.IncomeEditMediator;
	import com.soatech.debtcountdown.views.IncomeSelectMediator;
	import com.soatech.debtcountdown.views.InterestChartMediatorBase;
	import com.soatech.debtcountdown.views.PaymentPlanMediator;
	import com.soatech.debtcountdown.views.PlanEditMedaitor;
	import com.soatech.debtcountdown.views.PlanSelectMediator;
	import com.soatech.debtcountdown.views.RunPlanMediator;
	import com.soatech.debtcountdown.views.components.DatePicker;
	import com.soatech.debtcountdown.views.components.DebtEdit;
	import com.soatech.debtcountdown.views.components.DebtSelect;
	import com.soatech.debtcountdown.views.components.DeleteConfirm;
	import com.soatech.debtcountdown.views.components.DropDownList;
	import com.soatech.debtcountdown.views.components.DurationChart;
	import com.soatech.debtcountdown.views.components.ExpenseEdit;
	import com.soatech.debtcountdown.views.components.ExpenseSelect;
	import com.soatech.debtcountdown.views.components.IncomeEdit;
	import com.soatech.debtcountdown.views.components.IncomeSelect;
	import com.soatech.debtcountdown.views.components.InterestChart;
	import com.soatech.debtcountdown.views.components.PaymentPlan;
	import com.soatech.debtcountdown.views.components.PlanEdit;
	import com.soatech.debtcountdown.views.components.PlanSelect;
	import com.soatech.debtcountdown.views.components.RunPlan;
	
	import flash.display.DisplayObjectContainer;
	
	public class PhoneContext extends CoreContext
	{
		//---------------------------------------------------------------------
		//
		// Constructor
		//
		//---------------------------------------------------------------------
		
		/**
		 * 
		 * @param contextView
		 * @param autoStartup
		 * 
		 */		
		public function PhoneContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super(contextView, autoStartup);
		}

		//---------------------------------------------------------------------
		//
		// Overridden Methods
		//
		//---------------------------------------------------------------------
		
		/**
		 * 
		 * 
		 */		
		override public function startup():void
		{
			super.startup();
			
			mediatorMap.mapView( DatePicker, DatePickerMediator );
			mediatorMap.mapView( DebtCountDownPhone, AppMediator );
			mediatorMap.mapView( DebtEdit, DebtEditMediator );
			mediatorMap.mapView( DebtSelect, DebtSelectMediator );
			mediatorMap.mapView( DeleteConfirm, DeleteConfirmMediator );
			mediatorMap.mapView( DropDownList, DropDownListMediator );
			mediatorMap.mapView( DurationChart, DurationChartMediatorBase );
			mediatorMap.mapView( ExpenseEdit, ExpenseEditMediator );
			mediatorMap.mapView( ExpenseSelect, ExpenseSelectMediator );
			mediatorMap.mapView( IncomeEdit, IncomeEditMediator );
			mediatorMap.mapView( IncomeSelect, IncomeSelectMediator );
			mediatorMap.mapView( InterestChart, InterestChartMediatorBase );
			mediatorMap.mapView( PaymentPlan, PaymentPlanMediator );
			mediatorMap.mapView( PlanEdit, PlanEditMedaitor );
			mediatorMap.mapView( PlanSelect, PlanSelectMediator );
			mediatorMap.mapView( RunPlan, RunPlanMediator );
			
			dispatchEvent( new AppEvent( AppEvent.INIT ) );
		}
	}
}