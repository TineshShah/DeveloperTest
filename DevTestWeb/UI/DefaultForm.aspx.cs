﻿using System;
using System.Web.UI.WebControls;

namespace Wescale.DevTestWeb.UI {
    public partial class DefaultForm : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            //_currencyList.SelectedValue = "EUR"; //On pageload default value is removed
        }

        protected void _sendInput_Command(object sender, CommandEventArgs e)
        {
            if (Page.IsValid)//check for page validity
            {
                _selectedName.Text = _nameText.Text;
                _selectedQty.Text = _qtyText.Text;
                _selectedPrice.Text = _priceTxt.Text;
                _selectedCurrency.Text = _currencyList.SelectedValue;
            }
            
        }
    
    }
}