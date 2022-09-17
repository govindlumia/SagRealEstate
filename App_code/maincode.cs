using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Net.Mail;

/// <summary>
/// Summary description for maincode
/// </summary>
public class maincode
{
    string con_str = ConfigurationManager.ConnectionStrings["SlickTicket"].ConnectionString;
    SqlCommand objCommand;
    SqlConnection objConnection;
    SqlDataAdapter objDataAdapter;
    SqlDataReader dataReader;
    DataSet objDataSet;




    public maincode()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    private string _plotlocation;
         public string plotlocation
    {
        get
        {
            return _plotlocation;
        }
        set
        {
            _plotlocation = value;
        }
    }
    private string _plottype;
         public string plottype
    {
        get
        {
            return _plottype;
        }
        set
        {
            _plottype = value;
        }
    }
    private string _cancel_reason;
    public string cancel_reason
    {
        get
        {
            return _cancel_reason;
        }
        set
        {
            _cancel_reason = value;
        }
    }
    private string _through;
     public string through
    {
        get
        {
            return _through;
        }
        set
        {
            _through = value;
        }
    }
    private string _Invoice_no;
    public string Invoice_no
    {
        get
        {
            return _Invoice_no;
        }
        set
        {
            _Invoice_no = value;
        }
    }

    private string _emi_Invoice_no;
    public string emi_Invoice_no
    {
        get
        {
            return _emi_Invoice_no;
        }
        set
        {
            _emi_Invoice_no = value;
        }
    }
   private DateTime _to_date;
   public DateTime to_date
    {
        get
        {
            return _to_date;
        }
        set
        {
            _to_date = value;
        }
    }
   private string _n_block;
   public string n_block
   {
       get
       {
           return _n_block;
       }
       set
       {
           _n_block = value;
       }
   }


   private string _n_plot;
   public string n_plot
   {
       get
       {
           return _n_plot;
       }
       set
       {
           _n_plot = value;
       }
   }



   private string _n_project;
   public string n_project
   {
       get
       {
           return _n_project;
       }
       set
       {
           _n_project = value;
       }
   }

   private DateTime _agr_date;
   public DateTime agr_date
   {
       get
       {
           return _agr_date;
       }
       set
       {
           _agr_date = value;
       }
   }

   private string _p_plot;
   public string p_plot
   {
       get
       {
           return _p_plot;
       }
       set
       {
           _p_plot = value;
       }
   }


   private string _p_block;
   public string p_block
   {
       get
       {
           return _p_block;
       }
       set
       {
           _p_block = value;
       }
   }

   private string _p_project;
   public string p_project
   {
       get
       {
           return _p_project;
       }
       set
       {
           _p_project = value;
       }
   }


   private DateTime _due_date;
   public DateTime due_date
   {
       get
       {
           return _due_date;
       }
       set
       {
           _due_date = value;
       }
   }
   private DateTime _nxt_remind_date;
   public DateTime nxt_remind_date
   {
       get
       {
           return _nxt_remind_date;
       }
       set
       {
           _nxt_remind_date = value;
       }
   }
   private string _custome;
   public string custome
   {
       get
       {
           return _custome;
       }
       set
       {
           _custome = value;
       }
   }

   private string _CustomerId;
         public string CustomerId
   {
       get
       {
           return _CustomerId;
       }
       set
       {
           _CustomerId = value;
       }
   }
   private string _Feedback;
   public string Feedback
   {
       get
       {
           return _Feedback;
       }
       set
       {
           _Feedback = value;
       }
   }

     private string _discount_amount;
   public string discount_amount
   {
       get
       {
           return _discount_amount;
       }
       set
       {
           _discount_amount = value;
       }
   }
   private string _four_vehicle_reg_no;
   public string four_vehicle_reg_no
   {
       get
       {
           return _four_vehicle_reg_no;
       }
       set
       {
           _four_vehicle_reg_no = value;
       }
   }

   private string _four_vehicle_name;
   public string four_vehicle_name
   {
       get
       {
           return _four_vehicle_name;
       }
       set
       {
           _four_vehicle_name = value;
       }
   }


   private string _four_no_of_wheelers;
   public string four_no_of_wheelers
   {
       get
       {
           return _four_no_of_wheelers;
       }
       set
       {
           _four_no_of_wheelers = value;
       }
   }

   private string _two_vehicle_reg_no;
   public string two_vehicle_reg_no
   {
       get
       {
           return _two_vehicle_reg_no;
       }
       set
       {
           _two_vehicle_reg_no = value;
       }
   }

   private string _two_vehicle_name;
   public string two_vehicle_name
   {
       get
       {
           return _two_vehicle_name;
       }
       set
       {
           _two_vehicle_name = value;
       }
   }


   private string _two_wheelers;
   public string two_wheelers
   {
       get
       {
           return _two_wheelers;
       }
       set
       {
           _two_wheelers = value;
       }
   }


   private string _Computer_Table;
   public string Computer_Table
   {
       get
       {
           return _Computer_Table;
       }
       set
       {
           _Computer_Table = value;
       }
   }

   private string _Teapoy;
   public string Teapoy
   {
       get
       {
           return _Teapoy;
       }
       set
       {
           _Teapoy = value;
       }
   }
   private string _Almari;
   public string Almari
   {
       get
       {
           return _Almari;
       }
       set
       {
           _Almari = value;
       }
   }
   private string _Tables;
   public string Tables
   {
       get
       {
           return _Tables;
       }
       set
       {
           _Tables = value;
       }
   }
   private string _Chairs;
   public string Chairs
   {
       get
       {
           return _Chairs;
       }
       set
       {
           _Chairs = value;
       }
   }


   private string _Calculators;
   public string Calculators
   {
       get
       {
           return _Calculators;
       }
       set
       {
           _Calculators = value;
       }
   }

   private string _Landline_Phones;
   public string Landline_Phones
   {
       get
       {
           return _Landline_Phones;
       }
       set
       {
           _Landline_Phones = value;
       }
   }

   private string _Cell_Phones;
   public string Cell_Phones
   {
       get
       {
           return _Cell_Phones;
       }
       set
       {
           _Cell_Phones = value;
       }
   }
   private string _Tablets;
   public string Tablets
   {
       get
       {
           return _Tablets;
       }
       set
       {
           _Tablets = value;
       }
   }

   private string _stationery_items;
   public string stationery_items
   {
       get
       {
           return _stationery_items;
       }
       set
       {
           _stationery_items = value;
       }
   }
   private string _projectors;
   public string projectors
   {
       get
       {
           return _projectors;
       }
       set
       {
           _projectors = value;
       }
   }
   private string _laptops;
   public string laptops
   {
       get
       {
           return _laptops;
       }
       set
       {
           _laptops = value;
       }
   }

   private string _computers;
   public string computers
   {
       get
       {
           return _computers;
       }
       set
       {
           _computers = value;
       }
   }
     private string _employee;
   public string employee
   {
       get
       {
           return _employee;
       }
       set
       {
           _employee = value;
       }
   }
   private string _Customer_name;
   public string Customer_name
   {
       get
       {
           return _Customer_name;
       }
       set
       {
           _Customer_name = value;
       }
   }
    private DateTime _from_date;
    public DateTime from_date
    {
        get
        {
            return _from_date;
        }
        set
        {
            _from_date = value;
        }
    }

    private string _mode_pay;
    public string mode_pay
    {
        get
        {
            return _mode_pay;
        }
        set
        {
            _mode_pay = value;
        }
    }

    private string _Branch_Name;
    public string Branch_Name
    {
        get
        {
            return _Branch_Name;
        }
        set
        {
            _Branch_Name = value;
        }
    }





    private string _agent_name;
    public string agent_name
    {
        get
        {
            return _agent_name;
        }
        set
        {
            _agent_name = value;
        }
    }

    private string _search_value;
 public string search_value
    {
        get
        {
            return _search_value;
        }
        set
        {
            _search_value = value;
        }
    }
    private string _mobile_no;
    public string mobile_no
    {
        get
        {
            return _mobile_no;
        }
        set
        {
            _mobile_no = value;
        }
    }

    private DateTime _doj;
    public DateTime doj
    {
        get
        {
            return _doj;
        }
        set
        {
            _doj = value;
        }
    }


    private string _address;
    public string address
    {
        get
        {
            return _address;
        }
        set
        {
            _address = value;
        }
    }


    private string _created_by;
    public string created_by
    {
        get
        {
            return _created_by;
        }
        set
        {
            _created_by = value;
        }
    }
    private DateTime _created_on;
    public DateTime created_on
    {
        get
        {
            return _created_on;
        }
        set
        {
            _created_on = value;
        }
    }
    private string _modify_by;
    public string modify_by
    {
        get
        {
            return _modify_by;
        }
        set
        {
            _modify_by = value;
        }
    }
    private DateTime _modify_on;
    public DateTime modify_on
    {
        get
        {
            return _modify_on;
        }
        set
        {
            _modify_on = value;
        }
    }


    private string _flag;
    public string flag
    {
        get
        {
            return _flag;
        }
        set
        {
            _flag = value;
        }
    }

    private string _commision;
    public string commision
    {
        get
        {
            return _commision;
        }
        set
        {
            _commision = value;
        }
    }


    // propery for new_project page



    private string _project_id;
    public string project_id
    {
        get
        {
            return _project_id;
        }
        set
        {
            _project_id = value;
        }
    }


    private string _project_name;
    public string project_name
    {
        get
        {
            return _project_name;
        }
        set
        {
            _project_name = value;
        }
    }

    private string _project_location;
    public string project_location
    {
        get
        {
            return _project_location;
        }
        set
        {
            _project_location = value;
        }
    }


