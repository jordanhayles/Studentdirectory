using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Studentdirectory.Startup))]
namespace Studentdirectory
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
