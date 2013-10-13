using System;
using Cirrious.MvvmCross.ViewModels;
using Cirrious.MvvmCross.Console.Platform;

namespace $rootnamespace$
{
    public class Setup
           : MvxConsoleSetup
    {
        protected override IMvxApplication CreateApp()
        {
            var app = new Core.App();
            return app;
        }
    }
}