    private string _no_of_plot;
    public string no_of_plot
    {
        get
        {
            return _no_of_plot;
        }
        set
        {
            _no_of_plot = value;
        }
    }


    private string _Company;
    public string Company
    {
        get
        {
            return _Company;
        }
        set
        {
            _Company = value;
        }
    }

    private string _project_status;
    public string project_status
    {
        get
        {
            return _project_status;
        }
        set
        {
            _project_status = value;
        }
    }


    private string _agent_status;
    public string agent_status
    {
        get
        {
            return _agent_status;
        }
        set
        {
            _agent_status = value;
        }
    }


    // property for project_detail_insert



    private string _s_no;
         public string s_no
    {
        get
        {
            return _s_no;
        }
        set
        {
            _s_no = value;
        }
    }

    private string _plot_no;
    public string plot_no
    {
        get
        {
            return _plot_no;
        }
        set
        {
            _plot_no = value;
        }
    }


    private string _Total_plot_area;
    public string Total_plot_area
    {
        get
        {
            return _Total_plot_area;
        }
        set
        {
            _Total_plot_area = value;
        }
    }



    private string _plot_size;
    public string plot_size
    {
        get
        {
            return _plot_size;
        }
        set
        {
            _plot_size = value;
        }
    }

    private string _plc;
    public string plc
    {
        get
        {
            return _plc;
        }
        set
        {
            _plc = value;
        }
    }

    private string _rate_per_sqr;
    public string rate_per_sqr
    {
        get
        {
            return _rate_per_sqr;
        }
        set
        {
            _rate_per_sqr = value;
        }
    }

    private string _specification;
    public string specification
    {
        get
        {
            return _specification;
        }
        set
        {
            _specification = value;
        }
    }
    private string _chequeno;
    public string chequeno
    {
        get
        {
            return _chequeno;
        }
        set
        {
            _chequeno = value;
        }
    }
    private string _bank_branch;
    public string bank_branch
    {
        get
        {
            return _bank_branch;
        }
        set
        {
            _bank_branch = value;
        }
    }
    private string _plot_cost;
    public string plot_cost
    {
        get
        {
            return _plot_cost;
        }
        set
        {
            _plot_cost = value;
        }
    }

 

    private string _rate_per_sq;
    public string rate_per_sq
    {
        get
        {
            return _rate_per_sq;
        }
        set
        {
            _rate_per_sq = value;
        }
    }


    private string _total_plot_area;
    public string total_plot_area
    {
        get
        {
            return _total_plot_area;
        }
        set
        {
            _total_plot_area = value;
        }
    }


    private DateTime _sale_date;
    public DateTime sale_date
    {
        get
        {
            return _sale_date;
        }
        set
        {
            _sale_date = value;
        }
    }

    private string _customer_id;
    public string customer_id
    {
        get
        {
            return _customer_id;
        }
        set
        {
            _customer_id = value;
        }
    }


    private string _booking_amount;
    public string booking_amount
    {
        get
        {
            return _booking_amount;
        }
        set
        {
            _booking_amount = value;
        }
    }


    private string _rest_amount;
    public string rest_amount
    {
        get
        {
            return _rest_amount;
        }
        set
        {
            _rest_amount = value;
        }
    }


    private string _no_of_emi;
    public string no_of_emi
    {
        get
        {
            return _no_of_emi;
        }
        set
        {
            _no_of_emi = value;
        }
    }


    private string _emi_amount;
    public string emi_amount
    {
        get
        {
            return _emi_amount;
        }
        set
        {
            _emi_amount = value;
        }
    }


    private string _mode_of_payment;
    public string mode_of_payment
    {
        get
        {
            return _mode_of_payment;
        }
        set
        {
            _mode_of_payment = value;
        }
    }
    private string _block;
    public string block
    {
        get
        {
            return _block;
        }
        set
        {
            _block = value;
        }
    }

    private string _cash;
    public string cash
    {
        get
        {
            return _cash;
        }
        set
        {
            _cash = value;
        }
    }

    private string _cheque_no;
    public string cheque_no
    {
        get
        {
            return _cheque_no;
        }
        set
        {
            _cheque_no = value;
        }
    }


    private string _bank_and_branch;
    public string bank_and_branch
    {
        get
        {
            return _bank_and_branch;
        }
        set
        {
            _bank_and_branch = value;
        }
    }
    private string _com_rate;
    public string com_rate
    {
        get
        {
            return _com_rate;
        }
        set
        {
            _com_rate = value;
        }
    }

    private string _total_paid;
    public string total_paid
    {
        get
        {
            return _total_paid;
        }
        set
        {
            _total_paid = value;
        }
    }

    private string _registrant_name;
    public string registrant_name
    {
        get
        {
            return _registrant_name;
        }
        set
        {
            _registrant_name = value;
        }
    }


    private string _father_name;
    public string father_name
    {
        get
        {
            return _father_name;
        }
        set
        {
            _father_name = value;
        }
    }
    private string _emp_id;
     public string emp_id
    {
        get
        {
            return _emp_id;
        }
        set
        {
            _emp_id = value;
        }
    }

     private string _amount;
     public string amount
     {
         get
         {
             return _amount;
         }
         set
         {
             _amount = value;
         }
     }


     private string _sno;
         public string sno
     {
         get
         {
             return _sno;
         }
         set
         {
             _sno = value;
         }
     }
         private string _status;
         public string status
         {
             get
             {
                 return _status;
             }
             set
             {
                 _status = value;
             }
         }



         private DateTime _emi_date;
         public DateTime emi_date
         {
             get
             {
                 return _emi_date;
             }
             set
             {
                 _emi_date = value;
             }
         }
         private string _agent_sal;
    public string agent_sal
         {
             get
             {
                 return _agent_sal;
             }
             set
             {
                 _agent_sal = value;
             }
         }

         private string _agent_id;
         public string agent_id
         {
             get
             {
                 return _agent_id;
             }
             set
             {
                 _agent_id = value;
             }
         }
     private string _plot_width;
         public string plot_width
         {
             get
             {
                 return _plot_width;
             }
             set
             {
                 _plot_width = value;
             }
         }

        
         private string _commission;
         public string commission
         {
             get
             {
                 return _commission;
             }
             set
             {
                 _commission = value;
             }
         }
         private string _m_salary;
         public string m_salary
         {
             get
             {
                 return _m_salary;
             }
             set
             {
                 _m_salary = value;
             }
         }


         private string _t_salary;
         public string t_salary
         {
             get
             {
                 return _t_salary;
             }
             set
             {
                 _t_salary = value;
             }
         }


         private string _mode_of_pay;
         public string mode_of_pay
         {
             get
             {
                 return _mode_of_pay;
             }
             set
             {
                 _mode_of_pay = value;
             }
         }


         private string _Bank_Branch;
         public string Bank_Branch
         {
             get
             {
                 return _Bank_Branch;
             }
             set
             {
                 _Bank_Branch = value;
             }
         }

         //,  ,  ,  , Remarks




         private string _Remarks;
         public string Remarks
         {
             get
             {
                 return _Remarks;
             }
             set
             {
                 _Remarks = value;
             }
         }

         private string _Product_Cost;
         public string Product_Cost
         {
             get
             {
                 return _Product_Cost;
             }
             set
             {
                 _Product_Cost = value;
             }
         }

         private string _Product_Name;
         public string Product_Name
         {
             get
             {
                 return _Product_Name;
             }
             set
             {
                 _Product_Name = value;
             }
         }
      

         private string _Absent;
         public string Absent
         {
             get
             {
                 return _Absent;
             }
             set
             {
                 _Absent = value;
             }
         }


         private string _Leave;
         public string Leave
         {
             get
             {
                 return _Leave;
             }
             set
             {
                 _Leave = value;
             }
         }

         private string _L_Without_Pay;
         public string L_Without_Pay
         {
             get
             {
                 return _L_Without_Pay;
             }
             set
             {
                 _L_Without_Pay = value;
             }
         }
         private string _Registration_Fee;
         public string Registration_Fee
         {
             get
             {
                 return _Registration_Fee;
             }
             set
             {
                 _Registration_Fee = value;
             }
         }
         private string _coo;
         public string coo
         {
             get
             {
                 return _coo;
             }
             set
             {
                 _coo = value;
             }
         }
         private string _idproof;
         public string idproof
         {
             get
             {
                 return _idproof;
             }
             set
             {
                 _idproof = value;
             }
         }

         private string _idno;
         public string idno
         {
             get
             {
                 return _idno;
             }
             set
             {
                 _idno = value;
             }
         }


         private string _idn;
         public string idn
         {
             get
             {
                 return _idn;
             }
             set
             {
                 _idn = value;
             }
         }


         private string _idproo;
         public string idproo
         {
             get
             {
                 return _idproo;
             }
             set
             {
                 _idproo = value;
             }
         }
         private string _mobile3;
         public string mobile3
         {
             get
             {
                 return _mobile3;
             }
             set
             {
                 _mobile3 = value;
             }
         }

         private string _father3;
         public string father3
         {
             get
             {
                 return _father3;
             }
             set
             {
                 _father3 = value;
             }
         }
         private string _addres;
         public string addres
         {
             get
             {
                 return _addres;
             }
             set
             {
                 _addres = value;
             }
         }


         private string _mobil;
         public string mobil
         {
             get
             {
                 return _mobil;
             }
             set
             {
                 _mobil = value;
             }
         }

         private string _fathe;
         public string fathe
         {
             get
             {
                 return _fathe;
             }
             set
             {
                 _fathe = value;
             }
         }


