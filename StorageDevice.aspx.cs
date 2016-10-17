using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Guidry.Business;

public partial class StorageDevice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //creates an instance of storage device
        Guidry.Business.StorageDevice sd = new Guidry.Business.StorageDevice();
        //sets properties of object based on values given from form input
        sd.Model = txtModel.Text.Trim();
        sd.Desc = txtDesc.Text.Trim();
        sd.DeviceTypeID = Convert.ToInt32(ddlDeviceType.SelectedValue);
        sd.StorageLocationID = Convert.ToInt32(ddlStorageLocation.SelectedValue);
        sd.Mfg = txtMfg.Text.Trim();
        //sets values to true or false depending on whether the thing is checked
        if (cbInUse.Checked)
        {
            sd.InUse = true;
        }
        else
        {
            sd.InUse = false;
        }

        if (cbDevMonitored.Checked)
        {
            sd.DeviceMonitored = true;
        }
        else
        {
            sd.DeviceMonitored = false;
        }
        //if to see if the object successfully saved
        //if it does, the result label lets the user know
        if (Guidry.Business.StorageDevice.Save(sd, 1))
        {
            lblResult.Text = "Row successfully added";
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