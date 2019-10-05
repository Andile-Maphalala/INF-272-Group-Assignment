using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Booksmart.Startup))]
namespace Booksmart
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
