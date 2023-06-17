using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Xrm.Sdk;
using System.ServiceModel;

namespace Myplugins
{
    class TaskCreate : IPlugin
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
                Entity contact = (Entity)context.InputParameters["Target"];


                try
                {
                    // TODO Plug-in business logic goes here. You can access data in the context,
                    // and make calls to the Organization web service using the Dataverse SDK.
                    Entity taskRecord = new Entity("task");
                    taskRecord.Attributes.Add("subject", "Follow up");
                    taskRecord.Attributes.Add("description", "please follow up with contact.");
                    taskRecord.Attributes.Add("scheduledend", DateTime.Now.AddDays(2));
                    taskRecord.Attributes.Add("prioritycode", new OptionSetValue(2));
                    //taskRecord.Attributes.Add("regardingobjectid", new EntityReference("contact",contact.Id));
                    //entity contact = (entity)contect.inputParameters[""];
                    taskRecord.Attributes.Add("regardingobjectid", contact.ToEntityReference());

                    Guid taskGuid = orgService.Create(taskRecord); 
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
