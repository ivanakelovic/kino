using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Kino
{
    public partial class Film_Lista : UserControl
    {
        //Izmjenjeni konstruktor kome se proslijeđuju svi podaci o filmu iz baze
        public Film_Lista(string naziv, string reditelj, string zanr, string drzava, string trajanje, string slika)
        {
            InitializeComponent();

            //Na odgovarajuće kontrole postavlja se sadržaj koji odgovara njima iz baze podataka
            lblReditelj.Content = "Reditelj: " + reditelj;
            lblNaziv.Content = naziv;
            lblZanr.Content = "Žanr: " + zanr;
            lblDrzava.Content = "Država: " + drzava;
            lblTrajanje.Content = "Trajanje: " + trajanje;
            //Slike su učitane u Resources i postavljene na Copy always, tako da se mogu učitati preko relativne putanje
            imgSlika.Source = new ImageSourceConverter().ConvertFromString(@"Resources\" + slika) as ImageSource;
        }
    }
}