         private string _customer3;
         public string customer3
         {
             get
             {
                 return _customer3;
             }
             set
             {
                 _customer3 = value;
             }
         }
         
         private string _pancard;
         public string pancard
         {
             get
             {
                 return _pancard;
             }
             set
             {
                 _pancard = value;
             }
         }

         private string _pancar;
         public string pancar
         {
             get
             {
                 return _pancar;
             }
             set
             {
                 _pancar = value;
             }
         }


         private string _co;
         public string co
         {
             get
             {
                 return _co;
             }
             set
             {
                 _co = value;
             }
         }
         private DateTime _registration_date;
         public DateTime registration_date
         {
             get
             {
                 return _registration_date;
             }
             set
             {
                 _registration_date = value;
             }
         }
         private string _Documentno;
         public string Documentno
         {
             get
             {
                 return _Documentno;
             }
             set
             {
                 _Documentno = value;
             }
         }
         private string _collectedamount;
         public string collectedamount
         {
             get
             {
                 return _collectedamount;
             }
             set
             {
                 _collectedamount = value;
             }
         }
         private string _Email;
         public string Email
         {
             get
             {
                 return _Email;
             }
             set
             {
                 _Email = value;
             }
         }
         private string _T_Working_Day;
         public string T_Working_Day
         {
             get
             {
                 return _T_Working_Day;
             }
             set
             {
                 _T_Working_Day = value;
             }
         }


         private string _plot_length;
    public string plot_length
         {
             get
             {
                 return _plot_length;
             }
             set
             {
                 _plot_length = value;
             }
         }

    public SqlDataReader emi_view_select_print(string sno)
         {
             objConnection = new SqlConnection(con_str);
             objConnection.ConnectionString = con_str;
             objConnection.Open();
             objCommand = new SqlCommand();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "emi_view_select_print";
             objCommand.Parameters.AddWithValue("@sno", sno);

           //  objCommand.Parameters.AddWithValue("@flag", flag);
             objCommand.Connection = objConnection;
             dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
             objCommand.Dispose();
             objCommand = null;
             objConnection = null;
             return dataReader;
         }
    public string transport_insert(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "transport_insert";

            objCommand.Parameters.AddWithValue("@s_no", s_no);
            objCommand.Parameters.AddWithValue("@two_wheelers", two_wheelers);
            objCommand.Parameters.AddWithValue("@two_vehicle_name", two_vehicle_name);
            objCommand.Parameters.AddWithValue("@two_vehicle_reg_no", two_vehicle_reg_no);
            objCommand.Parameters.AddWithValue("@four_no_of_wheelers", four_no_of_wheelers);
            objCommand.Parameters.AddWithValue("@four_vehicle_name", four_vehicle_name);
            objCommand.Parameters.AddWithValue("@four_vehicle_reg_no", four_vehicle_reg_no);

            objCommand.Parameters.AddWithValue("@flag", flag);
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }


    public string company_assets_insert(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "company_assets_insert";

            objCommand.Parameters.AddWithValue("@s_no", s_no);
            objCommand.Parameters.AddWithValue("@computers", computers);
            objCommand.Parameters.AddWithValue("@laptops", laptops);
            objCommand.Parameters.AddWithValue("@projectors", projectors);
            objCommand.Parameters.AddWithValue("@Tablets", Tablets);
            objCommand.Parameters.AddWithValue("@Cell_Phones", Cell_Phones);
            objCommand.Parameters.AddWithValue("@Landline_Phones", Landline_Phones);
            objCommand.Parameters.AddWithValue("@Calculators", Calculators);
            objCommand.Parameters.AddWithValue("@Chairs", Chairs);
            objCommand.Parameters.AddWithValue("@Tables", Tables);
            objCommand.Parameters.AddWithValue("@Almari", Almari);
            objCommand.Parameters.AddWithValue("@Teapoy", Teapoy);
            objCommand.Parameters.AddWithValue("@Computer_Table", Computer_Table);
            objCommand.Parameters.AddWithValue("@two_wheelers", two_wheelers);
            objCommand.Parameters.AddWithValue("@two_vehicle_name", two_vehicle_name);
            objCommand.Parameters.AddWithValue("@two_vehicle_reg_no", two_vehicle_reg_no);
            objCommand.Parameters.AddWithValue("@four_no_of_wheelers", four_no_of_wheelers);
            objCommand.Parameters.AddWithValue("@four_vehicle_name", four_vehicle_name);
            objCommand.Parameters.AddWithValue("@four_vehicle_reg_no", four_vehicle_reg_no);
            objCommand.Parameters.AddWithValue("@stationery_items", stationery_items);

        

            objCommand.Parameters.AddWithValue("@flag", flag);
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }
         public SqlDataReader sale_view_select_print(string sno)
         {
             objConnection = new SqlConnection(con_str);
             objConnection.ConnectionString = con_str;
             objConnection.Open();
             objCommand = new SqlCommand();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "sale_view_select_print";
             objCommand.Parameters.AddWithValue("@sno", sno);

           //  objCommand.Parameters.AddWithValue("@flag", flag);
             objCommand.Connection = objConnection;
             dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
             objCommand.Dispose();
             objCommand = null;
             objConnection = null;
             return dataReader;
         }

         public string dcr_detail_insert(maincode obj_main)
         {
             using (SqlConnection objConnection = new SqlConnection(con_str))
             {

                 SqlCommand objCommand;
                 objCommand = objConnection.CreateCommand();
                 objConnection.Open();
                 objCommand.CommandType = CommandType.StoredProcedure;
                 objCommand.CommandTimeout = 0;
                 objCommand.CommandText = "dcr_detail_insert";

                 objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
                 objCommand.Parameters.AddWithValue("@Agent_name", agent_name);
                 objCommand.Parameters.AddWithValue("@Customer_name", Customer_name);
                 objCommand.Parameters.AddWithValue("@mobile_no", mobile_no);
                 objCommand.Parameters.AddWithValue("@Feedback", Feedback);
                 objCommand.Parameters.AddWithValue("@nxt_remind_date", nxt_remind_date);
                 objCommand.Parameters.AddWithValue("@created_by", created_by);

                 dataReader = objCommand.ExecuteReader();
                 string j = "0";
                 if (dataReader.Read())
                 {
                     j = dataReader[0].ToString();
                 }
                 objCommand.Dispose();
                 objConnection.Close();
                 objConnection.Dispose();
                 dataReader.Close();
                 return j;

             }
         }

         public string Agent_Attendance_insert(maincode obj_main)
         {
             using (SqlConnection objConnection = new SqlConnection(con_str))
             {

                 SqlCommand objCommand;
                 objCommand = objConnection.CreateCommand();
                 objConnection.Open();
                 objCommand.CommandType = CommandType.StoredProcedure;
                 objCommand.CommandTimeout = 0;
                 objCommand.CommandText = "Agent_Attendance_insert";
                 objCommand.Parameters.AddWithValue("@sno", sno);

                 objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
                 objCommand.Parameters.AddWithValue("@S_Date", doj);
                 objCommand.Parameters.AddWithValue("@Agent_name", agent_name);
                 objCommand.Parameters.AddWithValue("@T_Working_Day", T_Working_Day);
                 objCommand.Parameters.AddWithValue("@Leave", Leave);
                 objCommand.Parameters.AddWithValue("@L_Without_Pay", L_Without_Pay);
                 objCommand.Parameters.AddWithValue("@Absent", Absent);
                 objCommand.Parameters.AddWithValue("@flag", flag);
                 objCommand.Parameters.AddWithValue("@created_by", created_by);

                 dataReader = objCommand.ExecuteReader();
                 string j = "0";
                 if (dataReader.Read())
                 {
                     j = dataReader[0].ToString();
                 }
                 objCommand.Dispose();
                 objConnection.Close();
                 objConnection.Dispose();
                 dataReader.Close();
                 return j;

             }
         }


         public string Expense_Entry_Insert(maincode obj_main)
         {
             using (SqlConnection objConnection = new SqlConnection(con_str))
             {

                 SqlCommand objCommand;
                 objCommand = objConnection.CreateCommand();
                 objConnection.Open();
                 objCommand.CommandType = CommandType.StoredProcedure;
                 objCommand.CommandTimeout = 0;
                 objCommand.CommandText = "Expense_Entry_Insert";
                 objCommand.Parameters.AddWithValue("@sno", sno);
                // objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
                 objCommand.Parameters.AddWithValue("@created_by", created_by);
                 objCommand.Parameters.AddWithValue("@doj", doj);
                 objCommand.Parameters.AddWithValue("@Product_Name", Product_Name);
                 objCommand.Parameters.AddWithValue("@Product_Cost", Product_Cost);
                 objCommand.Parameters.AddWithValue("@Remarks", Remarks);
                 objCommand.Parameters.AddWithValue("@through", through);
                 objCommand.Parameters.AddWithValue("@bank_and_branch", bank_and_branch);
                 objCommand.Parameters.AddWithValue("@cheque_no", cheque_no);
                // objCommand.Parameters.AddWithValue("@cash", cash);
                 objCommand.Parameters.AddWithValue("@mode_of_payment", mode_of_payment);
                objCommand.Parameters.AddWithValue("@flag", flag);


                 dataReader = objCommand.ExecuteReader();
                 string j = "0";
                 if (dataReader.Read())
                 {
                     j = dataReader[0].ToString();
                 }
                 objCommand.Dispose();
                 objConnection.Close();
                 objConnection.Dispose();
                 dataReader.Close();
                 return j;

             }
         }

