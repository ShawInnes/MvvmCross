using Cirrious.MvvmCross.Console.Views;
using System;

namespace $rootnamespace$.Views
{
    public class FirstView : MvxConsoleView<FirstViewModel>
    {
        protected override void OnViewModelChanged()
        {
            base.OnViewModelChanged();
            ViewModel.PropertyChanged += (sender, args) => RefreshDisplay();
            RefreshDisplay();
        }

           private void RefreshDisplay()
        {
            System.Console.BackgroundColor = ConsoleColor.Black;
            System.Console.ForegroundColor = ConsoleColor.White;
            System.Console.Clear();

            System.Console.WriteLine("First View");
            System.Console.WriteLine();

            System.Console.ForegroundColor = ConsoleColor.Yellow;

            System.Console.WriteLine("Commands");
            System.Console.WriteLine("========");
            System.Console.WriteLine("B - Back");
            System.Console.WriteLine("Q - Quit");

            System.Console.ForegroundColor = ConsoleColor.White;
        }

        public override bool HandleInput(string input)
        {
            input = input.Trim().ToUpper();

			// insert case/switch statement here
			 
            return base.HandleInput(input);
        }
	}
}
