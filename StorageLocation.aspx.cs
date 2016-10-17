using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Guidry.Business;
using Guidry.Data;

public partial class StorageLocation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Guidry.Business.StorageLocation sl = new Guidry.Business.StorageLocation();
        sl.Add1 = txtAddress1.Text.Trim();
        sl.Add2 = txtAddress2.Text.Trim();
        sl.City = txtCity.Text.Trim();
        sl.Desc = txtLocationDesc.Text.Trim();
        sl.Email = txtEmail.Text.Trim();
        sl.Fax = txtFax.Text.Trim();

        sl.Name = txtLocationName.Text.Trim();
        sl.Phone = txtPhone.Text.Trim();
        sl.PointOfContact = txtPointOfContact.Text.Trim();
        sl.StateID = txtState.Text.Trim();
        sl.ZipCode = txtZip.Text.Trim();

        if (cbInUse.Checked)
        {
            sl.InUse = true;
        }
        else
        {
            sl.InUse = false;
        }

        if (Guidry.Business.StorageLocation.Save(sl, 1))
        {
            lblResult.Text = "Row added succesfully";
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