         public SqlDataReader Emi_view_select_update(string sno)
         {
             objConnection = new SqlConnection(con_str);
             objConnection.ConnectionString = con_str;
             objConnection.Open();
             objCommand = new SqlCommand();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "Emi_view_select_update";
             objCommand.Parameters.AddWithValue("@sno", sno);

           //  objCommand.Parameters.AddWithValue("@flag", flag);
             objCommand.Connection = objConnection;
             dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
             objCommand.Dispose();
             objCommand = null;
             objConnection = null;
             return dataReader;
         }
         public SqlDataReader sale_view_select_update(string sno)
         {
             objConnection = new SqlConnection(con_str);
             objConnection.ConnectionString = con_str;
             objConnection.Open();
             objCommand = new SqlCommand();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "sale_view_select_update";
             objCommand.Parameters.AddWithValue("@sno", sno);

           //  objCommand.Parameters.AddWithValue("@flag", flag);
             objCommand.Connection = objConnection;
             dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
             objCommand.Dispose();
             objCommand = null;
             objConnection = null;
             return dataReader;
         }

         public SqlDataReader plots_details_select_update(string s_no)
         {
             objConnection = new SqlConnection(con_str);
             objConnection.ConnectionString = con_str;
             objConnection.Open();
             objCommand = new SqlCommand();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "plots_details_select_update";
             objCommand.Parameters.AddWithValue("@s_no", s_no);

           //  objCommand.Parameters.AddWithValue("@flag", flag);
             objCommand.Connection = objConnection;
             dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
             objCommand.Dispose();
             objCommand = null;
             objConnection = null;
             return dataReader;
         }
         public SqlDataReader Status_select()
         {
             objConnection = new SqlConnection(con_str);
             objConnection.ConnectionString = con_str;
             objConnection.Open();
             objCommand = new SqlCommand();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "Status_select";
             // objCommand.Parameters.AddWithValue("@flag", flag);
             objCommand.Connection = objConnection;
             dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
             objCommand.Dispose();
             //objConnection.Close();
             objCommand = null;
             objConnection = null;
             return dataReader;

         }
         public SqlDataReader role_select()
         {
             objConnection = new SqlConnection(con_str);
             objConnection.ConnectionString = con_str;
             objConnection.Open();
             objCommand = new SqlCommand();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "role_select";
             // objCommand.Parameters.AddWithValue("@flag", flag);
             objCommand.Connection = objConnection;
             dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
             objCommand.Dispose();
             //objConnection.Close();
             objCommand = null;
             objConnection = null;
             return dataReader;

         }
         public SqlDataReader new_projects_update_select(string project_id)
         {
             objConnection = new SqlConnection(con_str);
             objConnection.ConnectionString = con_str;
             objConnection.Open();
             objCommand = new SqlCommand();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "new_projects_update_select";
             objCommand.Parameters.AddWithValue("@project_id", project_id);

           //  objCommand.Parameters.AddWithValue("@flag", flag);
             objCommand.Connection = objConnection;
             dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
             objCommand.Dispose();
             objCommand = null;
             objConnection = null;
             return dataReader;
         }
         public SqlDataReader crm_user_Detail_update(string emp_id)
         {
             objConnection = new SqlConnection(con_str);
             objConnection.ConnectionString = con_str;
             objConnection.Open();
             objCommand = new SqlCommand();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "crm_user_Detail_update";
             objCommand.Parameters.AddWithValue("@emp_id", emp_id);

           //  objCommand.Parameters.AddWithValue("@flag", flag);
             objCommand.Connection = objConnection;
             dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
             objCommand.Dispose();
             objCommand = null;
             objConnection = null;
             return dataReader;
         }


         public SqlDataReader Expense_Entry_UPDATE(string sno)
         {
             objConnection = new SqlConnection(con_str);
             objConnection.ConnectionString = con_str;
             objConnection.Open();
             objCommand = new SqlCommand();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "Expense_Entry_UPDATE";
             objCommand.Parameters.AddWithValue("@sno", sno);

            // objCommand.Parameters.AddWithValue("@flag", flag);
             objCommand.Connection = objConnection;
             dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
             objCommand.Dispose();
             objCommand = null;
             objConnection = null;
             return dataReader;
         }

         public SqlDataReader agent_sal_SELECT_UPDATE(string sno)
         {
             objConnection = new SqlConnection(con_str);
             objConnection.ConnectionString = con_str;
             objConnection.Open();
             objCommand = new SqlCommand();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "agent_sal_SELECT_UPDATE";
             objCommand.Parameters.AddWithValue("@sno", sno);

            // objCommand.Parameters.AddWithValue("@flag", flag);
             objCommand.Connection = objConnection;
             dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
             objCommand.Dispose();
             objCommand = null;
             objConnection = null;
             return dataReader;
         }
         public SqlDataReader plots_details_Duplicacycheck(string project_name, string block, string plot_no)
         {
             objConnection = new SqlConnection(con_str);
             objConnection.ConnectionString = con_str;
             objConnection.Open();
             objCommand = new SqlCommand();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "plots_details_Duplicacycheck";
             objCommand.Parameters.AddWithValue("@project_name", project_name);
             objCommand.Parameters.AddWithValue("@block", block);
             objCommand.Parameters.AddWithValue("@plot_no", plot_no);
             objCommand.Connection = objConnection;
             dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
             objCommand.Dispose();
             objCommand = null;
             objConnection = null;
             return dataReader;
         }
         public SqlDataReader transport_update_select(string s_no, int flag)
         {
             objConnection = new SqlConnection(con_str);
             objConnection.ConnectionString = con_str;
             objConnection.Open();
             objCommand = new SqlCommand();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "transport_update_select";
             objCommand.Parameters.AddWithValue("@s_no", s_no);

             objCommand.Parameters.AddWithValue("@flag", flag);
             objCommand.Connection = objConnection;
             dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
             objCommand.Dispose();
             objCommand = null;
             objConnection = null;
             return dataReader;
         }
         public DataTable transport_SELECT(maincode obj_main)
         {
             using (SqlConnection objConnection = new SqlConnection(con_str))
             {
                 SqlCommand objCommand;
                 objCommand = objConnection.CreateCommand();
                 objCommand.CommandType = CommandType.StoredProcedure;
                 objCommand.CommandText = "transport_SELECT";
                 objCommand.Parameters.AddWithValue("@from_date", from_date);
                 objCommand.Parameters.AddWithValue("@to_date", to_date);
                 // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
                 //objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
                 objConnection.Open();
                 objDataAdapter = new SqlDataAdapter();
                 objDataAdapter.SelectCommand = objCommand;
                 objDataSet = new DataSet();
                 objDataAdapter.Fill(objDataSet);
                 objCommand.Dispose();
                 objConnection.Close();
                 objConnection.Dispose();
                 return objDataSet.Tables[0];

             }
         }


         public DataTable company_assets_SELECT(maincode obj_main)
         {
             using (SqlConnection objConnection = new SqlConnection(con_str))
             {
                 SqlCommand objCommand;
                 objCommand = objConnection.CreateCommand();
                 objCommand.CommandType = CommandType.StoredProcedure;
                 objCommand.CommandText = "company_assets_SELECT";
                 objCommand.Parameters.AddWithValue("@from_date", from_date);
                 objCommand.Parameters.AddWithValue("@to_date", to_date);
                 // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
                 //objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
                 objConnection.Open();
                 objDataAdapter = new SqlDataAdapter();
                 objDataAdapter.SelectCommand = objCommand;
                 objDataSet = new DataSet();
                 objDataAdapter.Fill(objDataSet);
                 objCommand.Dispose();
                 objConnection.Close();
                 objConnection.Dispose();
                 return objDataSet.Tables[0];

             }
         }

         public SqlDataReader company_assets_update_select(string s_no, int flag)
         {
             objConnection = new SqlConnection(con_str);
             objConnection.ConnectionString = con_str;
             objConnection.Open();
             objCommand = new SqlCommand();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "company_assets_update_select";
             objCommand.Parameters.AddWithValue("@s_no", s_no);

             objCommand.Parameters.AddWithValue("@flag", flag);
             objCommand.Connection = objConnection;
             dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
             objCommand.Dispose();
             objCommand = null;
             objConnection = null;
             return dataReader;
         }

    
         public SqlDataReader Agent_Attendance_SELECT_UPDATE(string sno)
         {
             objConnection = new SqlConnection(con_str);
             objConnection.ConnectionString = con_str;
             objConnection.Open();
             objCommand = new SqlCommand();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "Agent_Attendance_SELECT_UPDATE";
             objCommand.Parameters.AddWithValue("@sno", sno);

            // objCommand.Parameters.AddWithValue("@flag", flag);
             objCommand.Connection = objConnection;
             dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
             objCommand.Dispose();
             objCommand = null;
             objConnection = null;
             return dataReader;
         }

         public SqlDataReader add_agent_select_update(string agent_id, int flag)
         {
             objConnection = new SqlConnection(con_str);
             objConnection.ConnectionString = con_str;
             objConnection.Open();
             objCommand = new SqlCommand();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "add_agent_select_update";
             objCommand.Parameters.AddWithValue("@agent_id", agent_id);

             objCommand.Parameters.AddWithValue("@flag", flag);
             objCommand.Connection = objConnection;
             dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
             objCommand.Dispose();
             objCommand = null;
             objConnection = null;
             return dataReader;
         }
         public SqlDataReader agent_details_select_update(string agent_id, int flag)
         {
             objConnection = new SqlConnection(con_str);
             objConnection.ConnectionString = con_str;
             objConnection.Open();
             objCommand = new SqlCommand();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "agent_details_select_update";
             objCommand.Parameters.AddWithValue("@agent_id", agent_id);

             objCommand.Parameters.AddWithValue("@flag", flag);
             objCommand.Connection = objConnection;
             dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
             objCommand.Dispose();
             objCommand = null;
             objConnection = null;
             return dataReader;
         }
    
