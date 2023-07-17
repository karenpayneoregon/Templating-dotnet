using Microsoft.AspNetCore.Mvc.RazorPages;
using Serilog;

namespace SimpleWebApp.Pages;
public class IndexModel : PageModel
{
    public void OnGet()
    {
        Log.Information("Greetings");
    }
}
