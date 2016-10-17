using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

using Guidry.Business;
using System.Web.UI.WebControls;

public partial class Donor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //If Not (Request.QueryString("id") Is Nothing) Then - 
        //     request.QueryString gets items from the query string
        //        idNum = Int32.Parse(Request.QueryString("id")) - 
        //        convert the query string to the proper data type
        //    Else
        //        idNum = -1   - or set it to a number that will never 
        //        be a valid value (good for conditional population of 
        //        the data on the page,
        //                     - for example if id <> -1 fill customer 
        //                     record or if id = -1, prepare form for 
        //                     add record functionality
        if (Request.QueryString["donor_id"] != null)
        {

        }

        else
        {

        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Guidry.Business.Donor donor = new Guidry.Business.Donor();
        donor.FirstName = txtFirst.Text.Trim();
        donor.LastName = txtLast.Text.Trim();
        donor.Address1 = txtAddress1.Text.Trim();
        donor.Address2 = txtAddress2.Text.Trim();
        donor.City = txtCity.Text.Trim();
        donor.StateID = txtState.Text.Trim();
        donor.ZipCode = txtZip.Text.Trim();
        donor.Phone = txtPhone.Text.Trim();
        donor.Email = txtEmail.Text.Trim();
        if (cbCanContact.Checked)
        {
            donor.CanContact = true;
        }
        else
        {
            donor.CanContact = false;
        }
        //1, txtFirst, txtLast, txtAddress1, txtAddress2, txtCity, txtState, txtZip, txtPhone, txtEmail, cbCanContact, 1
        if (Guidry.Business.Donor.Save(donor, 1))
        {
            lblResult.Text = "Row successfully entered!";
        }
        else
        {
            lblResult.Text = "Error";
        }
    }
}