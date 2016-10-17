using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Guidry.Business;

public partial class DeviceType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        StorageDeviceType deviceType = new StorageDeviceType();
        deviceType.TypeName = txtTypeName.Text.Trim();
        deviceType.TypeDesc = txtTypeDesc.Text.Trim();

        if (Guidry.Business.StorageDeviceType.Save(deviceType))
        {
            lblResult.Text = "Row successfully entered!";
        }
        else
        {
            lblResult.Text = "Error";
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {

    }
}