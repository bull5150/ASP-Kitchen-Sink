using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ASP_Kitchen_Sink.Startup))]
namespace ASP_Kitchen_Sink
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
