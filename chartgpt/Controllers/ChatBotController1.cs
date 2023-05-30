using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Net.Http.Headers;
namespace chartgpt.Controllers
{
    public class ChatBotController1 : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

    }
}

