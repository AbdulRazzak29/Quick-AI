using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Xrm.Sdk;
using System.ServiceModel;

namespace Myplugins
{
    public class HelloWorld : IPlugin
    {
        public void Execute(IServiceProvider serviceProvider)
        {
            // Obtain the execution context
            IPluginExecutionContext context = (IPluginExecutionContext)
              serviceProvider.GetService(typeof(IPluginExecutionContext));

            // Obtain the Organization service reference 
            IOrganizationServiceFactory serviceFactory =
              (IOrganizationServiceFactory)serviceProvider.GetService(typeof(IOrganizationServiceFactory));
            IOrganizationService orgService = serviceFactory.CreateOrganizationService(context.UserId);

            // Obtain the Tracing service reference
            ITracingService tracingService =
              (ITracingService)serviceProvider.GetService(typeof(ITracingService));
            if (context.InputParameters.Contains("Target") &&
                context.InputParameters["Target"] is Entity)
            {
                Entity entity = (Entity)context.InputParameters["Target"];


                try
                {
                    // TODO Plug-in business logic goes here. You can access data in the context,
                    // and make calls to the Organization web service using the Dataverse SDK.
                    string firstname = string.Empty;
                    // Read Attribute
                    if (entity.Attributes.Contains("firstname"))
                    {

                        firstname = entity.Attributes["firstname"].ToString();
                    }
                    string lastname = entity.Attributes["lastname"].ToString();

                    //Assign data to attributes

                    entity.Attributes.Add("description", "My Name is " + firstname +" "+ lastname);
                }
                catch (FaultException<OrganizationServiceFault> ex)
                {
                    throw new InvalidPluginExecutionException("The following error occurred in MyPlugin.", ex);
                }
                catch (Exception ex)
                {
                    tracingService.Trace("MyPlugin: error: {0}", ex.ToString());
                    throw;
                }
            }
        }
    }
}
