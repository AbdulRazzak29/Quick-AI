using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using OpenAI_API.Completions;
using OpenAI_API;

namespace chartgpt.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HomeController : ControllerBase
    {
        [HttpPost]
        public async Task<IActionResult> GetAIBasedResult(string searchText)
        {
            string APIKey = "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";
            string answer = string.Empty;

            var openai = new OpenAIAPI(APIKey);
            CompletionRequest completion = new CompletionRequest();
            completion.Prompt = searchText;
            completion.Model = OpenAI_API.Models.Model.DavinciText;
            completion.MaxTokens = 200;

            var result = openai.Completions.CreateCompletionAsync(completion);
            foreach (var item in result.Result.Completions)
            {
                answer = item.Text;
            }
            return Ok(answer);
        }
    }
}
