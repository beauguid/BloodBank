using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Guidry.Data;
using Guidry.Business;
using System.Web.UI.WebControls;

public partial class Donation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Guidry.Business.Donation donation = new Guidry.Business.Donation();
        donation.DonorID = (int)Convert.ToInt32(ddlDonor.SelectedValue);
        donation.DonorLocationID = (int)Convert.ToInt32(ddlDonorLocation.SelectedValue);
        donation.BloodGroupID = ddlBloodGroup.SelectedValue;
        donation.BloodTypeID = ddlBloodType.SelectedValue;
        donation.CollectionDate = dtpCollectionDate.SelectedDate;
        if (cbIsTested.Checked)
        {
            donation.Tested = true;
        }
        else
        {
            donation.Tested = false;
        }

        if (Guidry.Business.Donation.Save(donation, 1))
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