     public string emi_entry_detail_insert(maincode obj_main)
     {
         using (SqlConnection objConnection = new SqlConnection(con_str))
         {

             SqlCommand objCommand;
             objCommand = objConnection.CreateCommand();
             objConnection.Open();
             objCommand.CommandType = CommandType.StoredProcedure;
             objCommand.CommandTimeout = 0;
             objCommand.CommandText = "emi_entry_detail_insert";
             objCommand.Parameters.AddWithValue("@sno", sno);

             objCommand.Parameters.AddWithValue("@CustomerId", CustomerId);
             objCommand.Parameters.AddWithValue("@address", address);
             objCommand.Parameters.AddWithValue("@amount", amount);
             objCommand.Parameters.AddWithValue("@block", block);
             
             objCommand.Parameters.AddWithValue("@mobile_no", mobile_no);
             objCommand.Parameters.AddWithValue("@father_name", father_name);
             objCommand.Parameters.AddWithValue("@registrant_name", registrant_name);

             objCommand.Parameters.AddWithValue("@bank_and_branch", bank_and_branch);
             objCommand.Parameters.AddWithValue("@cheque_no", cheque_no);
             objCommand.Parameters.AddWithValue("@cash", cash);
             objCommand.Parameters.AddWithValue("@mode_of_payment", mode_of_payment);
             objCommand.Parameters.AddWithValue("@emi_amount", emi_amount);
             objCommand.Parameters.AddWithValue("@no_of_emi", no_of_emi);
             objCommand.Parameters.AddWithValue("@rest_amount", rest_amount);
             objCommand.Parameters.AddWithValue("@booking_amount", booking_amount);
             objCommand.Parameters.AddWithValue("@plot_cost", plot_cost);
            // objCommand.Parameters.AddWithValue("@agent_name", agent_name);

             objCommand.Parameters.AddWithValue("@project_name", project_name);
             //objCommand.Parameters.AddWithValue("@sale_date", sale_date);
             objCommand.Parameters.AddWithValue("@plot_no", plot_no);
             objCommand.Parameters.AddWithValue("@specification", specification);
             objCommand.Parameters.AddWithValue("@plot_size", plot_size);
             objCommand.Parameters.AddWithValue("@total_plot_area", total_plot_area);
             objCommand.Parameters.AddWithValue("@created_by", created_by);
             objCommand.Parameters.AddWithValue("@flag", flag);
             objCommand.Parameters.AddWithValue("@rate_per_sq", rate_per_sq);
             objCommand.Parameters.AddWithValue("@emi_date", emi_date);

             dataReader = objCommand.ExecuteReader();
             string j = "0";
             if (dataReader.Read())
             {
                 j = dataReader[0].ToString();
             }
             objCommand.Dispose();
             objConnection.Close();
             objConnection.Dispose();
             dataReader.Close();
             return j;

         }
     }

     public string new_sale_cancel_insert(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
           
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "new_sale_cancel_insert";
           // objCommand.Parameters.AddWithValue("@sno", sno); 
              // objCommand.Parameters.AddWithValue("@plc", plc);
               objCommand.Parameters.AddWithValue("@address", address);
               objCommand.Parameters.AddWithValue("@mobile_no", mobile_no);
               objCommand.Parameters.AddWithValue("@father_name", father_name);
               objCommand.Parameters.AddWithValue("@registrant_name", registrant_name);
              // objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
               objCommand.Parameters.AddWithValue("@emi_amount", emi_amount);   
             objCommand.Parameters.AddWithValue("@no_of_emi", no_of_emi);
               objCommand.Parameters.AddWithValue("@rest_amount", rest_amount);
               objCommand.Parameters.AddWithValue("@booking_amount", booking_amount);
               objCommand.Parameters.AddWithValue("@plot_cost", plot_cost);
             //  objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            objCommand.Parameters.AddWithValue("@project_name", project_name);
            objCommand.Parameters.AddWithValue("@sale_date",sale_date);
            objCommand.Parameters.AddWithValue("@plot_no",plot_no);
            objCommand.Parameters.AddWithValue("@specification", specification);
            objCommand.Parameters.AddWithValue("@plot_size", plot_size);
            objCommand.Parameters.AddWithValue("@total_plot_area", total_plot_area);
            objCommand.Parameters.AddWithValue("@created_by", created_by);
            objCommand.Parameters.AddWithValue("@rate_per_sq", rate_per_sq);
            objCommand.Parameters.AddWithValue("@block", block);
            objCommand.Parameters.AddWithValue("@cancel_reason", cancel_reason);
            
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }
    public string new_sale_insert(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
           
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "new_sale_insert";
            objCommand.Parameters.AddWithValue("@sno", sno); 
               objCommand.Parameters.AddWithValue("@plc", plc);
               objCommand.Parameters.AddWithValue("@address", address);
               objCommand.Parameters.AddWithValue("@mobile_no", mobile_no);
               objCommand.Parameters.AddWithValue("@father_name", father_name);
               objCommand.Parameters.AddWithValue("@registrant_name", registrant_name);
              // objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
               objCommand.Parameters.AddWithValue("@bank_and_branch", bank_and_branch);
               objCommand.Parameters.AddWithValue("@cheque_no", cheque_no);
               objCommand.Parameters.AddWithValue("@cash", cash);
              objCommand.Parameters.AddWithValue("@mode_of_payment", mode_of_payment);
               objCommand.Parameters.AddWithValue("@emi_amount", emi_amount);   
             objCommand.Parameters.AddWithValue("@no_of_emi", no_of_emi);
               objCommand.Parameters.AddWithValue("@rest_amount", rest_amount);
               objCommand.Parameters.AddWithValue("@booking_amount", booking_amount);
               objCommand.Parameters.AddWithValue("@plot_cost", plot_cost);
               objCommand.Parameters.AddWithValue("@agent_name", agent_name);
             objCommand.Parameters.AddWithValue("@discount_amount", discount_amount);
             objCommand.Parameters.AddWithValue("@employee", employee);
 
            objCommand.Parameters.AddWithValue("@project_name", project_name);
            objCommand.Parameters.AddWithValue("@sale_date",sale_date);
            objCommand.Parameters.AddWithValue("@plot_no",plot_no);
            objCommand.Parameters.AddWithValue("@specification", specification);
            objCommand.Parameters.AddWithValue("@plot_size", plot_size);
            objCommand.Parameters.AddWithValue("@total_plot_area", total_plot_area);
            objCommand.Parameters.AddWithValue("@created_by", created_by);
            objCommand.Parameters.AddWithValue("@flag", flag);
            objCommand.Parameters.AddWithValue("@rate_per_sq", rate_per_sq);

            objCommand.Parameters.AddWithValue("@project_location", project_location);
            objCommand.Parameters.AddWithValue("@no_of_plot", no_of_plot);
           // objCommand.Parameters.AddWithValue("@Company", Company);

            objCommand.Parameters.AddWithValue("@block", block);

            objCommand.Parameters.AddWithValue("@mode_pay", mode_pay);
            objCommand.Parameters.AddWithValue("@bank_branch", bank_branch);
            objCommand.Parameters.AddWithValue("@chequeno", chequeno);

            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }
    public string agents_payment_insert(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "agents_payment_insert";
            objCommand.Parameters.AddWithValue("@sno", sno);
            objCommand.Parameters.AddWithValue("@m_salary", m_salary);
            objCommand.Parameters.AddWithValue("@Bank_Branch", Bank_Branch);
            objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            objCommand.Parameters.AddWithValue("@created_by", created_by);
            objCommand.Parameters.AddWithValue("@t_salary", t_salary);
            objCommand.Parameters.AddWithValue("@commission", commission);
            objCommand.Parameters.AddWithValue("@mode_of_pay", mode_of_pay);
            objCommand.Parameters.AddWithValue("@cash", cash);
            objCommand.Parameters.AddWithValue("@cheque_no", cheque_no);
            objCommand.Parameters.AddWithValue("@flag", flag);


            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }
    public string agent_payment_insert(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "agent_payment_insert";
            objCommand.Parameters.AddWithValue("@sno", sno);
            objCommand.Parameters.AddWithValue("@m_salary", m_salary);
            objCommand.Parameters.AddWithValue("@Bank_Branch", Bank_Branch);
            objCommand.Parameters.AddWithValue("@Agent_name", agent_name);
            objCommand.Parameters.AddWithValue("@created_by", created_by);
            objCommand.Parameters.AddWithValue("@t_salary", t_salary);
            objCommand.Parameters.AddWithValue("@commission", commission);
            objCommand.Parameters.AddWithValue("@mode_of_pay", mode_of_pay);
            objCommand.Parameters.AddWithValue("@cash", cash);
            objCommand.Parameters.AddWithValue("@cheque_no", cheque_no);
            objCommand.Parameters.AddWithValue("@flag", flag);


            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }
    public string agent_sal_insert(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "agent_sal_insert";
            objCommand.Parameters.AddWithValue("@sno", sno);

            objCommand.Parameters.AddWithValue("@branch_name", Branch_Name);
            objCommand.Parameters.AddWithValue("@Agent_name", agent_name);
            objCommand.Parameters.AddWithValue("@created_by", created_by);
            objCommand.Parameters.AddWithValue("@t_salary", t_salary);
            objCommand.Parameters.AddWithValue("@commission", commission);
            objCommand.Parameters.AddWithValue("@Bank_Branch", Bank_Branch);
            objCommand.Parameters.AddWithValue("@mode_of_pay", mode_of_pay);
            objCommand.Parameters.AddWithValue("@cash", cash);
            objCommand.Parameters.AddWithValue("@cheque_no", cheque_no);
            objCommand.Parameters.AddWithValue("@flag", flag);


            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }

