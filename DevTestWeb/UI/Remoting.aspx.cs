using System.Web.UI.WebControls;
using Wescale.DevTestCommon;


namespace Wescale.DevTestWeb.UI {

    public partial class Remoting : System.Web.UI.Page {
        private int a;
        private int b;

        protected void _sendPing_Command(object sender, CommandEventArgs e) {
            IPingService service = (IPingService)RemotingHelper.GetObject(typeof(IPingService));
            _pingReturn.Text = service.Ping();
        }

        protected void _add_Command(object sender, CommandEventArgs e) {
            if (int.TryParse(_op1.Text, out a) && int.TryParse(_op2.Text, out b)) {
                IMathService service = (IMathService)RemotingHelper.GetObject(typeof(IMathService));
                _addResult.Text = service.Add(a, b).ToString();
            }
        }
        //added Missing mathematical operations
        protected void _sub_Command(object sender, CommandEventArgs e)
        { 
            if (int.TryParse(_op1.Text, out a) && int.TryParse(_op2.Text, out b))
            {
                IMathService service = (IMathService)RemotingHelper.GetObject(typeof(IMathService));
                _addResult.Text = service.Sub(a, b).ToString();
            }
        }
        protected void _mul_Command(object sender, CommandEventArgs e)
        {
            if (int.TryParse(_op1.Text, out a) && int.TryParse(_op2.Text, out b))
            {
                IMathService service = (IMathService)RemotingHelper.GetObject(typeof(IMathService));
                _addResult.Text = service.Mul(a, b).ToString();
            }
        }
        protected void _mod_Command(object sender, CommandEventArgs e)
        {
            if (int.TryParse(_op1.Text, out a) && int.TryParse(_op2.Text, out b))
            {
                IMathService service = (IMathService)RemotingHelper.GetObject(typeof(IMathService));
                _addResult.Text = service.Mod(a, b).ToString();
            }
        }

    }
}