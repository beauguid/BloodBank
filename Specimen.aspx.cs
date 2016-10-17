using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Guidry.Business;

public partial class Specimen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Guidry.Business.Specimen specimen = new Guidry.Business.Specimen();
        specimen.DonationID = Convert.ToInt32(ddlDonationID.SelectedValue);
        specimen.SpecimenTypeID = Convert.ToInt32(ddlSpecimenType.SelectedValue);
        specimen.StorageDeviceID = Convert.ToInt32(ddlStorageDevice.SelectedValue);
        specimen.Volume = Convert.ToDecimal(txtVolume.Text.Trim());
        specimen.StorageDate = dtpStorageDate.SelectedDate;
        if (cbIsDestroyed.Checked)
        {
            specimen.SpecimenDestroyed = true;
        }
        else
        {
            specimen.SpecimenDestroyed = false;
        }

        if (Guidry.Business.Specimen.Save(specimen, 1))
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