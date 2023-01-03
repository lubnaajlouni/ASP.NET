using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Task2._1._2023.Startup))]
namespace Task2._1._2023
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