    public string add_agent_deactive(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "add_agent_deactive";
            objCommand.Parameters.AddWithValue("@agent_id", agent_id);
            objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }
    public string Agent_deactive(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "Agent_deactive";
            objCommand.Parameters.AddWithValue("@agent_id", agent_id);
            objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }

    public string Plot_delete(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "Plot_delete";
            objCommand.Parameters.AddWithValue("@project_name", project_name);
            objCommand.Parameters.AddWithValue("@plot_no",plot_no);
            objCommand.Parameters.AddWithValue("@block", block);
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }

    public string Project_deactive_all(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "Project_deactive_all";
           // objCommand.Parameters.AddWithValue("@project_id", project_id);
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }

    public string Project_deactive(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "Project_deactive";
            objCommand.Parameters.AddWithValue("@project_id", project_id);
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }

    public string Branch_deactive(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "Branch_deactive";
            objCommand.Parameters.AddWithValue("@emp_id", emp_id);
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }
    public DataTable crm_user_Detail_Report(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "crm_user_Detail_Report";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
           // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public DataTable sale_view_select_report(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "sale_view_select_report";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            objCommand.Parameters.AddWithValue("@project_name", project_name);
            // objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public DataTable visitor_details_report(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "visitor_details_report";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public DataTable dfr_detail_report(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "dfr_detail_report";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public SqlDataReader token_details_print(string s_no)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "token_details_print";
        objCommand.Parameters.AddWithValue("@s_no", s_no);

        //  objCommand.Parameters.AddWithValue("@flag", flag);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }

    public SqlDataReader token_details_update_select(string s_no)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "token_details_update_select";
        objCommand.Parameters.AddWithValue("@s_no", s_no);

        //  objCommand.Parameters.AddWithValue("@flag", flag);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }


    public string token_details_insert(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {


            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "token_details_insert";

            objCommand.Parameters.AddWithValue("@status", status);
            objCommand.Parameters.AddWithValue("@s_no", s_no);
            objCommand.Parameters.AddWithValue("@project_name", project_name);
            objCommand.Parameters.AddWithValue("@block", block);
            // objCommand.Parameters.AddWithValue("@no_of_plots", no_of_plots);
            objCommand.Parameters.AddWithValue("@mobile_no", mobile_no);
            objCommand.Parameters.AddWithValue("@plot_no", plot_no);
            objCommand.Parameters.AddWithValue("@cheque_no", cheque_no);
            objCommand.Parameters.AddWithValue("@mode_of_payment", mode_of_payment);
            objCommand.Parameters.AddWithValue("@flag", flag);
            objCommand.Parameters.AddWithValue("@created_by", created_by);
            objCommand.Parameters.AddWithValue("@address", address);
            objCommand.Parameters.AddWithValue("@bank_branch", bank_branch);
            objCommand.Parameters.AddWithValue("@father_name", father_name);
            objCommand.Parameters.AddWithValue("@Amount", amount);
            objCommand.Parameters.AddWithValue("@registrant_name", registrant_name);
            objCommand.Parameters.AddWithValue("@agr_date", agr_date);
            //  objCommand.Parameters.AddWithValue("@time_period", time_period);
            objCommand.Parameters.AddWithValue("@rate_per_sq", rate_per_sq);
            objCommand.Parameters.AddWithValue("@plot_size", plot_size);
            objCommand.Parameters.AddWithValue("@co", co);
            objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            objCommand.Parameters.AddWithValue("@employee", employee);
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }

    public DataTable dcr_detail_report(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "dcr_detail_report";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public DataTable plots_details_Report(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "plots_details_Report";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);

            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public string Cancel_Booking_Sale_update(maincode obj_main)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "Cancel_Booking_Sale_update";
        objCommand.Parameters.AddWithValue("@project_name", project_name);
        objCommand.Parameters.AddWithValue("@plot_no", plot_no);
        objCommand.Parameters.AddWithValue("@block", block);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        string j = "0";
        //if(i>0)
        //{
        //    j = "inserted";
        //}
        if (dataReader.Read())
        {
            j = dataReader[0].ToString();
        }
        objCommand.Dispose();
        objConnection.Close();
        objConnection.Dispose();
        dataReader.Close();
        return j;
    }
    public SqlDataReader Cancel_Booking_Sale(string project_name, string block, string plot_no)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "Cancel_Booking_Sale";
        objCommand.Parameters.AddWithValue("@project_name", project_name);
        objCommand.Parameters.AddWithValue("@block", block);
        objCommand.Parameters.AddWithValue("@plot_no", plot_no);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }
    public string visitor_detail_insert(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {


            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "visitor_detail_insert";
            // objCommand.Parameters.AddWithValue("@sno", sno);

            objCommand.Parameters.AddWithValue("@branch_name", Branch_Name);
            objCommand.Parameters.AddWithValue("@Agent_name", agent_name);
            objCommand.Parameters.AddWithValue("@created_by", created_by);
            objCommand.Parameters.AddWithValue("@Customer_name", Customer_name);
            objCommand.Parameters.AddWithValue("@mobile_no", mobile_no);
            objCommand.Parameters.AddWithValue("@address", address);
            objCommand.Parameters.AddWithValue("@due_date", due_date);
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }
    public string dfr_detail_insert(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {


            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "dfr_detail_insert";
            // objCommand.Parameters.AddWithValue("@sno", sno);

            objCommand.Parameters.AddWithValue("@branch_name", Branch_Name);
            objCommand.Parameters.AddWithValue("@Agent_name", agent_name);
            objCommand.Parameters.AddWithValue("@created_by", created_by);
            objCommand.Parameters.AddWithValue("@Customer_name", Customer_name);
            objCommand.Parameters.AddWithValue("@mobile_no", mobile_no);
            objCommand.Parameters.AddWithValue("@amount", amount);
            objCommand.Parameters.AddWithValue("@Feedback", Feedback);
            objCommand.Parameters.AddWithValue("@nxt_remind_date", nxt_remind_date);
            objCommand.Parameters.AddWithValue("@due_date", due_date);
            // objCommand.Parameters.AddWithValue("@flag", flag);


            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }
    public SqlDataReader PLOT_STATUS_Report(string project_name, string flag)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "PLOT_STATUS_Report";
        objCommand.Parameters.AddWithValue("@project_name", project_name);
        objCommand.Parameters.AddWithValue("@flag", flag);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }
    public DataTable AGENT_wise_sale_report(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "AGENT_wise_sale_report";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public SqlDataReader plot_transfer_check(string project_name, string block, string plot_no)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "plot_transfer_check";
        objCommand.Parameters.AddWithValue("@project_name", project_name);
        objCommand.Parameters.AddWithValue("@block", block);
        objCommand.Parameters.AddWithValue("@plot_no", plot_no);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }


      
    public DataTable Employee_wise_sale_report(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "Employee_wise_sale_report";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public DataTable Branch_wise_sale_report(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "Branch_wise_sale_report";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }

    public DataTable block_wise_report(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "block_wise_report";
            //objCommand.Parameters.AddWithValue("@from_date", from_date);
            //objCommand.Parameters.AddWithValue("@to_date", to_date);
            objCommand.Parameters.AddWithValue("@project_name", project_name);
            objCommand.Parameters.AddWithValue("@block", block);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }

    public DataTable project_wise_report(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "project_wise_report";
            //objCommand.Parameters.AddWithValue("@from_date", from_date);
            //objCommand.Parameters.AddWithValue("@to_date", to_date);
            objCommand.Parameters.AddWithValue("@project_name", project_name);
           // objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }

    public DataTable project_wise_sale_report(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "project_wise_sale_report";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            objCommand.Parameters.AddWithValue("@project_name", project_name);
           // objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public DataTable plots_details_select_Report(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "plots_details_select_Report";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            objCommand.Parameters.AddWithValue("@project_name", project_name);
           // objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public DataTable agents_payment_SELECT(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "agents_payment_SELECT";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            //objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }

    public DataTable agent_payment_SELECT(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "agent_payment_SELECT";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
           // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            //objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }

    public DataTable agent_sal_SELECT(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "agent_sal_SELECT";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
           // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            //objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }

    public DataTable Expense_Entry_SELECT_delete(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "Expense_Entry_SELECT_delete";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
           // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public DataTable Expense_Entry_SELECT_view(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "Expense_Entry_SELECT_view";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
           // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            //objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }

    //public string Emi_delete(maincode obj_main)
    //{
    //    using (SqlConnection objConnection = new SqlConnection(con_str))
    //    {
    //        SqlCommand objCommand;
    //        objCommand = objConnection.CreateCommand();
    //        objConnection.Open();
    //        objCommand.CommandType = CommandType.StoredProcedure;
    //        objCommand.CommandTimeout = 0;
    //        objCommand.CommandText = "Emi_delete";
    //        objCommand.Parameters.AddWithValue("@sno", sno);
    //        dataReader = objCommand.ExecuteReader();
    //        string j = "0";
    //        if (dataReader.Read())
    //        {
    //            j = dataReader[0].ToString();
    //        }
    //        objCommand.Dispose();
    //        objConnection.Close();
    //        objConnection.Dispose();
    //        dataReader.Close();
    //        return j;

    //    }
    //}
    public string Expense_Entry_Delete(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "Expense_Entry_Delete";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }

    public DataTable Expense_Entry_SELECT(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "Expense_Entry_SELECT";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
           // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            //objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public DataTable Agent_Attendance_SELECT(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "Agent_Attendance_SELECT";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
           // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            //objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }

    public string agentdetail_insert(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "agentdetail_insert";
            
            objCommand.Parameters.AddWithValue("@agent_id", agent_id);
            objCommand.Parameters.AddWithValue("@agent_sal", agent_sal);
            objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            objCommand.Parameters.AddWithValue("@mobile_no", mobile_no);
            objCommand.Parameters.AddWithValue("@doj", doj);
            objCommand.Parameters.AddWithValue("@address", address);
            objCommand.Parameters.AddWithValue("@commision", commision);
            objCommand.Parameters.AddWithValue("@created_by", created_by);
            objCommand.Parameters.AddWithValue("@flag", flag);
            objCommand.Parameters.AddWithValue("@agent_status", agent_status);
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }

    public string add_agent_insert(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "add_agent_insert";

            objCommand.Parameters.AddWithValue("@agent_id", agent_id);
            objCommand.Parameters.AddWithValue("@agent_sal", agent_sal);
            objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            objCommand.Parameters.AddWithValue("@mobile_no", mobile_no);
            objCommand.Parameters.AddWithValue("@doj", doj);
            objCommand.Parameters.AddWithValue("@address", address);
            objCommand.Parameters.AddWithValue("@commision", commision);
            objCommand.Parameters.AddWithValue("@created_by", created_by);
            objCommand.Parameters.AddWithValue("@flag", flag);
            objCommand.Parameters.AddWithValue("@agent_status", agent_status);
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }


    public string new_projects_insert(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "new_projects_insert";
            objCommand.Parameters.AddWithValue("@project_id", project_id);
            objCommand.Parameters.AddWithValue("@project_name", project_name);
            objCommand.Parameters.AddWithValue("@project_location", project_location);
            objCommand.Parameters.AddWithValue("@no_of_plot ", no_of_plot);
            objCommand.Parameters.AddWithValue("@Company", Company);
            objCommand.Parameters.AddWithValue("@created_by", created_by);
            objCommand.Parameters.AddWithValue("@flag", flag);
            objCommand.Parameters.AddWithValue("@project_status", project_status);
            objCommand.Parameters.AddWithValue("@block", block);

            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }





    public string plots_details_insert(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "plots_details_insert";
            
            objCommand.Parameters.AddWithValue("@s_no", s_no);
            objCommand.Parameters.AddWithValue("@project_name", project_name);
            objCommand.Parameters.AddWithValue("@block", block);
            objCommand.Parameters.AddWithValue("@plot_no", plot_no);
            objCommand.Parameters.AddWithValue("@Total_plot_area", Total_plot_area);
            objCommand.Parameters.AddWithValue("@plc", plc);
            objCommand.Parameters.AddWithValue("@rate_per_sqr", rate_per_sqr);
            objCommand.Parameters.AddWithValue("@plot_cost", plot_cost);
            objCommand.Parameters.AddWithValue("@plottype", plottype);
            objCommand.Parameters.AddWithValue("@specification", specification);
            objCommand.Parameters.AddWithValue("@plotlocation", plotlocation);
            objCommand.Parameters.AddWithValue("@created_by", created_by);
            objCommand.Parameters.AddWithValue("@flag", flag);
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }

    public SqlDataReader new_projects_delete_select(string project_id)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "new_projects_delete_select";
        objCommand.Parameters.AddWithValue("@project_id", project_id);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }

    public DataTable new_projects_select(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "new_projects_select";
             objCommand.Parameters.AddWithValue("@project_name", project_name);

            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public SqlDataReader sale_filter_select(string project_name, string block, string plot_no)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "sale_filter_select";
        objCommand.Parameters.AddWithValue("@project_name", project_name);
        objCommand.Parameters.AddWithValue("@plot_no", plot_no);
        objCommand.Parameters.AddWithValue("@block", block);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }

    public SqlDataReader agents_payment_view(string agent_name)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "agents_payment_view";
        objCommand.Parameters.AddWithValue("@agent_name", agent_name);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }

    public SqlDataReader agent_payment_view( string agent_name)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "agent_payment_view";
        objCommand.Parameters.AddWithValue("@agent_name", agent_name);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }
    //public SqlDataReader new_projects_select()
    //{
    //    objConnection = new SqlConnection(con_str);
    //    objConnection.ConnectionString = con_str;
    //    objConnection.Open();
    //    objCommand = new SqlCommand();
    //    objCommand.CommandType = CommandType.StoredProcedure;
    //    objCommand.CommandTimeout = 0;
    //    objCommand.CommandText = "new_projects_select";
    //   // objCommand.Parameters.AddWithValue("@Flag", flag);
    //    objCommand.Connection = objConnection;
    //    dataReader =objCommand.ExecuteReader(CommandBehavior.CloseConnection);
    //    objCommand.Dispose();
    //    //objConnection.Close();
    //    objCommand = null;
    //    objConnection = null;
    //    return dataReader;

    //}

    //public SqlDataReader agent_details_select(string Branch_Name)
    //{
    //    objConnection = new SqlConnection(con_str);
    //    objConnection.ConnectionString = con_str;
    //    objConnection.Open();
    //    objCommand = new SqlCommand();
    //    objCommand.CommandType = CommandType.StoredProcedure;
    //    objCommand.CommandTimeout = 0;
    //    objCommand.CommandText = "agent_details_select";
    //    objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
    //    objCommand.Connection = objConnection;
    //    dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
    //    objCommand.Dispose();
    //    //objConnection.Close();
    //    objCommand = null;
    //    objConnection = null;
    //    return dataReader;

    //}
    //public DataTable agent_details_select(maincode obj_main)
    //{
    //    using (SqlConnection objConnection = new SqlConnection(con_str))
    //    {
    //        SqlCommand objCommand;
    //        objCommand = objConnection.CreateCommand();
    //        objCommand.CommandType = CommandType.StoredProcedure;
    //        objCommand.CommandText = "agent_details_select";
    //        objCommand.Parameters.AddWithValue("@from_date", from_date);
    //        objCommand.Parameters.AddWithValue("@to_date", to_date);
    //        objCommand.Parameters.AddWithValue("@agent_name", agent_name);
    //        objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
    //        objConnection.Open();
    //        objDataAdapter = new SqlDataAdapter();
    //        objDataAdapter.SelectCommand = objCommand;
    //        objDataSet = new DataSet();
    //        objDataAdapter.Fill(objDataSet);
    //        objCommand.Dispose();
    //        objConnection.Close();
    //        objConnection.Dispose();
    //        return objDataSet.Tables[0];

    //    }
    //}


    public SqlDataReader branch_dd_select(string Branch_Name)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "branch_dd_select";
        objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }
    public SqlDataReader Agent_select(int flag)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "Agent_select";
        objCommand.Parameters.AddWithValue("@flag", flag);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }
    public DataTable PlotReg_Select(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "PlotReg_Select";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            //objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }

    public DataTable ALL_PlotReg_Select(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "ALL_PlotReg_Select";
            // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            //objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public SqlDataReader salesCust_filter(string CustomerId)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "salesCust_filter";
        objCommand.Parameters.AddWithValue("@CustomerId", CustomerId);

        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }

    public DataTable plot_transfer_select(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "plot_transfer_select";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            //objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public DataTable ALL_plot_transfer_select(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "ALL_plot_transfer_select";
            // objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            //objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public SqlDataReader PlotReg_select_update(string sno)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "PlotReg_select_update";
        objCommand.Parameters.AddWithValue("@sno", sno);

        //  objCommand.Parameters.AddWithValue("@flag", flag);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }
    public SqlDataReader Branch_select(int flag)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "Branch_select";
        objCommand.Parameters.AddWithValue("@flag", flag);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }

    public DataTable sale_view_for_update(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "sale_view_for_update";
            objCommand.Parameters.AddWithValue("@project_name", project_name);
            //objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public DataTable sale_view_select(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "sale_view_select";
            objCommand.Parameters.AddWithValue("@project_name", project_name);
            objCommand.Parameters.AddWithValue("@search_value", search_value);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public DataTable Emi_delete_select(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "Emi_delete_select";
           objCommand.Parameters.AddWithValue("@project_name", project_name);
           objCommand.Parameters.AddWithValue("@plot_no", plot_no);
           objCommand.Parameters.AddWithValue("@block", block);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }

    public DataTable Emi_view_select_reminder(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "Emi_view_select_reminder";
            objCommand.Parameters.AddWithValue("@from_date",from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public DataTable Emi_view_select(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "Emi_view_select";
           objCommand.Parameters.AddWithValue("@project_name", project_name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }

    public SqlDataReader add_agent_dd_select(int flag)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "add_agent_dd_select";
         objCommand.Parameters.AddWithValue("@Flag", flag);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }

    public SqlDataReader agentdetails_dd_select(int flag)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "agentdetails_dd_select";
         objCommand.Parameters.AddWithValue("@Flag", flag);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }

    public SqlDataReader agentsdetails_dd_select(int flag)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "agentsdetails_dd_select";
        objCommand.Parameters.AddWithValue("@Flag", flag);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }

    public SqlDataReader EMPLOYEE_name_dd(string Branch_name)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "EMPLOYEE_name_dd";
        objCommand.Parameters.AddWithValue("@Branch_name", Branch_name);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }
    public SqlDataReader block_name_dd(string project_name)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "block_name_dd";
        objCommand.Parameters.AddWithValue("@project_name", project_name);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }
      public SqlDataReader project_name_dd()
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "project_name_dd";
        // objCommand.Parameters.AddWithValue("@Flag", flag);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }
      public DataTable Emi_view_select_forupdate(maincode obj_main)
      {
          using (SqlConnection objConnection = new SqlConnection(con_str))
          {
              SqlCommand objCommand;
              objCommand = objConnection.CreateCommand();
              objCommand.CommandType = CommandType.StoredProcedure;
              objCommand.CommandText = "Emi_view_select_forupdate";
              objCommand.Parameters.AddWithValue("@project_name", project_name);
              objCommand.Parameters.AddWithValue("@block", block);
              objCommand.Parameters.AddWithValue("@plot_no", plot_no);

              objConnection.Open();
              objDataAdapter = new SqlDataAdapter();
              objDataAdapter.SelectCommand = objCommand;
              objDataSet = new DataSet();
              objDataAdapter.Fill(objDataSet);
              objCommand.Dispose();
              objConnection.Close();
              objConnection.Dispose();
              return objDataSet.Tables[0];

          }
      }
    public DataTable plots_details_select(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "plots_details_select";
            objCommand.Parameters.AddWithValue("@project_name", project_name);
            objCommand.Parameters.AddWithValue("@block", block);
            objCommand.Parameters.AddWithValue("@plot_no", plot_no);

            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }


    public DataTable add_agent_select(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "add_agent_select";
          //  objCommand.Parameters.AddWithValue("@from_date", from_date);
          //  objCommand.Parameters.AddWithValue("@to_date", to_date);
            objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            //objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public string PlotReg_insert(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "PlotReg_insert";
            objCommand.Parameters.AddWithValue("@CustomerId ", CustomerId);
            //   objCommand.Parameters.AddWithValue("@no_of_emi ", no_of_emi);
            objCommand.Parameters.AddWithValue("@sno ", sno);
            objCommand.Parameters.AddWithValue("@project_name", project_name);
            objCommand.Parameters.AddWithValue("@block", block);
            objCommand.Parameters.AddWithValue("@plot_no", plot_no);
            objCommand.Parameters.AddWithValue("@sale_date", sale_date);
            objCommand.Parameters.AddWithValue("@registration_date", registration_date);
            objCommand.Parameters.AddWithValue("@specification", specification);
            //  objCommand.Parameters.AddWithValue("@count_days", count_days); 
            //  objCommand.Parameters.AddWithValue("@interest", interest);
            //    objCommand.Parameters.AddWithValue("@rest_amount", rest_amount);

            objCommand.Parameters.AddWithValue("@total_plot_area", total_plot_area);
            //     objCommand.Parameters.AddWithValue("@plc", plc);
            objCommand.Parameters.AddWithValue("@rate_per_sq", rate_per_sq);

            objCommand.Parameters.AddWithValue("@s_o ", co);
            objCommand.Parameters.AddWithValue("@father_name", father_name);
            objCommand.Parameters.AddWithValue("@mobile", mobile_no);
            objCommand.Parameters.AddWithValue("@address", address);
            objCommand.Parameters.AddWithValue("@pancard ", pancard);
            objCommand.Parameters.AddWithValue("@idproof", idproof);
            objCommand.Parameters.AddWithValue("@idno", idno);
            objCommand.Parameters.AddWithValue("@flag", flag);
            objCommand.Parameters.AddWithValue("@email", Email);
            objCommand.Parameters.AddWithValue("@documentno ", Documentno);
            objCommand.Parameters.AddWithValue("@registration_fee", Registration_Fee);
            objCommand.Parameters.AddWithValue("@plot_cost", plot_cost);
            objCommand.Parameters.AddWithValue("@total_booking_amt", booking_amount);

            objCommand.Parameters.AddWithValue("@registrant_name", registrant_name);

            objCommand.Parameters.AddWithValue("@rest_amount", rest_amount);
            objCommand.Parameters.AddWithValue("@remarks", Remarks);

            objCommand.Parameters.AddWithValue("@created_by", created_by);
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }
    public SqlDataReader PlotReg_Duplicacycheck(string CustomerId)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "PlotReg_Duplicacycheck";
        objCommand.Parameters.AddWithValue("@CustomerId", CustomerId);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }
    public string plot_transfer_insert(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {



            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "plot_transfer_insert";


            objCommand.Parameters.AddWithValue("@total_paid", total_paid);
            objCommand.Parameters.AddWithValue("@s_no", s_no);
            objCommand.Parameters.AddWithValue("@plot_cost", plot_cost);
            objCommand.Parameters.AddWithValue("@plot_size", plot_size);
            objCommand.Parameters.AddWithValue("@rate_per_sq", rate_per_sq);
            objCommand.Parameters.AddWithValue("@sale_date", sale_date);
            objCommand.Parameters.AddWithValue("@registrant_name", registrant_name);
            objCommand.Parameters.AddWithValue("@father_name", father_name);
            objCommand.Parameters.AddWithValue("@mobile_no", mobile_no);
            objCommand.Parameters.AddWithValue("@address", address);
            objCommand.Parameters.AddWithValue("@p_project", p_project);
            objCommand.Parameters.AddWithValue("@p_block", p_block);
            objCommand.Parameters.AddWithValue("@p_plot", p_plot);
            objCommand.Parameters.AddWithValue("@flag", flag);
            objCommand.Parameters.AddWithValue("@n_project", n_project);
            objCommand.Parameters.AddWithValue("@n_plot", n_plot);
            objCommand.Parameters.AddWithValue("@n_block", n_block);
            objCommand.Parameters.AddWithValue("@customer_id", customer_id);
            objCommand.Parameters.AddWithValue("@created_by", created_by);



            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }
    public SqlDataReader plot_transfer_select_update(string s_no)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "plot_transfer_select_update";
        objCommand.Parameters.AddWithValue("@s_no", s_no);

        //  objCommand.Parameters.AddWithValue("@flag", flag);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }
    public SqlDataReader sales_filter(string CustomerId)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "sales_filter";
        objCommand.Parameters.AddWithValue("@CustomerId", CustomerId);

        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }
    public DataTable token_details_SELECT(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "token_details_SELECT";
            objCommand.Parameters.AddWithValue("@search_value", search_value);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }

    public SqlDataReader emi_sale_check(string project_name, string block, string plot_no)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "emi_sale_check";
        objCommand.Parameters.AddWithValue("@project_name", project_name);
        objCommand.Parameters.AddWithValue("@block", block);
        objCommand.Parameters.AddWithValue("@plot_no", plot_no);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }


    public DataTable agent_details_select(maincode obj_main)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "agent_details_select";
          //  objCommand.Parameters.AddWithValue("@from_date", from_date);
          //  objCommand.Parameters.AddWithValue("@to_date", to_date);
            //objCommand.Parameters.AddWithValue("@agent_name", agent_name);
            //objCommand.Parameters.AddWithValue("@Branch_Name", Branch_Name);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }



    //public SqlDataReader agent_details_select()
    //{
    //    objConnection = new SqlConnection(con_str);
    //    objConnection.ConnectionString = con_str;
    //    objConnection.Open();
    //    objCommand = new SqlCommand();
    //    objCommand.CommandType = CommandType.StoredProcedure;
    //    objCommand.CommandTimeout = 0;
    //    objCommand.CommandText = "agent_details_select";
    //    // objCommand.Parameters.AddWithValue("@Flag", flag);
    //    objCommand.Connection = objConnection;
    //    dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
    //    objCommand.Dispose();
    //    //objConnection.Close();
    //    objCommand = null;
    //    objConnection = null;
    //    return dataReader;

    //}
    public SqlDataReader plots_sale_Duplicacycheck(string project_name, string block, string plot_no)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "plots_sale_Duplicacycheck";
        objCommand.Parameters.AddWithValue("@project_name", project_name);
        objCommand.Parameters.AddWithValue("@block", block);
        objCommand.Parameters.AddWithValue("@plot_no", plot_no);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }

    public SqlDataReader Emi_filter_select_cid(string CustomerId)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "Emi_filter_select_cid";
        objCommand.Parameters.AddWithValue("@CustomerId", CustomerId);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }
    public SqlDataReader Emi_filter_select(string project_name,string block, string plot_no)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "Emi_filter_select";
        
