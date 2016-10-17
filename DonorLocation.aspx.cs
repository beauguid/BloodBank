using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Guidry.Business;

public partial class DonorLocation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Guidry.Business.DonorLocation donorLoc = new Guidry.Business.DonorLocation();
        donorLoc.LocationName = txtLocationName.Text.Trim();
        donorLoc.LocationDesc = txtLocationDesc.Text.Trim();
        donorLoc.Add1 = txtAddress1.Text.Trim();
        donorLoc.Add2 = txtAddress2.Text.Trim();
        donorLoc.City = txtCity.Text.Trim();
        donorLoc.State = txtState.Text.Trim();
        donorLoc.ZipCode = txtZip.Text.Trim();
        donorLoc.PointOfContact = txtPointOfContact.Text.Trim();
        donorLoc.Phone = txtPhone.Text.Trim();
        donorLoc.Fax = txtFax.Text.Trim();
        donorLoc.Email = txtEmail.Text.Trim();
        if (cbLocMobile.Checked)
        {
            donorLoc.LocationMobile = true;
        }
        else
        {
            donorLoc.LocationMobile = false;
        }
        if (cbInUse.Checked)
        {
            donorLoc.InUse = true;
        }
        else
        {
            donorLoc.InUse = false;
        }

        if (Guidry.Business.DonorLocation.Save(donorLoc, 1))
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
        Response.Redirect("~/Default.aspx");
    }
}