        objCommand.Parameters.AddWithValue("@project_name", project_name);
        objCommand.Parameters.AddWithValue("@block", block);
        objCommand.Parameters.AddWithValue("@plot_no", plot_no);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }
    public SqlDataReader search_report_select(string search_value, string Flag)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "search_report_select";
        objCommand.Parameters.AddWithValue("@search_value", search_value);
        objCommand.Parameters.AddWithValue("@Flag", Flag);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;

        return dataReader;
    }
    public SqlDataReader Sales_Delete(string sno)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "Sales_Delete";
        objCommand.Parameters.AddWithValue("@sno", sno);

        //  objCommand.Parameters.AddWithValue("@flag", flag);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }
    //public SqlDataReader sale_filter_select( string project_name, string plot_no)
    //{
    //    objConnection = new SqlConnection(con_str);
    //    objConnection.ConnectionString = con_str;
    //    objConnection.Open();
    //    objCommand = new SqlCommand();
    //    objCommand.CommandType = CommandType.StoredProcedure;
    //    objCommand.CommandTimeout = 0;
    //    objCommand.CommandText = "sale_filter_select";
    //    objCommand.Parameters.AddWithValue("@project_name", project_name);
    //    objCommand.Parameters.AddWithValue("@plot_no", plot_no);
    //    objCommand.Connection = objConnection;
    //    dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
    //    objCommand.Dispose();
    //    //objConnection.Close();
    //    objCommand = null;
    //    objConnection = null;
    //    return dataReader;

    //}

}